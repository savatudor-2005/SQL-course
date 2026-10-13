-- Retrieve only 3 customers
/* 
SELECT TOP 3 *
FROM customers 
ORDER BY score DESC
*/
-- Retrieve the lowest 2 customers based on score
SELECT TOP 2*
FROM customers 
ORDER BY score ASC