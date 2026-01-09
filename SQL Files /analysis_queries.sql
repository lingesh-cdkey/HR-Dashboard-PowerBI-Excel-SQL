-- ==============================
-- BASIC HR METRICS
-- ==============================

-- Total employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Active employees
SELECT COUNT(*) AS active_employees
FROM employees
WHERE status = 'Active';

-- Attrition count
SELECT COUNT(*) AS attrition_count
FROM employees
WHERE status = 'Resigned';

-- ==============================
-- DEPARTMENT ANALYSIS
-- ==============================

-- Employees by department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;

-- Average performance by department
SELECT department, ROUND(AVG(performance_rating), 2) AS avg_performance
FROM employees
GROUP BY department;

-- ==============================
-- PERFORMANCE INSIGHTS
-- ==============================

-- High performers (rating >= 4)
SELECT emp_id, name, department, performance_rating
FROM employees
WHERE performance_rating >= 4;

-- Year-wise performance trend
SELECT review_year, AVG(rating) AS avg_rating
FROM performance
GROUP BY review_year;

-- ==============================
-- ATTENDANCE ANALYSIS
-- ==============================

-- Low attendance employees (< 90%)
SELECT e.name, a.attendance_percentage
FROM employees e
JOIN attendance a ON e.emp_id = a.emp_id
WHERE a.attendance_percentage < 90;

-- ==============================
-- ATTRITION ANALYSIS
-- ==============================

-- Attrition by department
SELECT department, COUNT(*) AS attrition_count
FROM employees
WHERE status = 'Resigned'
GROUP BY department;

-- ==============================
-- RECRUITMENT ANALYSIS
-- ==============================

-- Hiring status count
SELECT status, COUNT(*) AS count
FROM recruitment
GROUP BY status;

-- Department-wise hiring
SELECT department, COUNT(*) AS hired_count
FROM recruitment
WHERE status = 'Hired'
GROUP BY department;

-- ==============================
-- JOIN QUERY (REAL WORLD)
-- ==============================

-- Employee performance with attendance
SELECT 
    e.name,
    e.department,
    p.rating AS performance_rating,
    a.attendance_percentage
FROM employees e
JOIN performance p ON e.emp_id = p.emp_id
JOIN attendance a ON e.emp_id = a.emp_id;
