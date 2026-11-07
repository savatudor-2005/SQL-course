 -- Find the total sales across all orders
 -- Total sales for each product
 SELECT 
 OrderID,
 OrderDate,
 ProductID,
 SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts
FROM Sales.Orders;

 SELECT 
 ProductID,
 OrderDate,
 Sales
 FROM Sales.Orders