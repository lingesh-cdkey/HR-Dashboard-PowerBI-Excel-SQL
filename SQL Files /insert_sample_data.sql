-- ==============================
-- INSERT EMPLOYEE DATA
-- ==============================

INSERT INTO employees VALUES
(101, 'Arun Kumar', 'IT', 'Software Engineer', '2022-06-10', 4, 'Active'),
(102, 'Priya S', 'HR', 'HR Executive', '2021-03-15', 3, 'Active'),
(103, 'Rahul M', 'Finance', 'Analyst', '2020-11-01', 2, 'Resigned'),
(104, 'Sneha R', 'IT', 'QA Engineer', '2023-01-20', 5, 'Active'),
(105, 'Karthik V', 'Sales', 'Sales Executive', '2019-08-05', 3, 'On Notice');

-- ==============================
-- INSERT ATTENDANCE DATA
-- ==============================

INSERT INTO attendance (emp_id, month, attendance_percentage) VALUES
(101, 'Jan', 96),
(102, 'Jan', 92),
(103, 'Jan', 85),
(104, 'Jan', 98),
(105, 'Jan', 88);

-- ==============================
-- INSERT PERFORMANCE DATA
-- ==============================

INSERT INTO performance (emp_id, review_year, rating) VALUES
(101, 2024, 4),
(102, 2024, 3),
(103, 2024, 2),
(104, 2024, 5),
(105, 2024, 3);

-- ==============================
-- INSERT RECRUITMENT DATA
-- ==============================

INSERT INTO recruitment VALUES
('C01', 'IT', 'Hired', '2024-01-15'),
('C02', 'HR', 'Interviewed', NULL),
('C03', 'Sales', 'Hired', '2024-02-10'),
('C04', 'Finance', 'Rejected', NULL);
