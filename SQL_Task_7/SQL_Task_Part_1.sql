SELECT * FROM sales

SELECT * FROM product

SELECT * FROM customer

--> create a report of all state sales, quantity, discount , profit  with following aggregation ,sum , avg, min , max, count 

SELECT * FROM sales
SELECT * FROM customer

SELECT c.state , SUM(s.sales) AS sales,COUNT(s.sales)AS sales_count,avg(s.sales)as average_sales,sum(s.quantity)as sales_quantity,sum(s.discount)as sales_discount,
	max(s.profit)as max_sales_profit, min(s.profit)as min_sales_profit  from sales as s 
	inner join customer as c 
	on s.customer_id=c.customer_id
	group by c.state,s.profit
	order by max_sales_profit desc limit 10

	
--> get data of all state and city's avg customer age
select * from sales
select * from customer
select * from product

select state, city ,avg(c.age)from customer as c
group by state , city 

--> get data of 2017 to 2018  with product name and sales per quantity                   

select product_name,s.order_date,sum(sales)/sum(quantity) as sales_per_quantity
from sales as s
inner join product as p
on s.product_id = p.product_id
where order_date between '2017-01-01' and '2018-12-31'
group by product_name,s.order_date