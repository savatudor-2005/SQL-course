/*
Find the sales price for each order by dividing the sales by
the quantity
*/

SELECT 
OrderId,
Sales,
Quantity,
Sales/NULLIF(Quantity,0) AS price
FROM Sales.Orders;
