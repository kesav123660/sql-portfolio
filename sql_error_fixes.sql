-- Common SQL Mistakes & Fixes

-- ❌ Wrong
SELECT * FROM employees WHERE dept='IT', salary > 50000;

-- ✅ Correct
SELECT * FROM employees 
WHERE dept='IT' AND salary > 50000;

-- ❌ Wrong
SELECT max(salary) WHERE dept='IT' FROM employees;

-- ✅ Correct
SELECT MAX(salary) 
FROM employees
WHERE dept='IT';
