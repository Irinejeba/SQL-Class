CREATE database College_db;
USE College_db;

CREATE TABLE Students (
Student_id INT PRIMARY KEY,
Name VARCHAR(100),
Age INT,
Course VARCHAR(50)
);
SELECT * FROM Students;
INSERT INTO Students (Student_id,Name,Age,Course)VALUES
(1,'Venkat',25,'GenAI'),
(2,'Priya',26,'Java'),
(3,'Nataraj',23,'SQL'),
(4,'Pravina',20,'ML');

DELETE FROM Students WHERE Student_id IS NULL;
SELECT * FROM Students;
INSERT INTO Students (Student_id,Name,Age, Course) VALUES
(5,'Irine',20,'Gen AI'),
(6,'Albert',22,'Gen AI'),
(7,'Christopher',25,'Gen AI'),
(8,'Dora',21,'ETL'),
(9,'Jeffrey',21,'Python');
SELECT * FROM Students;

ALTER TABLE Students ADD COLUMN City VARCHAR(50);
UPDATE Students SET City = 'Chennai' WHERE Student_id = 1;
UPDATE Students SET City = 'Madurai' WHERE Student_id = 2;
UPDATE Students SET City = 'Kovai' WHERE Student_id = 3;
UPDATE Students SET City = 'Trichy' WHERE Student_id = 4;
UPDATE Students SET City = 'Salem' WHERE Student_id = 5;
UPDATE Students SET City = 'Chennai' WHERE Student_id = 6;
UPDATE Students SET City = 'Salem' WHERE Student_id = 7;
UPDATE Students SET City = 'Salem' WHERE Student_id = 8;
UPDATE Students SET City = 'Trichy' WHERE Student_id = 9;
SELECT * FROM Students;

INSERT INTO Students (Student_id, Name, Age) VALUES (10,'Suseela',40);
-- Fixed Version of Suseela insert
UPDATE Students SET Course ='Data Science', City='Chennai' WHERE Student_id =10;
UPDATE Students SET Age=19 WHERE Student_id=1;
UPDATE Students SET Age=18 WHERE Student_id=4;
UPDATE Students SET Name='Bensam' WHERE Student_id=3;
SELECT Name,Course, Age From students WHERE age<21;
SELECT Name, Age FROM Students;
SELECT * FROM Students WHERE Course='Java';
SELECT * FROM Students ORDER BY Age ASC;
SELECT DISTINCT Age, Course FROM Students;
SELECT * FROM Students LIMIT 5;
SELECT * FROM Students WHERE City='Trichy';
SELECT * FROM Students WHERE Age >=19;
SELECT * FROM Students WHERE Course='Python';
SELECT * FROM Students WHERE City='Chennai' AND Course='Gen AI';
SELECT * FROM Students WHERE City='Chennai' AND Age <20;
SELECT * FROM Students WHERE City='Chennai' OR City='Erode';
SELECT * FROM Students WHERE Age BETWEEN 25 AND 29;
SELECT * FROM Students WHERE Course IN ('Python','Java');
SELECT * FROM Students WHERE name LIKE 'A%';
SELECT * FROM Students WHERE City IS NULL;
SELECT * FROM Students;



