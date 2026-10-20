/*
Using SalesDB, Retrieve a list of all orders, along with
the related customer, product, and employee details
for each display:
orderID , Customer name , product name , sales amount , product price 
salespersons name
*/

SELECT 
o.OrderID,
o.Sales,
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
p.Product AS ProductName,
p.Price,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON c.CustomerID = o.CustomerID
LEFT JOIN Sales.Products AS p
ON p.ProductID = o.ProductID
LEFT JOIN Sales.Employees AS e
ON e.EmployeeID = o.SalesPersonID