-- SIMPLE CASE

SELECT
    emp_name,
    dept_id,
    CASE dept_id
        WHEN 101 THEN 'IT'
        WHEN 102 THEN 'HR'
        WHEN 103 THEN 'Finance'
        WHEN 104 THEN 'Marketing'
        WHEN 105 THEN 'Sales'
        ELSE 'Unknown'
    END AS Department
FROM Employees;


-- SEARCHED CASE

SELECT
    emp_name,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'Excellent'
        WHEN salary >= 60000 THEN 'Good'
        WHEN salary >= 50000 THEN 'Average'
        ELSE 'Below Average'
    END AS Salary_Status
FROM Employees;


-- CASE WITH NULL

SELECT
    emp_name,
    CASE
        WHEN dept_id IS NULL THEN 'No Department'
        ELSE 'Department Assigned'
    END AS Department_Status
FROM Employees;


-- CASE IN ORDER BY

SELECT
    emp_name,
    salary
FROM Employees
ORDER BY
CASE
    WHEN salary >= 70000 THEN 1
    WHEN salary >= 50000 THEN 2
    ELSE 3
END;


-- CASE IN UPDATE

UPDATE Employees
SET salary =
CASE
    WHEN dept_id = 101 THEN salary + 5000
    WHEN dept_id = 102 THEN salary + 3000
    ELSE salary
END;


-- CASE WITH AGGREGATE FUNCTION

SELECT
    emp_name,
    CASE
        WHEN salary > (SELECT AVG(salary) FROM Employees)
        THEN 'Above Average'
        ELSE 'Below Average'
    END AS Salary_Level
FROM Employees;