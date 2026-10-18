/*
Get all customers who haven't placed any order
*/
SELECT 
c.id,
c.first_name,
o.order_date,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL
/*
Get all orders without matching customers
*/

SELECT 
o.order_id,
o.order_date,
c.first_name
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL
/*
Get all orders without matching customers
solve the task using only left join
*/

SELECT 
o.order_id,
o.order_date,
c.first_name
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL

/*
Find customers without orders and
orders without customers
*/

SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL
