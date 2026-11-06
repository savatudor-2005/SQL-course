
SELECT 
category, SUM(Sales) AS total_sales
FROM(
SELECT 
OrderID,Sales,
CASE
WHEN Sales > 50 THEN 'HIGH'
WHEN Sales > 20 THEN 'MEDIUM'
ELSE 'LOW'
END AS category
FROM Sales.Orders
)t
GROUP BY category
ORDER BY total_sales DESC