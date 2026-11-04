-- find the average score of the customers
SELECT 
AVG(ISNULL(Score,0))
FROM Sales.Customers
;