-- Total employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Attrition count
SELECT COUNT(*) AS attrition_count
FROM employees
WHERE status = 'Resigned';

-- Average performance rating
SELECT department, AVG(performance_rating) AS avg_rating
FROM employees
GROUP BY department;
