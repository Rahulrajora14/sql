-- RANK()

SELECT
    emp_name,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS Rank_No
FROM Employees;


-- RANK() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    RANK() OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Rank
FROM Employees;


-- TOP 3 RANKS

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        RANK() OVER(ORDER BY salary DESC) AS Rank_No
    FROM Employees
) AS Ranked
WHERE Rank_No <= 3;


-- HIGHEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        RANK() OVER(
            PARTITION BY dept_id
            ORDER BY salary DESC
        ) AS Department_Rank
    FROM Employees
) AS Ranked
WHERE Department_Rank = 1;


-- LOWEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        RANK() OVER(
            PARTITION BY dept_id
            ORDER BY salary
        ) AS Department_Rank
    FROM Employees
) AS Ranked
WHERE Department_Rank = 1;