DROP TABLE IF EXISTS Students_A;
DROP TABLE IF EXISTS Students_B;

CREATE TABLE Students_A (
    student_id INT,
    student_name VARCHAR(50)
);

CREATE TABLE Students_B (
    student_id INT,
    student_name VARCHAR(50)
);

INSERT INTO Students_A VALUES
(1, 'Rahul'),
(2, 'Amit'),
(3, 'Neha'),
(4, 'Priya');

INSERT INTO Students_B VALUES
(3, 'Neha'),
(4, 'Priya'),
(5, 'Karan'),
(6, 'Anjali');


-- UNION

SELECT *
FROM Students_A

UNION

SELECT *
FROM Students_B;


-- UNION ALL

SELECT *
FROM Students_A

UNION ALL

SELECT *
FROM Students_B;


-- INTERSECT

SELECT *
FROM Students_A

INTERSECT

SELECT *
FROM Students_B;


-- EXCEPT (SQL Server / PostgreSQL)

SELECT *
FROM Students_A

EXCEPT

SELECT *
FROM Students_B;


-- MINUS (Oracle)

SELECT *
FROM Students_A

MINUS

SELECT *
FROM Students_B;


-- INTERSECT (MySQL)

SELECT *
FROM Students_A
WHERE student_id IN (
    SELECT student_id
    FROM Students_B
);


-- EXCEPT (MySQL)

SELECT *
FROM Students_A
WHERE student_id NOT IN (
    SELECT student_id
    FROM Students_B
);