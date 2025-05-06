import pandas as pd

def filter_uniformity(input_csv, output_csv, lower=0.3, upper=0.7):
    df = pd.read_csv(input_csv)
    good_configs = df[(df['uniformity'] >= lower) & (df['uniformity'] <= upper)]
    good_configs.to_csv(output_csv, index=False)
    print(f"Saved {len(good_configs)} configs to {output_csv}")

if __name__ == "__main__":
    filter_uniformity('uniformity_data.csv', 'good_configs.csv')
