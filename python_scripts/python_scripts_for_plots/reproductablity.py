import re
import matplotlib.pyplot as plt
import pandas as pd

def hex_to_bitstring(hexstr):
    scale = int(hexstr, 16)
    num_of_bits = len(hexstr) * 4
    return bin(scale)[2:].zfill(num_of_bits)

def parse_log_file(filepath):
    responses = []
    hex_pattern = re.compile(r'Response \(hex\):\s*([0-9a-fA-F]+)')
    with open(filepath, 'r') as file:
        for line in file:
            line = line.strip()
            match = hex_pattern.search(line)
            if match:
                hexstr = match.group(1)
                responses.append(hex_to_bitstring(hexstr))
    return responses

def calculate_uniformity(bitstrings):
    return [bits.count('1') / len(bits) * 100 for bits in bitstrings]

def plot_uniformity(log_data):
    plt.figure(figsize=(12, 6))
    colors = ['blue', 'orange', 'green', 'purple']

    for i, (label, uniformities) in enumerate(log_data.items()):
        samples = list(range(1, len(uniformities) + 1))
        df = pd.Series(uniformities)
        avg = sum(uniformities) / len(uniformities)
        plt.plot(samples, uniformities, label=f'{label} Uniformity (%)', color=colors[i], alpha=0.4)
        plt.plot(samples, df.rolling(window=50).mean(), label=f'{label} Rolling Avg (50)', color=colors[i])
        plt.axhline(y=avg, color=colors[i], linestyle=':', label=f'{label} Avg {avg:.2f}%')

    plt.axhline(y=50, color='black', linestyle='--', label='Target 50%')
    plt.xlabel('Sample')
    plt.ylabel('Uniformity (%)')
    plt.title('Uniformity Comparison Across 4 Runlogs')
    plt.legend()
    plt.grid(True)
    plt.show()

    plt.figure(figsize=(8, 6))
    for i, (label, uniformities) in enumerate(log_data.items()):
        avg = sum(uniformities) / len(uniformities)
        plt.hist(uniformities, bins=20, color=colors[i], alpha=0.5, edgecolor='black', label=f'{label} Avg {avg:.2f}%')

    plt.axvline(x=50, color='black', linestyle='--', label='Target 50%')
    plt.xlabel('Uniformity (%)')
    plt.ylabel('Frequency')
    plt.title('Histogram of Uniformity Across 4 Runlogs')
    plt.legend()
    plt.grid(True)
    plt.show()

def main():
    log_files = {
        "Runlog1": "runlog1.txt",
        "Runlog2": "runlog2.txt",
        "Runlog3": "runlog3.txt",
        "Runlog4": "runlog4.txt"
    }

    log_data = {}

    for label, file in log_files.items():
        bitstrings = parse_log_file(file)
        if not bitstrings:
            print(f"No hex responses found in {file}. Skipping.")
            continue
        uniformities = calculate_uniformity(bitstrings)
        avg = sum(uniformities) / len(uniformities)
        print(f"Average Uniformity ({label}): {avg:.2f}%")
        log_data[label] = uniformities

    if len(log_data) < 2:
        print("Need at least two valid runlogs to compare.")
        return

    plot_uniformity(log_data)

if __name__ == "__main__":
    main()
