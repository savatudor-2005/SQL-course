/*-- Find the total score for each country
SELECT 
country AS customer_country,
SUM(score) AS total_score
FROM customers
GROUP BY country */

-- Find the total numer of customers for each country

SELECT 
country,
COUNT(id) AS total_customers,
SUM(score) AS total_score
FROM customers
GROUP BY country
 