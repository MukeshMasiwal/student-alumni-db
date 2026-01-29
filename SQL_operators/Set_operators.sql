CREATE TABLE emploees2(                            
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(255),
    salary INT,
    department VARCHAR(255)
);
INSERT INTO emploees2(emp_name, salary, department) VALUES
("Neha", 52000, "IT"),
("Sonia", 58000, "HR"),
("Vikram", 60000, "Finance"),
("Amit",NULL,"IT");

--UNION
SELECT emp_name, salary, department FROM emploees
UNION
SELECT emp_name, salary, department FROM emploees2;

--UNION ALL
SELECT emp_name, salary, department FROM emploees
UNION ALL
SELECT emp_name, salary, department FROM emploees2;

--INTERSECT
SELECT emp_name, salary, department FROM emploees
INTERSECT
SELECT emp_name, salary, department FROM emploees2;

--MINUS
SELECT emp_name, salary, department FROM emploees
MINUS
SELECT emp_name, salary, department FROM emploees2;