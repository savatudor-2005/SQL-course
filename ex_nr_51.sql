/*
Find the total sales across all orders
additionally provide details such order id 
& order date
*/

SELECT 
OrderID,
OrderDate,
SUM(Sales) OVER() TotalSales
FROM Sales.Orders