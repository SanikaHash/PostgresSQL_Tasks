-->Join Query to combine 3 tables 

-->Retrieve a list of orders, including customer details and product information.

SELECT 
    s.order_id,
    s.order_date,
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    s.quantity,
    s.sales,
    s.profit
FROM 
    sales s
INNER JOIN 
    customer c ON s.customer_id = c.customer_id
INNER JOIN 
    product p ON s.product_id = p.product_id



