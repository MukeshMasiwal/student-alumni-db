--=+-- Increment salary by 5000 for employees in the IT department
UPDATE emploees
SET salary = salary + 5000
WHERE department = "IT";

--=--- Decrease salary by 3000 for employees in the HR department
UPDATE emploees
SET salary = salary - 3000
WHERE department = "HR";