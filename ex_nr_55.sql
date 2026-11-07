SELECT
OrderID,
OrderDate,
OrderStatus,
ProductID,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders
WHERE ProductID IN (101, 102)