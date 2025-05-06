import pandas as pd
import numpy as np
from itertools import combinations

def load_data(csv_file):
    df = pd.read_csv(csv_file)
    bit_cols = [col for col in df.columns if col.startswith('bit_')]
    return df[bit_cols]

def align_columns(df1, df2):
    common_cols = sorted(set(df1.columns).intersection(set(df2.columns)))
    df1 = df1[common_cols]
    df2 = df2[common_cols]
    return df1.values, df2.values

def compute_uniformity(bit_data):
    uniformities = np.mean(bit_data, axis=1)
    avg_uniformity = np.mean(uniformities)
    print(f"Average Uniformity: {avg_uniformity * 100:.2f}%")
    return uniformities

def compute_intra_chip_stability(bit_data):
    distances = []
    for i, j in combinations(range(len(bit_data)), 2):
        hd = np.sum(bit_data[i] != bit_data[j]) / bit_data.shape[1]
        distances.append(hd)
    avg_hd = np.mean(distances)
    print(f"Average Intra-chip Hamming Distance (stability): {avg_hd * 100:.2f}%")
    return avg_hd

def main():
    df1 = load_data('puf_data.csv')
    df2 = load_data('puf_data_1001_2000.csv')

    # Align both DataFrames to common columns
    data1, data2 = align_columns(df1, df2)

    # Combine datasets
    bit_data = np.vstack([data1, data2])

    # Compute uniformity
    compute_uniformity(bit_data)

    # Compute intra-chip stability
    compute_intra_chip_stability(bit_data)

if __name__ == "__main__":
    main()
