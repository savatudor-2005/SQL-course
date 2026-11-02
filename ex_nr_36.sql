SELECT 
OrderID,
OrderDate,
DATEADD(month, -10, OrderDate) AS TenDaysBefore
FROM Sales.Orders



-- Calculate the age of employees

SELECT 
EmployeeID,
BirthDate,
DATEDIFF(year,BirthDate,GETDATE()) AS Age
FROM Sales.Employees

-------
SELECT
ISDATE('123') DateCheck1,
ISDATE('2025-08-20') DateCheck2,
ISDATE('20-08-2025') DateCheck3,
isdate('2025') DateCheck4,
isdate('08') DateCheck5