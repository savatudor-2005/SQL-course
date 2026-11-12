-- Find the top highest sales for each product
SELECT *
FROM(
SELECT OrderID,
OrderDate,
ProductID,
Sales,
ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) RankByProduct
FROM Sales.Orders
)t WHERE RankByProduct = 1