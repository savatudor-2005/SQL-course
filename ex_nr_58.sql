-- Find the highest & lowest sales of all orders

SELECT 
OrderID,
OrderDate,
ProductID,
Sales,
MIN(Sales) OVER() LowestSales,
MAX(Sales) OVER() HighestSales,
MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesByProduct,
MAX(Sales) OVER(PARTITION BY ProductID) HighestSalesByProduct
FROM Sales.Orders