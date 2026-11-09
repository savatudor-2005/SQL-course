-- Calculate the moving average of sales for each 
-- product over time

SELECT 
OrderID,
ProductID,
OrderDate,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID) AvgByProduct,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) MovingAvg
FROM Sales.Orders