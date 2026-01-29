CREATE Table emploees(                             --We will use this table for all the opearators
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(255),
    salary INT,
    department VARCHAR(255)
);
insert into emploees(emp_name, salary, department) values
("Mukesh", 50000, "IT"),
("Himanshu", 60000, "HR"),
("Anuj", 55000, "HR"),
("Amit",NULL,"IT");

--addition
SELECT emp_name, salary, salary + 5000 AS New_Salary FROM emploees

--subtraction
SELECT emp_name, salary, salary - 2000 AS Reduced_Salary FROM emploees

--multiplication
SELECT emp_name, salary, salary * 2 AS Double_Salary FROM emploees;

