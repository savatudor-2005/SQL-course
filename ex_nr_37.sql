-- How many orders were placed each year?
SELECT 
Year(OrderDate),
COUNT(*) NrOfOrders
FROM Sales.Orders
Group by Year(OrderDate)

-- How many orders were placed each month?

SELECT 
MONTH(OrderDate),
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

-- Show all orders that were placed during the
-- month of February

SELECT 
Month(OrderDate),
COUNT(*) NrOfOrders
FROM Sales.Orders
WHERE Month(OrderDate) = 2
GROUP BY Month(OrderDate)

SELECT 
OrderId,
CreationTime,
Format(CreationTime,'MM-dd-yyyy') USA_FORMAT,
Format(CreationTime,'dd-MM-yyyy') EUROPE_FORMAT,
FORMAT(CreationTime,'dddd') dddd,
Format(CreationTime,'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime,'MMMM') MMMM
FROM Sales.Orders

--SHOW Creation time using the following format
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
OrderId,
CreationTime,
'Day ' + Format(CreationTime, 'ddd MMM') + 
' Q' + DateName(quarter, CreationTime) + ' ' + 
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') 
AS CustomFormat
FROM Sales.Orders