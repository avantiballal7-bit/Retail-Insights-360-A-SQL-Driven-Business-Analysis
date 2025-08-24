-- Section A: Business Overview

-- Total customers and top 10 cities by customer count
SELECT count(customer_id) as Customer_count ,city
FROM customers
GROUP BY city 
ORDER BY Customer_count DESC
LIMIT 10 ;

-- Unique product categories + count per category
SELECT DISTINCT category , count(product_id) as count_product
FROM products
GROUP BY category
ORDER BY count_product desc;

-- Most ordered category of products 
SELECT 
p.category,
count(o.quantity) as quantity_ordered
FROM 
products as p
JOIN order_items as o 
ON p.product_id = o.product_id 
GROUP BY 
p.category
ORDER BY 
quantity_ordered desc;




-- Total revenue per month 
SELECT 
monthname(order_date) as Month, 
sum(total_amount) as monthy_revenue
FROM orders 
GROUP BY Month
ORDER BY monthy_revenue ;

-- Top 10 Cities by Total Orders
SELECT 
c.city,
count(o.order_id) as total_orders
FROM 
customers as c 
JOIN orders as o ON 
c.customer_id = o.customer_id 
GROUP BY c.city
ORDER BY total_orders desc
LIMIT 10;

--  Most Frequently Purchased Products
SELECT p.product_name , 
p.category, 
count(o.quantity) as quantity_ordered
FROM products as p 
join order_items as o ON
p.product_id = o.product_id 
GROUP BY p.product_name , p.category
ORDER BY quantity_ordered desc;

-- Revenue by Category
SELECT p.category,
sum(o.total_amount) as revenue 
FROM products as p 
JOIN order_items as ot
ON p.product_id = ot.product_id
JOIN orders as o 
ON o.order_id = ot.order_id 
GROUP BY p.category
ORDER BY revenue desc;

-- Payment Method Split (Success Only)
SELECT payment_method ,
count(payment_id) as count_payments
FROM 
payments 
WHERE payment_status = 'success'
GROUP BY payment_method;

-- Daily Order Count Trend (Last 30 Days)
SELECT order_date as day ,
count(order_id) as total_orders
FROM orders 
WHERE order_date >= curdate() - interval 30 day 
GROUP BY day 
ORDER BY day

-- Customers who spent more than ₹50,000 total : High Value Customers
SELECT c.customer_id , 
c.name ,
sum(o.total_amount) as spendings
FROM customers as c 
JOIN orders as o 
ON c.customer_id = o.customer_id 
GROUP BY c.customer_id, 
c.name
HAVING spendings >50000
ORDER BY spendings desc;

-- 1. Rank High-Spending Customers : Rank customers by their total spending from highest to lowest.
SELECT
c.customer_id,c.name , sum(o.total_amount) as total_spendings ,
dense_rank()over(ORDER BY SUM(o.total_amount) DESC) AS spend_rank
FROM customers as c join
orders as o ON c.customer_id = o.customer_id 
GROUP BY c.customer_id, c.name
ORDER BY spend_rank desc;


SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent,
    DENSE_RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS spend_rank
FROM customers AS c
JOIN orders AS o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY spend_rank;




