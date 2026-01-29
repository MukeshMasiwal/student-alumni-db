--AND
SELECT * FROM emploees WHERE department = "HR" AND salary > 55000;

--OR
SELECT * FROM emploees WHERE department = "IT" OR salary < 55000;

--NOT
SELECT * FROM emploees WHERE NOT department = "HR";