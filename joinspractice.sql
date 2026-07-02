-- INNER JOIN

SELECT
    e.emp_name,
    d.dept_name,
    d.manager
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;


-- LEFT JOIN

SELECT
    e.emp_name,
    d.dept_name,
    d.manager
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;


-- RIGHT JOIN

SELECT
    e.emp_name,
    d.dept_name,
    d.manager
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;


-- FULL OUTER JOIN (PostgreSQL/SQL Server)

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
FULL OUTER JOIN Departments d
ON e.dept_id = d.dept_id;


-- FULL OUTER JOIN (MySQL)

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id

UNION

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;


-- CROSS JOIN

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
CROSS JOIN Departments d;


-- SELF JOIN

SELECT
    e.emp_name AS Employee,
    m.emp_name AS Manager
FROM Staff e
LEFT JOIN Staff m
ON e.manager_id = m.emp_id;


-- JOIN + WHERE

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 60000;


-- JOIN + GROUP BY

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS TotalEmployees
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- JOIN + HAVING

SELECT
    d.dept_name,
    AVG(e.salary) AS AverageSalary
FROM Departments d
INNER JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 60000;


-- MULTIPLE JOINS

SELECT
    e.emp_name,
    d.dept_name,
    p.project_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id
LEFT JOIN Projects p
ON e.emp_id = p.emp_id;