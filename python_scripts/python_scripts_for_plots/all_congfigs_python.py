import re
import os

def parse_log_file(filepath):
    configs = set()
    hex_pattern = re.compile(r'Response \(hex\):\s*([0-9a-fA-F]+)')
    config_idx = -1
    with open(filepath, 'r') as f:
        for line in f:
            if 'Command:' in line:
                config_idx += 1
            if hex_pattern.search(line):
                configs.add(config_idx)
    return configs

def main():
    folder_path = r'C:\Users\ppochiraju2024\Desktop\CHOICE-PUF\python_scripts\results\device1'
    runlog_files = ['runlog1.txt', 'runlog2.txt', 'runlog3.txt', 'runlog4.txt']

    total_configs = set()
    for file in runlog_files:
        filepath = os.path.join(folder_path, file)
        configs = parse_log_file(filepath)
        total_configs.update(configs)
        print(f"{file}: {len(configs)} unique configurations")

    print("\nSummary:")
    print(f"Total unique configurations across all runlogs: {len(total_configs)}")
    missing = set(range(6144)) - total_configs
    print(f"Missing configurations (out of 6144): {len(missing)}")
    if missing:
        print(f"Example missing configs: {sorted(list(missing))[:10]}")

if __name__ == "__main__":
    main()
