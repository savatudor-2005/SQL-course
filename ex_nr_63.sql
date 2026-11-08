--Check whether the table orders contains any duplicates

SELECT 
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.Orders;

SELECT 
OrderID,
COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive