/*
Display the full name of customers in a single field by merging
their first and last names and add 10 bonus points to each customer score
*/

SELECT 
CustomerID,
CONCAT(LastName,' ',FirstName) AS full_name,
ISNULL(Score+10,10) AS score
FROM Sales.Customers