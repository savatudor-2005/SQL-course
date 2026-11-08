-- Find average sales

SELECT 
OrderID,
OrderDate,
Sales,
ProductID,
AVG(Sales) Over() AverageSales,
AVG(Sales) Over(PARTITION BY ProductID) AverageSalesByProduct
FROM Sales.Orders