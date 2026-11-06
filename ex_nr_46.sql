--Retrieve customers details with abbreviated country code

SELECT 
CustomerID,
FirstName,
LastName,
Country,
CASE
WHEN country = 'Germany' THEN 'DE'
WHEN country = 'USA' THEN 'US'
ELSE 'n/a'
END CountryAbbreviation,

CASE country 
WHEN 'Germany' THEN 'DE'
WHEN 'USA' THEN 'US'
ELSE 'n/a'
END CountryAbbreviation2

FROM Sales.Customers;

SELECT DISTINCT Country
FROM Sales.Customers