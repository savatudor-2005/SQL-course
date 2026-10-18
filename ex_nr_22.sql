/*
Get all customers aling with their orders,
including orders without matching customers
*/

SELECT * FROM orders;
SELECT * FROM customers;

SELECT 
c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o 
ON o.customer_id = c.id

/*
Get all customers aling with their orders,
including orders without matching customers 
using only left join
*/
SELECT 
c.id,
c.first_name,
o.order_date,
o.sales
FROM orders AS o
LEFT JOIN customers AS c 
ON c.id = o.customer_id