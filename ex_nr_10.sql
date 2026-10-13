-- Change the score of customer with ID 6 to 0 

/*UPDATE customers
SET score = 0
WHERE id= 6
SELECT * FROM customers*/

/* 
Change the score of customer 8 to 0 and update the
country to UK
*/
UPDATE customers
SET score = 100,
	country = 'UK' 
WHERE id = 8
SELECT * FROM customers