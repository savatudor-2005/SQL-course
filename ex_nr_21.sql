/*
Get all customers along with their orders,
including those without orders
*/
SELECT * FROM customers;
SELECT * FROM orders;


SELECT c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON o.customer_id = c.id