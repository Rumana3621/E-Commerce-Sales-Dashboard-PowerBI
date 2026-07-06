-- ===========================================
-- E-Commerce Sales Dashboard SQL Queries
-- ===========================================

-- 1. Total Sales, Profit and Quantity
SELECT
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(profit), 2) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM superstore;

-- 2. Sales by Category
SELECT
    category,
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM superstore
GROUP BY category
ORDER BY Total_Sales DESC;

-- 3. Top 10 States by Sales
SELECT
    state,
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM superstore
GROUP BY state
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4. Top 10 Products by Sales
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM superstore
GROUP BY product_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5. Sales by Region
SELECT
    region,
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM superstore
GROUP BY region
ORDER BY Total_Sales DESC;

-- 6. Monthly Sales Trend
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    ROUND(SUM(sales), 2) AS Total_Sales
FROM superstore
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;