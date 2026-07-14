-- DENSE_RANK()

SELECT
    emp_name,
    salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS Dense_Rank_No
FROM Employees;


-- DENSE_RANK() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    DENSE_RANK() OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Dense_Rank
FROM Employees;


-- TOP 3 DENSE RANKS

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS Dense_Rank_No
    FROM Employees
) AS Ranked
WHERE Dense_Rank_No <= 3;


-- HIGHEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        DENSE_RANK() OVER(
            PARTITION BY dept_id
            ORDER BY salary DESC
        ) AS Department_Dense_Rank
    FROM Employees
) AS Ranked
WHERE Department_Dense_Rank = 1;


-- LOWEST PAID EMPLOYEE IN EACH DEPARTMENT

SELECT *
FROM (
    SELECT
        emp_name,
        dept_id,
        salary,
        DENSE_RANK() OVER(
            PARTITION BY dept_id
            ORDER BY salary
        ) AS Department_Dense_Rank
    FROM Employees
) AS Ranked
WHERE Department_Dense_Rank = 1;