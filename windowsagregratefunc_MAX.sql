-- MAX() OVER()

SELECT
    emp_name,
    salary,
    MAX(salary) OVER() AS Maximum_Salary
FROM Employees;


-- MAX() OVER(PARTITION BY)

SELECT
    emp_name,
    dept_id,
    salary,
    MAX(salary) OVER(PARTITION BY dept_id) AS Department_Maximum
FROM Employees;


-- MAX() OVER(ORDER BY)

SELECT
    emp_name,
    salary,
    MAX(salary) OVER(ORDER BY salary) AS Running_Maximum
FROM Employees;


-- MAX() OVER(PARTITION BY ... ORDER BY)

SELECT
    emp_name,
    dept_id,
    salary,
    MAX(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Maximum
FROM Employees;


-- MAX(DISTINCT) OVER()
-- (Not supported in MySQL)

SELECT
    emp_name,
    salary,
    MAX(DISTINCT salary) OVER() AS Unique_Maximum
FROM Employees;


-- MAX() OVER() WITH EXPRESSION

SELECT
    emp_name,
    salary,
    MAX(salary + 5000) OVER() AS Maximum_With_Bonus
FROM Employees;