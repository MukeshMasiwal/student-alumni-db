--In the table employees, the emp_id column is defined as the PRIMARY KEY, ensuring that each employee has a unique identifier.
INSERT INTO employees (UID, emp_name, department, salary) VALUES
('U123', 'mukesh', 'HR', 60000.00),
('U124', 'himanshu', 'IT', 75000.00),
('U125', 'anuj', 'Finance', 50000.00);

TRUNCATE TABLE employees; --used to remove all records from the employees table