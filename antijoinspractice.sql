-- LEFT ANTI JOIN
-- Employees who do NOT have a department

SELECT
    e.emp_name,
    e.dept_id
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- RIGHT ANTI JOIN
-- Departments with NO employees

SELECT
    d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;


-- ANTI JOIN USING NOT EXISTS
-- Employees who do NOT have a department

SELECT
    e.emp_name,
    e.dept_id
FROM Employees e
WHERE NOT EXISTS (
    SELECT *
    FROM Departments d
    WHERE d.dept_id = e.dept_id
);


-- ANTI JOIN USING NOT IN
-- Employees who do NOT have a department

SELECT
    emp_name,
    dept_id
FROM Employees
WHERE dept_id NOT IN (
    SELECT dept_id
    FROM Departments
);