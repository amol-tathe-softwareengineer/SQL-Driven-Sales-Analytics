-- Total Sales by Region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;

-- Profit by Product
SELECT product_name,
       SUM(sales_amount - cost) AS profit
FROM sales
GROUP BY product_name;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month,
       SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;
