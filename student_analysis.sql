-- Student Performance Analysis

CREATE TABLE students (
  id INT,
  name VARCHAR(50),
  marks INT
);

INSERT INTO students VALUES
(1,'Rahul',85),
(2,'Priya',92),
(3,'Amit',60),
(4,'Sneha',75),
(5,'Kavya',88);

-- Top students
SELECT * FROM students
ORDER BY marks DESC;

-- Average marks
SELECT AVG(marks) FROM students;

-- Students above average
SELECT * FROM students
WHERE marks > (SELECT AVG(marks) FROM students);
