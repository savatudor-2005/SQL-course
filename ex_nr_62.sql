--Find the total number of scores for the customers

SELECT *,
COUNT(Score) OVER() TotalScores,
COUNT(Country) OVER(PARTITION BY Country) TotalCountries
FROM Sales.Customers