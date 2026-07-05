Retail Sales Analysis: Olist Brazilian E-Commerce Dataset
1. Order status distribution
SELECT order_status, COUNT(*) as total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;

2. Orders joined with customer location
SELECT o.order_id, o.order_status, c.customer_city, c.customer_state
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
LIMIT 10;

3. Revenue by state (triple join)
SELECT c.customer_state, SUM(p.payment_value) as total_revenue, COUNT(DISTINCT o.order_id) as num_orders
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC
LIMIT 10;

4. Monthly order trend
SELECT strftime('%Y-%m', order_purchase_timestamp) as month, COUNT(*) as num_orders
FROM olist_orders_dataset
GROUP BY month
ORDER BY month;

5. Top product categories by catalog size
SELECT product_category_name, COUNT(*) as num_products
FROM olist_products_dataset
GROUP BY product_category_name
ORDER BY num_products DESC
LIMIT 10;
