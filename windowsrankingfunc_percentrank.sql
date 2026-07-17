-- PERCENT_RANK()

SELECT
    emp_name,
    salary,
    PERCENT_RANK() OVER(ORDER BY salary DESC) AS Percent_Rank
FROM Employees;


-- PERCENT_RANK() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    PERCENT_RANK() OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Percent_Rank
FROM Employees;


-- TOP 25% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        PERCENT_RANK() OVER(ORDER BY salary DESC) AS Percent_Rank
    FROM Employees
) AS Ranked
WHERE Percent_Rank <= 0.25;


-- TOP 50% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        PERCENT_RANK() OVER(ORDER BY salary DESC) AS Percent_Rank
    FROM Employees
) AS Ranked
WHERE Percent_Rank <= 0.50;


-- BOTTOM 50% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        PERCENT_RANK() OVER(ORDER BY salary DESC) AS Percent_Rank
    FROM Employees
) AS Ranked
WHERE Percent_Rank > 0.50;