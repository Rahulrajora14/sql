-- AVG()

SELECT AVG(salary)
FROM Employees;


-- AVG() WITH WHERE

SELECT AVG(salary)
FROM Employees
WHERE dept_id = 101;


-- AVG() WITH DISTINCT

SELECT AVG(DISTINCT salary)
FROM Employees;


-- AVG() WITH GROUP BY

SELECT
    dept_id,
    AVG(salary) AS Average_Salary
FROM Employees
GROUP BY dept_id;


-- AVG() WITH HAVING

SELECT
    dept_id,
    AVG(salary) AS Average_Salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;


-- AVG() WITH JOIN

SELECT
    d.dept_name,
    AVG(e.salary) AS Average_Salary
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- AVG() WITH CASE

SELECT
    AVG(
        CASE
            WHEN salary >= 60000 THEN salary
        END
    ) AS High_Salary_Average
FROM Employees;


-- AVG() WITH EXPRESSION

SELECT AVG(salary + 5000)
FROM Employees;