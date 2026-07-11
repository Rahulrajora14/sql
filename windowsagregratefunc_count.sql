-- COUNT() OVER()

SELECT
    emp_name,
    salary,
    COUNT(*) OVER() AS Total_Employees
FROM Employees;


-- COUNT(column) OVER()

SELECT
    emp_name,
    dept_id,
    COUNT(dept_id) OVER() AS Department_Count
FROM Employees;


-- COUNT() OVER(PARTITION BY)

SELECT
    emp_name,
    dept_id,
    COUNT(*) OVER(PARTITION BY dept_id) AS Employees_In_Department
FROM Employees;


-- COUNT() OVER(ORDER BY)

SELECT
    emp_name,
    salary,
    COUNT(*) OVER(ORDER BY salary) AS Running_Count
FROM Employees;


-- COUNT() OVER(PARTITION BY ... ORDER BY)

SELECT
    emp_name,
    dept_id,
    salary,
    COUNT(*) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Count
FROM Employees;


-- COUNT(DISTINCT) OVER()
-- (Not supported in MySQL)

SELECT
    emp_name,
    dept_id,
    COUNT(DISTINCT dept_id) OVER() AS Total_Departments
FROM Employees;