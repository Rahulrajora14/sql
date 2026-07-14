-- NTILE(2)

SELECT
    emp_name,
    salary,
    NTILE(2) OVER(ORDER BY salary DESC) AS Tile_No
FROM Employees;


-- NTILE(3)

SELECT
    emp_name,
    salary,
    NTILE(3) OVER(ORDER BY salary DESC) AS Tile_No
FROM Employees;


-- NTILE(4)

SELECT
    emp_name,
    salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS Tile_No
FROM Employees;


-- NTILE() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    NTILE(2) OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Department_Tile
FROM Employees;


-- TOP HALF OF EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        NTILE(2) OVER(ORDER BY salary DESC) AS Tile_No
    FROM Employees
) AS Ranked
WHERE Tile_No = 1;


-- BOTTOM HALF OF EMPLOYEES

SELECT *
FROM (
    SELECT
        emp_name,
        salary,
        NTILE(2) OVER(ORDER BY salary DESC) AS Tile_No
    FROM Employees
) AS Ranked
WHERE Tile_No = 2;