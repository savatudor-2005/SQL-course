-- Concatenate first name and country into one column
SELECT 
id,
CONCAT(first_name,' ',country) AS name_and_country,
score,
LEN(first_name) AS len_first_name
FROM customers;

--convert the first name to lowercase
SELECT 
id,
CONCAT(LOWER(first_name),' ',UPPER(country)) AS name_country,
score
FROM customers;

--find customers whose first name contains
-- leading or trailin spaces
SELECT 
first_name,
LEN(first_name) AS len_name,
LEN(TRIM(first_name)) AS len_trim_name
FROM customers;
--WHERE first_name != TRIM(first_name)
--Remove dashes from phone number

SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890','-',' ') AS clean_phone;

-- Replace File Extension from txt to csv
SELECT 
'report.txt' AS old_filename,
REPLACE('report.txt','txt','csv') AS new_filename ;

/*
Retrieve a list of customers first name after
removing the first character
*/
SELECT 
first_name,
SUBSTRING(TRIM(first_name),2,LEN(first_name)) 
FROM customers;

SELECT 
3.516,
ROUND(3.516,2) AS round_2,
ROUND(3.516,1) AS round_1,
ROUND(3.516,0) AS round_0;

SELECT 
-10,
ABS(-10),
ABS(10);
