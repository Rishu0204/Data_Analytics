--  CASE STATEMENTS

SELECT * 
FROM employee_demographics;

-- CASE 1: LABEL ALL PEOPLE THE AGES OF AS BRACKETS:
-- 1.	< 30 => 'YOUNG'
-- 2. 	< 50 => 'OLD'
-- 3. 	> 50 => 'NEAR DEATH'
-- AND SHOW THIER NAME AND AGE

SELECT first_name,last_name,age,
CASE
	WHEN age < 30 THEN 'YOUNG'
    WHEN age < 50 THEN 'OLD'
    WHEN age > 50 THEN 'NEAR DEATH'
END  AS BRACKETS
FROM employee_demographics;

-- CASE 2: UPDATE RAISE AND BONUS OF THE EMPLOYEES
-- 1.	SALARY < 50000 => 5 % RAISE
-- 2. 	SALARY >= 50000 => 7 % RAISE
-- 3.	DEPT ID = 1,2 => 10 % BONUS

SELECT first_name ,last_name,salary,
	CASE
		WHEN salary < 50000 THEN salary * 1.05
		WHEN salary >= 50000 THEN salary * 1.07
	END AS NEW_SALARY,
	COALESCE(
		CASE
			WHEN dept_id = 4 OR dept_id = 6 THEN salary *.10
		END ,
        0
	)AS BONUS
FROM employee_salary;
