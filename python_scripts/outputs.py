#!/usr/bin/env python3
"""
parse_puf_log.py
 
Parse a CHOICE‑PUF run log, expand responses into bits, compute basic metrics,
and produce CSV + plots for publication.
"""
 
import re
import os
import argparse
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
 
def parse_log(logfile):
    """
    Scan the logfile for lines:
      Command: <cmd>
      Response (hex): <hexstr>
    and return a DataFrame with columns [command, hex].
    """
    cmd_re  = re.compile(r"^Command:\s*(.+)")
    resp_re = re.compile(r"^Response \(hex\):\s*([0-9A-Fa-f]+)")
    records = []
    last_cmd = None
 
    with open(logfile, "r") as f:
        for line in f:
            m = cmd_re.match(line)
            if m:
                last_cmd = m.group(1).strip()
                continue
 
            m = resp_re.match(line)
            if m and last_cmd is not None:
                hexstr = m.group(1).strip()
                records.append({
                    "command": last_cmd,
                    "hex":     hexstr
                })
                last_cmd = None
 
    return pd.DataFrame(records)
 
def expand_bits(df):
    """
    Take df with columns [command, hex] and:
    - compute a raw bit‑string for each hex
    - determine the global max bit‑length
    - pad every bit string to that max length
    - compute hamming_weight
    - expand into bit_i columns
    """
    # 1) raw bit strings (no padding)
    bits_raw = df["hex"].apply(lambda h: bin(int(h, 16))[2:])
    # 2) determine maximum length
    maxlen = bits_raw.str.len().max()
    # 3) pad all bit strings to the global max
    df["bits"] = bits_raw.str.zfill(maxlen)
    # 4) compute hamming weight
    df["hamming_weight"] = df["bits"].str.count("1")
 
    # 5) expand into individual bit columns
    bit_cols = [f"bit_{i}" for i in range(maxlen)]
    bits_expanded = df["bits"].apply(
        lambda b: pd.Series(list(b), index=bit_cols)
    ).astype(int)
 
    return pd.concat([df, bits_expanded], axis=1)
 
def compute_bit_bias(df):
    """
    Compute per‑bit bias = mean(bit) across only the getReadout responses.
    """
    gr = df[df["command"].str.startswith("getReadout")]
    bit_cols = [c for c in df.columns if c.startswith("bit_")]
    return gr[bit_cols].mean()
 
def plot_hamming_weights(df, outdir):
    """
    Histogram of Hamming weights for getReadout responses.
    """
    gr = df[df["command"].str.startswith("getReadout")]
    plt.figure(figsize=(6,4))
    gr["hamming_weight"].hist(bins=50)
    plt.xlabel("Hamming weight")
    plt.ylabel("Count")
    plt.title("Distribution of PUF Response Hamming Weights")
    plt.tight_layout()
    plt.savefig(os.path.join(outdir, "hamming_weights.png"), dpi=300)
    plt.close()
 
def plot_bit_bias(bias, outdir):
    """
    Bar chart of per‑bit bias.
    """
    plt.figure(figsize=(8,3))
    plt.bar(range(len(bias)), bias.values)
    plt.xlabel("Bit position")
    plt.ylabel("Mean(bit value)")
    plt.title("Per‑bit Bias Across getReadout Responses")
    plt.tight_layout()
    plt.savefig(os.path.join(outdir, "bit_bias.png"), dpi=300)
    plt.close()
 
def main():
    p = argparse.ArgumentParser(
        description="Parse CHOICE‑PUF runlog → CSV + metrics/plots"
    )
    p.add_argument("logfile", help="path to your runlog.txt")
    p.add_argument(
    "--csv", default="puf_data_1001_2000.csv",
    help="output CSV filename (default: puf_data_1001_2000.csv)"
    )
    p.add_argument(
    "--outdir", default="plots_1001_2000",
    help="directory to save PNG plots (default: ./plots_1001_2000)"
    )

    
    args = p.parse_args()

    os.makedirs(args.outdir, exist_ok=True)

    print(f"> Parsing log file: {args.logfile}")
    df = parse_log(args.logfile)
    df = df.iloc[1000:2000]  # ← this selects rows 1001–2000


    print(f"> Expanding into bits & computing Hamming weights…")
    df2 = expand_bits(df)

    print(f"> Writing CSV → {args.csv}")
    df2.to_csv(args.csv, index=False)

    print("> Computing bit bias & rendering plots…")
    bias = compute_bit_bias(df2)
    plot_hamming_weights(df2, args.outdir)
    plot_bit_bias(bias,     args.outdir)

    print(f"\nDone. Parsed {len(df)} command/response pairs.")
    print(f" • CSV:     {args.csv}")
    print(f" • Plots:   {os.path.abspath(args.outdir)}/*.png")

if __name__ == "__main__":
    main()