-- UPPER()

SELECT UPPER(emp_name)
FROM Employees;


-- LOWER()

SELECT LOWER(emp_name)
FROM Employees;


-- LENGTH()

SELECT emp_name,
       LENGTH(emp_name)
FROM Employees;


-- CONCAT()

SELECT CONCAT(emp_name, ' works in ', dept_id) AS Employee_Details
FROM Employees;


-- SUBSTRING()

SELECT emp_name,
       SUBSTRING(emp_name, 1, 3) AS Short_Name
FROM Employees;


-- LEFT()

SELECT emp_name,
       LEFT(emp_name, 2) AS First_Two
FROM Employees;


-- RIGHT()

SELECT emp_name,
       RIGHT(emp_name, 2) AS Last_Two
FROM Employees;


-- TRIM()

SELECT TRIM('   Rahul Rajora   ') AS Trimmed_Text;


-- LTRIM()

SELECT LTRIM('    Rahul');


-- RTRIM()

SELECT RTRIM('Rahul     ');


-- REPLACE()

SELECT REPLACE(emp_name, 'a', '@')
FROM Employees;


-- REVERSE()

SELECT REVERSE(emp_name)
FROM Employees;


-- CHAR_LENGTH()

SELECT emp_name,
       CHAR_LENGTH(emp_name)
FROM Employees;


-- POSITION()

SELECT POSITION('a' IN emp_name)
FROM Employees;


-- LOCATE()

SELECT LOCATE('a', emp_name)
FROM Employees;


-- INSTR()

SELECT INSTR(emp_name, 'a')
FROM Employees;


-- LPAD()

SELECT LPAD(emp_name, 12, '*')
FROM Employees;


-- RPAD()

SELECT RPAD(emp_name, 12, '*')
FROM Employees;


-- REPEAT()

SELECT REPEAT('SQL ', 3);


-- ASCII()

SELECT ASCII('A');


-- CHAR()

SELECT CHAR(65);


-- FORMAT()

SELECT FORMAT(salary, 2)
FROM Employees;