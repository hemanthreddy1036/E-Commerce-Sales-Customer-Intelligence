
-- E-COMMERCE SALES & CUSTOMER INTELLIGENCE
-- SQL Analysis

-- DATABASE SELECTION & VERIFICATION

USE project;

-- Displaying all tables

SHOW TABLES;

select * from customers;

select * from order_items;

select * from orders;

select * from products;

select * from returns;

-- DATA OVERVIEW

-- Number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Number of products
SELECT COUNT(*) AS total_products FROM products;

-- Number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Number of order items
SELECT COUNT(*) AS total_order_items FROM order_items;

-- Number of returns
SELECT COUNT(*) AS total_returns FROM returns;

-- Duplicate customers

SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- missing customer IDs
SELECT *
FROM customers
WHERE customer_id IS NULL;

-- Total Sales
SELECT ROUND(SUM(order_total_usd), 2) AS total_sales
FROM orders;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Average Order Value
SELECT ROUND(AVG(order_total_usd), 2) AS average_order_value
FROM orders;


--  Monthly Sales
SELECT
    order_month,
    ROUND(SUM(order_total_usd), 2) AS monthly_sales
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- Sales by Country
SELECT
    shipping_country,
    ROUND(SUM(order_total_usd), 2) AS total_sales
FROM orders
GROUP BY shipping_country
ORDER BY total_sales DESC;

-- Top 10 Best-Selling Products
SELECT
    product_id,
    SUM(quantity) AS total_quantity
FROM order_items
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 10;

-- Sales by Product Category
SELECT
    p.category,
    ROUND(SUM(oi.line_total_usd), 2) AS total_sales
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;


-- Top 10 Customers by Lifetime Spending
SELECT
    customer_id,
    customer_name,
    lifetime_spend_usd
FROM customers
ORDER BY lifetime_spend_usd DESC
LIMIT 10;

-- Number of Customers by Country
SELECT
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;


-- Sales by Channel
SELECT
    sales_channel,
    ROUND(SUM(order_total_usd), 2) AS total_sales
FROM orders
GROUP BY sales_channel
ORDER BY total_sales DESC;

-- Number of Orders by Status
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- Number of Returns by Reason
SELECT
    return_reason,
    COUNT(*) AS total_returns
FROM returns
GROUP BY return_reason
ORDER BY total_returns DESC;

-- Total Refund Amount
SELECT
    ROUND(SUM(refund_amount_usd), 2) AS total_refunds
FROM returns;


















