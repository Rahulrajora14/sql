-- MAX()

SELECT MAX(salary)
FROM Employees;


-- MAX() WITH WHERE

SELECT MAX(salary)
FROM Employees
WHERE dept_id = 101;


-- MAX() WITH DISTINCT

SELECT MAX(DISTINCT salary)
FROM Employees;


-- MAX() WITH GROUP BY

SELECT
    dept_id,
    MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY dept_id;


-- MAX() WITH HAVING

SELECT
    dept_id,
    MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY dept_id
HAVING MAX(salary) > 70000;


-- MAX() WITH JOIN

SELECT
    d.dept_name,
    MAX(e.salary) AS Maximum_Salary
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- MAX() WITH CASE

SELECT
    MAX(
        CASE
            WHEN salary >= 60000 THEN salary
        END
    ) AS Maximum_High_Salary
FROM Employees;


-- MAX() WITH EXPRESSION

SELECT MAX(salary + 5000)
FROM Employees;