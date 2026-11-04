--Sort the customers from the lowest to the highest scores
-- with nulls appearing last 

SELECT 
CustomerID,
Score 
FROM Sales.Customers
ORDER BY CASE WHEN Score is null then 1 else 0 END , Score