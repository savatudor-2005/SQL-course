-- Rank the orders based on their sales from highest to lowest

SELECT 
OrderID,
OrderDate,
Sales,
ROW_NUMBER() OVER(ORDER BY Sales DESC) SalesRanked_Row,
RANK() OVER(ORDER BY Sales DESC) SalesRanked_Rank,
DENSE_RANK() OVER(ORDER BY Sales DESC) SalesRanked_Dense
FROM Sales.Orders