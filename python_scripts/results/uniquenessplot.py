import re
import matplotlib.pyplot as plt
import numpy as np

def hex_to_bitstring(hexstr):
    scale = int(hexstr, 16)
    num_of_bits = len(hexstr) * 4
    return bin(scale)[2:].zfill(num_of_bits)

def parse_log_file(filepath):
    responses = []
    hex_pattern = re.compile(r'Response \(hex\):\s*([0-9a-fA-F]+)')
    with open(filepath, 'r') as file:
        for line in file:
            match = hex_pattern.search(line)
            if match:
                hexstr = match.group(1)
                responses.append(hex_to_bitstring(hexstr))
    return responses

def calculate_uniformity(bitstrings):
    return [bits.count('1') / len(bits) * 100 for bits in bitstrings]

def smooth_curve(y_values, window_size=20):
    return np.convolve(y_values, np.ones(window_size)/window_size, mode='same')

def main():
    device1_log = r'C:\Users\ppochiraju2024\Desktop\CHOICE-PUF\python_scripts\results\device1\runlog1.txt'
    device2_log = r'C:\Users\ppochiraju2024\Desktop\CHOICE-PUF\python_scripts\results\device2\runlog1.txt'

    dev1_responses = parse_log_file(device1_log)
    dev2_responses = parse_log_file(device2_log)

    dev1_uniformity = calculate_uniformity(dev1_responses)
    dev2_uniformity = calculate_uniformity(dev2_responses)

    dev1_smooth = smooth_curve(dev1_uniformity, window_size=20)
    dev2_smooth = smooth_curve(dev2_uniformity, window_size=20)

    dev1_avg = np.mean(dev1_uniformity)
    dev2_avg = np.mean(dev2_uniformity)

    # Plot
    plt.figure(figsize=(12, 6))
    plt.plot(range(1, len(dev1_smooth) + 1), dev1_smooth, label=f'device1 runlog1 (Avg: {dev1_avg:.1f}%)', color='blue')
    plt.plot(range(1, len(dev2_smooth) + 1), dev2_smooth, label=f'device2 runlog1 (Avg: {dev2_avg:.1f}%)', color='purple')
    plt.axhline(y=50, color='black', linestyle='--', label='Target 50%')

    plt.xlabel('Configuration')
    plt.ylabel('Uniformity (%)')
    plt.title('Smoothed Uniformity: Device1 Runlog1 vs Device2 Runlog1')
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    main()
