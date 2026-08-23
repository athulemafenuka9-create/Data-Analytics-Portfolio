-- ============================================================
-- SQL Project: Cleaned Online Sales Data Analysis
-- Tool: DBeaver / PostgreSQL / MySQL
-- Description: Analytical queries aggregating total revenue, order counts,
--              and average order value across product categories and regions.
-- ============================================================

-- 1. Database & Table Setup
CREATE TABLE IF NOT EXISTS online_sales (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    units_sold INT,
    unit_price DECIMAL(10, 2),
    total_revenue DECIMAL(10, 2),
    region VARCHAR(50),
    payment_method VARCHAR(50),
    month_name VARCHAR(10),
    revenue_tier VARCHAR(20)
);

-- 2. High-Level Executive KPI Aggregations
SELECT 
    SUM(total_revenue) AS grand_total_revenue,
    COUNT(transaction_id) AS total_orders,
    ROUND(AVG(total_revenue), 2) AS average_order_value
FROM online_sales;

-- 3. Category Performance Analysis
SELECT 
    product_category,
    COUNT(transaction_id) AS total_transactions,
    SUM(units_sold) AS total_units_sold,
    SUM(total_revenue) AS category_revenue,
    ROUND(AVG(total_revenue), 2) AS avg_order_value
FROM online_sales
GROUP BY product_category
ORDER BY category_revenue DESC;

-- 4. Regional Sales Breakdown
SELECT 
    region,
    COUNT(transaction_id) AS order_count,
    SUM(total_revenue) AS regional_revenue,
    ROUND((SUM(total_revenue) / (SELECT SUM(total_revenue) FROM online_sales)) * 100, 2) AS revenue_percentage
FROM online_sales
GROUP BY region
ORDER BY regional_revenue DESC;

-- 5. Revenue Tier Segmentation Analysis
SELECT 
    revenue_tier,
    COUNT(transaction_id) AS transaction_count,
    SUM(total_revenue) AS tier_total_revenue
FROM online_sales
GROUP BY revenue_tier
ORDER BY tier_total_revenue DESC;
