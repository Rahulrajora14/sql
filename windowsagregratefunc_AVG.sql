-- AVG() OVER()

SELECT
    emp_name,
    salary,
    AVG(salary) OVER() AS Average_Salary
FROM Employees;


-- AVG() OVER(PARTITION BY)

SELECT
    emp_name,
    dept_id,
    salary,
    AVG(salary) OVER(PARTITION BY dept_id) AS Department_Average
FROM Employees;


-- AVG() OVER(ORDER BY)

SELECT
    emp_name,
    salary,
    AVG(salary) OVER(ORDER BY salary) AS Running_Average
FROM Employees;


-- AVG() OVER(PARTITION BY ... ORDER BY)

SELECT
    emp_name,
    dept_id,
    salary,
    AVG(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary
    ) AS Department_Running_Average
FROM Employees;


-- AVG(DISTINCT) OVER()
-- (Not supported in MySQL)

SELECT
    emp_name,
    salary,
    AVG(DISTINCT salary) OVER() AS Unique_Average
FROM Employees;


-- AVG() OVER() WITH EXPRESSION

SELECT
    emp_name,
    salary,
    AVG(salary + 5000) OVER() AS Average_With_Bonus
FROM Employees;