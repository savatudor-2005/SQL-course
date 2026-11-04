-- Identify the customers who have no scores

SELECT *
FROM Sales.Customers
WHERE Score IS NULL;

SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL