SELECT 
p.Category,
o.OrderID,
o.OrderDate,
o.Sales,
ROUND(AVG(CAST(o.Sales AS FLOAT)) OVER(PARTITION BY p.Category ORDER BY o.OrderDate),2) AvgSalesSoFar,
ROUND(AVG(CAST(o.Sales AS FLOAT)) OVER(PARTITION BY p.Category ORDER BY o.OrderDate
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW),2) AvgSalesForLast3
FROM Sales.Orders AS o
INNER JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
ORDER BY p.Category, OrderDate;

