-- Employee Database Analysis

CREATE TABLE employees (
  emp_id INT,
  name VARCHAR(50),
  dept VARCHAR(50),
  salary INT
);

INSERT INTO employees VALUES
(1,'Ravi','IT',60000),
(2,'Sita','HR',40000),
(3,'Arjun','IT',75000),
(4,'Meena','Finance',50000),
(5,'Kiran','IT',45000);

-- Top paid employees
SELECT * FROM employees
ORDER BY salary DESC;

-- Average salary per department
SELECT dept, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept;

-- Employees earning above average
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
