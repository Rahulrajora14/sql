-- BASIC LEAD()

SELECT
    emp_name,
    salary,
    LEAD(salary) OVER(ORDER BY salary DESC) AS Next_Salary
FROM Employees;


-- LEAD() WITH PARTITION BY

SELECT
    emp_name,
    dept_id,
    salary,
    LEAD(salary) OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Next_Salary
FROM Employees;


-- LEAD() WITH OFFSET

SELECT
    emp_name,
    salary,
    LEAD(salary,2) OVER(ORDER BY salary DESC) AS Salary_Two_Rows_Ahead
FROM Employees;


-- LEAD() WITH DEFAULT VALUE

SELECT
    emp_name,
    salary,
    LEAD(salary,1,0) OVER(ORDER BY salary DESC) AS Next_Salary
FROM Employees;


-- LEAD() WITH PARTITION, OFFSET AND DEFAULT

SELECT
    emp_name,
    dept_id,
    salary,
    LEAD(salary,2,0) OVER(
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS Next_Salary
FROM Employees;


-- DIFFERENCE FROM NEXT ROW

SELECT
    emp_name,
    salary,
    LEAD(salary) OVER(ORDER BY salary DESC) - salary AS Salary_Difference
FROM Employees;


-- PERCENTAGE CHANGE TO NEXT ROW

SELECT
    emp_name,
    salary,
    ROUND(
        ((LEAD(salary) OVER(ORDER BY salary DESC) - salary)
        / salary)*100,
        2
    ) AS Percentage_Change
FROM Employees;


-- CHECK INCREASE / DECREASE

SELECT
    emp_name,
    salary,
    CASE
        WHEN LEAD(salary) OVER(ORDER BY salary DESC) > salary
            THEN 'Increased'
        WHEN LEAD(salary) OVER(ORDER BY salary DESC) < salary
            THEN 'Decreased'
        ELSE 'Same'
    END AS Salary_Status
FROM Employees;


-- MULTIPLE LEAD()

SELECT
    emp_name,
    salary,
    LEAD(salary,1) OVER(ORDER BY salary DESC) AS Next_1,
    LEAD(salary,2) OVER(ORDER BY salary DESC) AS Next_2,
    LEAD(salary,3) OVER(ORDER BY salary DESC) AS Next_3
FROM Employees;


-- NEXT EMPLOYEE NAME

SELECT
    emp_name,
    salary,
    LEAD(emp_name) OVER(ORDER BY salary DESC) AS Next_Employee
FROM Employees;


-- NEXT JOINING DATE

SELECT
    emp_name,
    joining_date,
    LEAD(joining_date) OVER(ORDER BY joining_date) AS Next_Joining_Date
FROM Employees;


-- DAYS GAP TO NEXT JOINING DATE

SELECT
    emp_name,
    joining_date,
    DATEDIFF(
        LEAD(joining_date) OVER(ORDER BY joining_date),
        joining_date
    ) AS Days_Gap
FROM Employees;


-- NEXT VALUES OF MULTIPLE COLUMNS

SELECT
    emp_name,
    salary,
    dept_id,
    LEAD(salary) OVER(ORDER BY salary DESC) AS Next_Salary,
    LEAD(dept_id) OVER(ORDER BY salary DESC) AS Next_Department
FROM Employees;