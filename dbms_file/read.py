import pandas

# Define the file path
file_path = r"e:\data\show.csv"

# Read the CSV file into a DataFrame
df = pandas.read_csv(file_path)

# Display the DataFrame
print("DataFrame:")
print(df)

# Display the DataFrame structure
print("\nDataFrame Info:")
print(df.info())