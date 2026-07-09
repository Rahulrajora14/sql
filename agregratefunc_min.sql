-- MIN()

SELECT MIN(salary)
FROM Employees;


-- MIN() WITH WHERE

SELECT MIN(salary)
FROM Employees
WHERE dept_id = 101;


-- MIN() WITH DISTINCT

SELECT MIN(DISTINCT salary)
FROM Employees;


-- MIN() WITH GROUP BY

SELECT
    dept_id,
    MIN(salary) AS Minimum_Salary
FROM Employees
GROUP BY dept_id;


-- MIN() WITH HAVING

SELECT
    dept_id,
    MIN(salary) AS Minimum_Salary
FROM Employees
GROUP BY dept_id
HAVING MIN(salary) > 50000;


-- MIN() WITH JOIN

SELECT
    d.dept_name,
    MIN(e.salary) AS Minimum_Salary
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- MIN() WITH CASE

SELECT
    MIN(
        CASE
            WHEN salary >= 60000 THEN salary
        END
    ) AS Minimum_High_Salary
FROM Employees;


-- MIN() WITH EXPRESSION

SELECT MIN(salary + 5000)
FROM Employees;