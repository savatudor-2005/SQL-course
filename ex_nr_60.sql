-- Find the deviation of each  sale from both the 
-- minimum and maximum sales amounts

SELECT OrderID,
OrderDate,
ProductID,
Sales,
MAX(Sales) OVER() HighestSales,
MIN(Sales) OVER() LowestSales,
Sales - MIN(Sales) OVER() DeviationFromMin,
MAX(Sales) OVER() - Sales DeviationFromMax
FROM Sales.Orders