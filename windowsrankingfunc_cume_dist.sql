-- CUME_DIST()

SELECT
    emp_name,
    salary,
    CUME_DIST() OVER(ORDER BY salary DESC) AS Cumulative_Distribution
FROM Employees;


-- CUME_DIST() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    CUME_DIST() OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Cume_Dist
FROM Employees;


-- TOP 50% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        CUME_DIST() OVER(ORDER BY salary DESC) AS Cume_Dist
    FROM Employees
) AS Ranked
WHERE Cume_Dist <= 0.5;


-- BOTTOM 50% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        CUME_DIST() OVER(ORDER BY salary DESC) AS Cume_Dist
    FROM Employees
) AS Ranked
WHERE Cume_Dist > 0.5;


-- TOP 25% EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        CUME_DIST() OVER(ORDER BY salary DESC) AS Cume_Dist
    FROM Employees
) AS Ranked
WHERE Cume_Dist <= 0.25;