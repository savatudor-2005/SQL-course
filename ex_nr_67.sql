-- Find the average scores of customers
-- Additionally provide details such as customerID and LastName

SELECT 
CustomerID,
FirstName,
LastName,
Score,
COALESCE(Score,0) CustomerScore,
AVG(Score) OVER() AvgScore,
AVG(COALESCE(Score,0)) OVER() AvgScoreWithoutNulls
FROM Sales.Customers