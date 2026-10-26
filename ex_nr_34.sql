SELECT 
OrderID,
OrderDate,
ShipDate,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime)  Month,
DAY(CreationTime)  Day,
DATEPART(year, CreationTime) AS Year_dp,
DATEPART(month, CreationTime) AS Month_dp,
DATEPART(HOUR, CreationTime) AS Hour_dp,
DATEPART(QUARTER, CreationTime) AS quarter_dp,
DATEPART(WEEKDAY, CreationTime) AS Week_dp
FROM Sales.Orders;

SELECT 
DATENAME(month, CreationTime) Month_dn,
DATENAME(WEEKDAY,CreationTime) weekday_dn,
DATENAME(day, CreationTime) day_dn
FROM Sales.Orders;

SELECT 
DATETRUNC(minute, CreationTime) as Minute_dt,
DATETRUNC(day, CreationTime) AS day_dt,
DATETRUNC(year, CreationTime) as year_dt
FROM Sales.Orders;

SELECT 
DATETRUNC(YEAR,CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(YEAR,CreationTime)