/*
Rank each order based on their sales
from highest to lowest
*/

SELECT 
OrderID,
OrderDate,
Sales,
RANK() OVER(ORDER BY Sales DESC) Sales_Ranking
FROM Sales.Orders