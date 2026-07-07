-- IFNULL()

SELECT emp_name,
       IFNULL(dept_id, 0) AS Department
FROM Employees;


-- COALESCE()

SELECT emp_name,
       COALESCE(dept_id, 0) AS Department
FROM Employees;


-- COALESCE() WITH MULTIPLE VALUES

SELECT emp_name,
       COALESCE(NULL, NULL, dept_id, salary, 0)
FROM Employees;


-- NULLIF()

SELECT NULLIF(100, 100);

SELECT NULLIF(100, 50);


-- IF()

SELECT emp_name,
       IF(salary >= 60000, 'High', 'Low') AS Salary_Status
FROM Employees;


-- CASE

SELECT emp_name,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS Salary_Level
FROM Employees;