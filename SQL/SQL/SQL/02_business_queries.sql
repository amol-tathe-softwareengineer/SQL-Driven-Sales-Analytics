-- Total Sales by Region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;

-- Monthly Sales Trend
SELECT EXTRACT(MONTH FROM order_date) AS month,
       SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
