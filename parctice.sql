-- ===============================
-- SQL BASICS REVISION
-- ===============================

-- 1. CREATE TABLE
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    age INT,
    city VARCHAR(30),
    joining_date DATE
);

-- 2. INSERT DATA
INSERT INTO Employees VALUES
(1,'Rahul','IT',60000,22,'Delhi','2023-01-15'),
(2,'Amit','HR',45000,28,'Mumbai','2022-06-20'),
(3,'Neha','IT',70000,25,'Delhi','2021-11-10'),
(4,'Priya','Finance',65000,30,'Pune','2020-09-18'),
(5,'Karan','HR',50000,27,'Mumbai','2023-03-12'),
(6,'Anjali','Finance',80000,32,'Delhi','2019-07-25'),
(7,'Rohit','IT',55000,24,'Jaipur','2024-02-01');

-- ===============================
-- SELECT
-- ===============================

SELECT * FROM Employees;

SELECT name, salary
FROM Employees;

SELECT DISTINCT department
FROM Employees;

-- ===============================
-- WHERE
-- ===============================

SELECT *
FROM Employees
WHERE salary > 60000;

SELECT *
FROM Employees
WHERE department = 'IT';

SELECT *
FROM Employees
WHERE age BETWEEN 25 AND 30;

SELECT *
FROM Employees
WHERE city IN ('Delhi','Mumbai');

SELECT *
FROM Employees
WHERE name LIKE 'R%';

-- ===============================
-- ORDER BY
-- ===============================

SELECT *
FROM Employees
ORDER BY salary DESC;

SELECT *
FROM Employees
ORDER BY department, salary DESC;

-- ===============================
-- AGGREGATE FUNCTIONS
-- ===============================

SELECT COUNT(*) AS TotalEmployees
FROM Employees;

SELECT AVG(salary) AS AverageSalary
FROM Employees;

SELECT MAX(salary) AS HighestSalary
FROM Employees;

SELECT MIN(age) AS YoungestEmployee
FROM Employees;

SELECT SUM(salary) AS TotalSalary
FROM Employees;

-- ===============================
-- GROUP BY
-- ===============================

SELECT department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY department;

SELECT department, AVG(salary) AS AverageSalary
FROM Employees
GROUP BY department;

SELECT city, MAX(salary) AS HighestSalary
FROM Employees
GROUP BY city;

-- ===============================
-- HAVING
-- ===============================

SELECT department, AVG(salary) AS AverageSalary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- ===============================
-- UPDATE
-- ===============================

UPDATE Employees
SET salary = 75000
WHERE emp_id = 1;

-- ===============================
-- DELETE
-- ===============================

DELETE FROM Employees
WHERE emp_id = 7;

-- Reinsert deleted record for further practice
INSERT INTO Employees
VALUES (7,'Rohit','IT',55000,24,'Jaipur','2024-02-01');

-- ===============================
-- INSERT
-- ===============================

INSERT INTO Employees
VALUES (8,'Sanya','IT',72000,26,'Delhi','2024-06-15');

-- ===============================
-- LIMIT (MySQL)
-- ===============================

SELECT *
FROM Employees
LIMIT 3;

-- ===============================
-- CASE
-- ===============================

SELECT
    name,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Level
FROM Employees;

-- ===============================
-- SUBQUERY
-- ===============================

SELECT *
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);

-- ===============================
-- SECOND TABLE
-- ===============================

CREATE TABLE Departments (
    department VARCHAR(30),
    manager VARCHAR(50)
);

INSERT INTO Departments VALUES
('IT','Rajesh'),
('HR','Sonia'),
('Finance','Arun');

-- ===============================
-- INNER JOIN
-- ===============================

SELECT
    e.name,
    e.department,
    d.manager
FROM Employees e
INNER JOIN Departments d
ON e.department = d.department;

-- ===============================
-- LEFT JOIN
-- ===============================

SELECT
    e.name,
    d.manager
FROM Employees e
LEFT JOIN Departments d
ON e.department = d.department;

-- ===============================
-- NESTED QUERY
-- ===============================

SELECT *
FROM Employees
WHERE department =
(
    SELECT department
    FROM Employees
    WHERE name = 'Rahul'
);

-- ===============================
-- STRING FUNCTIONS
-- ===============================

SELECT UPPER(name)
FROM Employees;

SELECT LOWER(name)
FROM Employees;

SELECT LENGTH(name)
FROM Employees;

-- ===============================
-- DATE FUNCTIONS
-- ===============================

SELECT *
FROM Employees
WHERE joining_date > '2022-01-01';

-- ===============================
-- PRACTICE QUESTIONS
-- ===============================

-- 1. Display all employees.
-- 2. Display employee names and salaries.
-- 3. Find employees earning more than 60,000.
-- 4. Find employees from Delhi.
-- 5. Sort employees by salary (highest first).
-- 6. Count total employees.
-- 7. Find average salary.
-- 8. Find highest salary.
-- 9. Find average salary department-wise.
-- 10. Find departments with more than one employee.
-- 11. Find employees earning above average salary.
-- 12. Show top 3 highest-paid employees.
-- 13. Increase HR salary by 10%.
-- 14. Delete employees earning less than 50,000.
-- 15. Display employee name with department manager.