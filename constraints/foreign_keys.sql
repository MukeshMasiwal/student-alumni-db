CREATE Table HR(
    Employee_UID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255) UNIQUE,
    employee_id INT,
    Foreign Key (employee_id) REFERENCES employees(emp_id)
)

insert into HR(Email, employee_id) values
("mukeshexample@gmail.com", 1),
("himanshuexample@gmail.com", 2),
("anujexample@gmail.com", 3);

SELECT * FROM HR;