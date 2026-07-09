-- Basic Window Function Syntax

SELECT
    column_name,
    window_function() OVER()
FROM table_name;


-- OVER()

SELECT
    emp_name,
    salary,
    SUM(salary) OVER() AS Total_Salary
FROM Employees;


-- PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    SUM(salary) OVER(PARTITION BY dept_id) AS Department_Total
FROM Employees;


-- ORDER BY

SELECT
    emp_name,
    salary,
    SUM(salary) OVER(ORDER BY salary) AS Running_Total
FROM Employees;


-- PARTITION BY + ORDER BY

SELECT
    emp_name,
    dept_id,
    salary,
    SUM(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Total
FROM Employees;