-- Joins
SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT *
FROM parks_departments;

-- INNER JOIN: JOIN EVERYTHING COMMON IN BOTH TABLES

SELECT * 
FROM employee_demographics AS a
JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
    ;

SELECT a.employee_id,a.first_name,b.occupation 
FROM employee_demographics AS a
JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
    ;
-- LEFT JOIN: TAKE EVERYTHING FROM LEFT TABLE AND MATCH IT TO WHATS IS COMMON IN THE RIGHT TABLE

SELECT *
FROM employee_demographics AS a
LEFT JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
    ;
    
-- RIGHT JOIN: TAKE EVERYTHING FROM RIGHT TABLE AND THEN EVERYTHING THAT MATCHES RIGHT TABLE WILL BE POPULATED WHICH DOES NOT MATCH WILL GET NULL VALUES

SELECT * 
FROM employee_demographics AS a
RIGHT JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
    ;
    
-- SELF JOIN

SELECT * 
FROM employee_demographics AS a
JOIN employee_demographics AS b
	ON a.employee_id=b.employee_id
    ;

-- MULTIPLE JOINS
SELECT *
FROM parks_departments;

SELECT * 
FROM employee_demographics AS a
JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
JOIN parks_departments AS c
	ON b.dept_id=c.department_id
    ;
    
SELECT a.employee_id,b.dept_id,a.first_name,b.last_name,c.department_name
FROM employee_demographics AS a
JOIN employee_salary AS b
	ON a.employee_id=b.employee_id
JOIN parks_departments AS c
	ON b.dept_id=c.department_id
    ;