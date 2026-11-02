SELECT
COnvert(DATE, CreationTime) AS [Datetime to Dare CONVERT],
CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32],
CONVERT(VARCHAR, CreationTime, 32) AS [EU  Std. Style:34]
FROM Sales.Orders

SELECT 
CAST('123' AS INT ) [String to integer],
CAST(123 AS VARCHAR) AS [Int to String],
CAST('2025-08-20' AS DATETIME2) AS [String to Datetime],
CreationTime,
CAST(CreationTime AS DATE) AS [Datetime to Date ]
FROM Sales.Orders