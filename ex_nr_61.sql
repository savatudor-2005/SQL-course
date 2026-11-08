/*
Find the total number of customers
provide customer detail
*/

SELECT 
CustomerID,
FirstName,
LastName,
Country,
COUNT(*) OVER() TotalCustomers
FROM Sales.Customers