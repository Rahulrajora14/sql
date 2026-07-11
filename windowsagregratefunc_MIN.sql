-- MIN() OVER()

SELECT
    emp_name,
    salary,
    MIN(salary) OVER() AS Minimum_Salary
FROM Employees;


-- MIN() OVER(PARTITION BY)

SELECT
    emp_name,
    dept_id,
    salary,
    MIN(salary) OVER(PARTITION BY dept_id) AS Department_Minimum
FROM Employees;


-- MIN() OVER(ORDER BY)

SELECT
    emp_name,
    salary,
    MIN(salary) OVER(ORDER BY salary) AS Running_Minimum
FROM Employees;


-- MIN() OVER(PARTITION BY ... ORDER BY)

SELECT
    emp_name,
    dept_id,
    salary,
    MIN(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Minimum
FROM Employees;


-- MIN(DISTINCT) OVER()
-- (Not supported in MySQL)

SELECT
    emp_name,
    salary,
    MIN(DISTINCT salary) OVER() AS Unique_Minimum
FROM Employees;


-- MIN() OVER() WITH EXPRESSION

SELECT
    emp_name,
    salary,
    MIN(salary + 5000) OVER() AS Minimum_With_Bonus
FROM Employees;