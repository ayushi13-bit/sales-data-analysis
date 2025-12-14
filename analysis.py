import pandas as pd

df = pd.read_csv("sales_data.csv")

df['order_date'] = pd.to_datetime(df['order_date'])

total_sales = df['sales'].sum()
monthly_sales = df.groupby(df['order_date'].dt.month)['sales'].sum()

print("Total Sales:", total_sales)
print("Monthly Sales:")
print(monthly_sales)
