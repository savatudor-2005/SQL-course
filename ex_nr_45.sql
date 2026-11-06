-- Retrieve employee details with gender display as full text

SELECT 
EmployeeID,
FirstName,
LastName,
Gender,
CASE
WHEN Gender = 'M' THEN 'Male'
when Gender = 'F' THEN 'Female'
ELSE 'not available'
END GenderFullText
FROM Sales.Employees