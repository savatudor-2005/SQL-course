-- Retrieve all customers whose score falls in the range between 100 and 500
SELECT * FROM customers
WHERE score BETWEEN 100 AND 500

SELECT * FROM customers
WHERE country = 'Germany' OR country = 'USA' 

SELECT * FROM customers
WHERE country IN ('Germany' , 'USA')