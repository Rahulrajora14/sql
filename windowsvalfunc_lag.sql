-- BASIC LAG()

SELECT
    emp_name,
    salary,
    LAG(salary) OVER(ORDER BY salary DESC) AS Previous_Salary
FROM Employees;


-- LAG() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    LAG(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Previous_Salary
FROM Employees;


-- LAG() WITH OFFSET

SELECT
    emp_name,
    salary,
    LAG(salary,2) OVER(ORDER BY salary DESC) AS Salary_Two_Rows_Back
FROM Employees;


-- LAG() WITH DEFAULT VALUE

SELECT
    emp_name,
    salary,
    LAG(salary,1,0) OVER(ORDER BY salary DESC) AS Previous_Salary
FROM Employees;


-- LAG() WITH PARTITION, OFFSET AND DEFAULT

SELECT
    emp_name,
    dept_id,
    salary,
    LAG(salary,2,0) OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Previous_Salary
FROM Employees;


-- DIFFERENCE FROM PREVIOUS ROW

SELECT
    emp_name,
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) AS Salary_Difference
FROM Employees;


-- PERCENTAGE CHANGE FROM PREVIOUS ROW

SELECT
    emp_name,
    salary,
    ROUND(
        ((salary - LAG(salary) OVER(ORDER BY salary DESC))
        / LAG(salary) OVER(ORDER BY salary DESC))*100,
        2
    ) AS Percentage_Change
FROM Employees;


-- CHECK INCREASE / DECREASE

SELECT
    emp_name,
    salary,
    CASE
        WHEN salary > LAG(salary) OVER(ORDER BY salary DESC)
            THEN 'Increased'
        WHEN salary < LAG(salary) OVER(ORDER BY salary DESC)
            THEN 'Decreased'
        ELSE 'Same'
    END AS Salary_Status
FROM Employees;


-- MULTIPLE LAG()

SELECT
    emp_name,
    salary,
    LAG(salary,1) OVER(ORDER BY salary DESC) AS Prev_1,
    LAG(salary,2) OVER(ORDER BY salary DESC) AS Prev_2,
    LAG(salary,3) OVER(ORDER BY salary DESC) AS Prev_3
FROM Employees;


-- PREVIOUS EMPLOYEE NAME

SELECT
    emp_name,
    salary,
    LAG(emp_name) OVER(ORDER BY salary DESC) AS Previous_Employee
FROM Employees;


-- PREVIOUS JOINING DATE

SELECT
    emp_name,
    joining_date,
    LAG(joining_date) OVER(ORDER BY joining_date) AS Previous_Joining_Date
FROM Employees;


-- DAYS GAP FROM PREVIOUS JOINING DATE

SELECT
    emp_name,
    joining_date,
    DATEDIFF(
        joining_date,
        LAG(joining_date) OVER(ORDER BY joining_date)
    ) AS Days_Gap
FROM Employees;


-- PREVIOUS VALUES OF MULTIPLE COLUMNS

SELECT
    emp_name,
    salary,
    dept_id,
    LAG(salary) OVER(ORDER BY salary DESC) AS Previous_Salary,
    LAG(dept_id) OVER(ORDER BY salary DESC) AS Previous_Department
FROM Employees;