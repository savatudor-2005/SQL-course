/*
Find employees who are not customers at the same time
*/

SELECT 
LastName,
FirstName
FROM Sales.Employees

EXCEPT

SELECT 
LastName,
FirstName
FROM Sales.Customers