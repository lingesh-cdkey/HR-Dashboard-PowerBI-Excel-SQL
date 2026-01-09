-- ==============================
-- HR DATABASE TABLE CREATION
-- ==============================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    role VARCHAR(50),
    join_date DATE,
    performance_rating INT CHECK (performance_rating BETWEEN 1 AND 5),
    status VARCHAR(20) CHECK (status IN ('Active', 'Resigned', 'On Notice'))
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    month VARCHAR(15),
    attendance_percentage INT CHECK (attendance_percentage BETWEEN 0 AND 100),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE performance (
    performance_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    review_year INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE recruitment (
    candidate_id VARCHAR(10) PRIMARY KEY,
    department VARCHAR(50),
    status VARCHAR(20) CHECK (status IN ('Applied', 'Interviewed', 'Hired', 'Rejected')),
    hire_date DATE
);
