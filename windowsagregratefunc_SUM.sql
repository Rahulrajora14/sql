-- SUM() OVER()

SELECT
    emp_name,
    salary,
    SUM(salary) OVER() AS Total_Salary
FROM Employees;


-- SUM() OVER(PARTITION BY)

SELECT
    emp_name,
    dept_id,
    salary,
    SUM(salary) OVER(PARTITION BY dept_id) AS Department_Total
FROM Employees;


-- SUM() OVER(ORDER BY)

SELECT
    emp_name,
    salary,
    SUM(salary) OVER(ORDER BY salary) AS Running_Total
FROM Employees;


-- SUM() OVER(PARTITION BY ... ORDER BY)

SELECT
    emp_name,
    dept_id,
    salary,
    SUM(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Total
FROM Employees;


-- SUM(DISTINCT) OVER()
-- (Not supported in MySQL)

SELECT
    emp_name,
    salary,
    SUM(DISTINCT salary) OVER() AS Unique_Total
FROM Employees;


-- SUM() OVER() WITH EXPRESSION

SELECT
    emp_name,
    salary,
    SUM(salary + 5000) OVER() AS Total_With_Bonus
FROM Employees;