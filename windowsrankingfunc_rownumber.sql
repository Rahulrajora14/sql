-- ROW_NUMBER()

SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS Row_Num
FROM Employees;


-- ROW_NUMBER() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Row_Num
FROM Employees;


-- TOP 3 HIGHEST PAID EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS Row_Num
    FROM Employees
) AS Ranked
WHERE Row_Num <= 3;


-- HIGHEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        ROW_NUMBER() OVER(
            PARTITION BY dept_id
            ORDER BY salary DESC
        ) AS Row_Num
    FROM Employees
) AS Ranked
WHERE Row_Num = 1;


-- LOWEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        ROW_NUMBER() OVER(
            PARTITION BY dept_id
            ORDER BY salary
        ) AS Row_Num
    FROM Employees
) AS Ranked
WHERE Row_Num = 1;