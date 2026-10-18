/*
Get all customers and all orders,
even if ther is no match 
*/
SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id