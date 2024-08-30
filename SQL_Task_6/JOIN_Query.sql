-->Task 6:-Do join operation on ecom data 6 example
SELECT * FROM sales
SELECT * FROM product
SELECT * FROM customer

-->Retrieve a list of products sold along with the customer who purchased them and the sale date
SELECT 
    p.product_name, c.customer_name, s.order_date, s.sales
FROM 
    sales s
INNER JOIN 
    product p ON s.product_id = p.product_id
INNER JOIN 
    customer c ON s.customer_id = c.customer_id

-->Get a list of all customers and their orders, including customers who have not made any orders
SELECT 
    c.customer_name, s.order_id, s.order_date, p.product_name, s.sales
FROM 
    customer c
LEFT JOIN 
    sales s ON c.customer_id = s.customer_id
LEFT JOIN 
    product p ON s.product_id = p.product_id

-->Find all products, including those that have not been sold, along with the order details if they exist
SELECT 
    p.product_name, s.order_id, s.order_date, s.sales, c.customer_name
FROM 
    product p
RIGHT JOIN 
    sales s ON p.product_id = s.product_id
LEFT JOIN 
    customer c ON s.customer_id = c.customer_id

-->Get a complete list of all customers and all products, showing order details where applicable
SELECT 
    c.customer_name, p.product_name, s.order_date, s.sales
FROM 
    customer c
FULL OUTER JOIN 
    sales s ON c.customer_id = s.customer_id
FULL OUTER JOIN 
    product p ON s.product_id = p.product_id

-->Generate combinations of all customers and all products (useful for analysis like potential customer-product pairs).
SELECT 
    c.customer_name, p.product_name
FROM 
    customer c
CROSS JOIN 
    product p

-->Find customers who have placed multiple orders, showing their customer ID and the details of their orders.
SELECT 
    s1.customer_id, c.customer_name, s1.order_id AS first_order, s2.order_id AS second_order, s1.order_date AS first_order_date, s2.order_date AS second_order_date
FROM 
    sales s1
INNER JOIN 
    sales s2 ON s1.customer_id = s2.customer_id AND s1.order_id < s2.order_id
INNER JOIN 
    customer c ON s1.customer_id = c.customer_id

















































