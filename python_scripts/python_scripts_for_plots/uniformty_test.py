import re
import pandas as pd

def calculate_uniformity(file_path):
    bit_pattern = re.compile(r"Response \(bits\):\s*([01]+)")
    ones_count = 0
    total_bits = 0

    with open(file_path, 'r') as f:
        for line in f:
            match = bit_pattern.search(line)
            if match:
                bits = match.group(1)
                ones_count += bits.count('1')
                total_bits += len(bits)

    if total_bits == 0:
        print(f"No bit data found in {file_path}")
        return None

    uniformity = ones_count / total_bits * 100
    print(f"{file_path}: Uniformity = {uniformity:.2f}%")
    return uniformity

def main():
    log_files = ['runlog1.txt', 'runlog2.txt', 'runlog3.txt']
    uniformities = []

    for file in log_files:
        uniformity = calculate_uniformity(file)
        if uniformity is not None:
            uniformities.append((file, uniformity))

    # Save to CSV
    df = pd.DataFrame(uniformities, columns=['File', 'Uniformity (%)'])
    df.to_csv('uniformity_summary.csv', index=False)
    print("\nSaved uniformity summary to uniformity_summary.csv")

if __name__ == "__main__":
    main()
