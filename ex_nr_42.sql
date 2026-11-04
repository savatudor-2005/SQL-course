-- Show all details for customers who have not placed any orders

SELECT *
FROM Sales.Orders;

SELECT 
c. *
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL 