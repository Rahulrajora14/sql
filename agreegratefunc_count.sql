-- COUNT(*)

SELECT COUNT(*)
FROM Employees;


-- COUNT(column)

SELECT COUNT(dept_id)
FROM Employees;


-- COUNT(DISTINCT column)

SELECT COUNT(DISTINCT dept_id)
FROM Employees;


-- COUNT() WITH WHERE

SELECT COUNT(*)
FROM Employees
WHERE salary > 60000;


-- COUNT() WITH GROUP BY

SELECT
    dept_id,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY dept_id;


-- COUNT() WITH HAVING

SELECT
    dept_id,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) > 2;


-- COUNT() WITH JOIN

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS Total_Employees
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- COUNT() WITH CASE

SELECT
    COUNT(
        CASE
            WHEN salary >= 60000 THEN 1
        END
    ) AS High_Salary_Employees
FROM Employees;