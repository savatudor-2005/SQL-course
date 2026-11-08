-- Find the total number or rows
SELECT 
OrderID,
OrderDate,
CustomerID,
COUNT(OrderID) OVER() AS TotalOrders,
COUNT(OrderID) OVER(PARTITION BY CustomerID) AS OrdersByCustomers
FROM Sales.Orders