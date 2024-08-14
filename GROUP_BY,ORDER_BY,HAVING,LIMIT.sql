SELECT * 
FROM employee_demographics;

-- group by
SELECT gender
FROM employee_demographics 
GROUP BY gender;

SELECT gender,AVG(age) AS 'Average Age',MIN(age) AS 'Min Age',MAX(age) AS 'Max Age',COUNT(age) 
FROM employee_demographics 
GROUP BY gender;

-- order by
-- ascending order
SELECT *
FROM employee_demographics
ORDER BY first_name;

-- descending order
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender,age DESC ;

-- having

SELECT occupation,AVG(salary)
FROM employee_salary

;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;

-- limit
SELECT *
FROM employee_demographics;

-- TO SELECT TOP 3 OLDEST EMPLOYEE
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

-- LIMIT 2,1 : STARTS FROM 2nd ROW AND RETURN 1 ROW AFTER THAT
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;