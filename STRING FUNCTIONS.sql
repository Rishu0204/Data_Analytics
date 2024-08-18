-- STRING FUNCTIONS

-- LENGTH
SELECT LENGTH('RISHU PRASAD');

SELECT first_name,LENGTH(first_name)
FROM employee_demographics;

-- UPPER() AND LOWER()

SELECT UPPER('rishu prasad');
SELECT LOWER('RISHU PRASAD');

-- TRIM() : REMOVE SPACE FROM LEFT MOST AND RIGHT MOST OF A STRING

SELECT TRIM("     RISHU     ");

-- LTRIM() : REMOVE FROM ONLY LEFT MOST
-- RTRIM() : REMOVE FROM ONLY RIGHT MOST

SELECT LTRIM("     RISHU     ");
SELECT RTRIM("     RISHU     ");

-- LEFT() AND RIGHT() : SELECT STRING FROM THE LEFT OR THE RIGHT OF THE STRING TILL A SPECIFIED LENGTH

SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,4)
FROM employee_demographics;

-- SUBSTRING() : WE CAN SPECIFY THE THE STARTING AND THE LENGHT FROM THAT STARTING POINT

SELECT first_name,
SUBSTRING(first_name,2,2)
FROM employee_demographics; 

-- LOCATE() : LOCATES A STRING IN A COLUMN

SELECT first_name,
LOCATE('an',first_name)
FROM employee_demographics;





