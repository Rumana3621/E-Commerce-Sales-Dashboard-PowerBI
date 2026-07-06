import pandas as pd

df = pd.read_csv("data/Sample - Superstore.csv", encoding="latin1")

df.to_csv("data/cleaned_superstore.csv", index=False)

print("Cleaned dataset saved successfully!")

print(df.dtypes)