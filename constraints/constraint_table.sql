-- Active: 1769529992126@@127.0.0.1@3306@first
CREATE Table employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    UID VARCHAR(255) UNIQUE,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary >= 0)
);
SELECT * FROM employees;