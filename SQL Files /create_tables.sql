CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    role VARCHAR(50),
    join_date DATE,
    performance_rating INT,
    status VARCHAR(20)
);

CREATE TABLE recruitment (
    candidate_id VARCHAR(10),
    department VARCHAR(50),
    status VARCHAR(20),
    hire_date DATE
);
