-- Find the total sales across all order
-- and the total sales for each product
-- Additionally, provide details such as order ID and order date

SELECT 
OrderID,
OrderDate,
ProductID,
SUM(Sales) OVER() TotalSales,
SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesPerProduct
FROM Sales.Orders