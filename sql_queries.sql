SELECT SUM(sales) AS total_sales FROM sales;

SELECT MONTH(order_date) AS month, SUM(sales) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT product, SUM(sales) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

SELECT region, SUM(sales) AS region_sales
FROM sales
GROUP BY region;
