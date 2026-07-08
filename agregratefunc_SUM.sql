-- SUM()

SELECT SUM(salary)
FROM Employees;


-- SUM() WITH WHERE

SELECT SUM(salary)
FROM Employees
WHERE dept_id = 101;


-- SUM() WITH DISTINCT

SELECT SUM(DISTINCT salary)
FROM Employees;


-- SUM() WITH GROUP BY

SELECT
    dept_id,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY dept_id;


-- SUM() WITH HAVING

SELECT
    dept_id,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY dept_id
HAVING SUM(salary) > 150000;


-- SUM() WITH JOIN

SELECT
    d.dept_name,
    SUM(e.salary) AS Total_Salary
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- SUM() WITH CASE

SELECT
    SUM(
        CASE
            WHEN salary >= 60000 THEN salary
            ELSE 0
        END
    ) AS High_Salary_Total
FROM Employees;


-- SUM() WITH EXPRESSION

SELECT SUM(salary + 5000)
FROM Employees;