-- Assign unique IDs to the roows of Orders Archive table

SELECT 
ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) UniqueId,
*
FROM Sales.OrdersArchive