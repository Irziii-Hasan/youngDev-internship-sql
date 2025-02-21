INSERT INTO Employees (name, position, salary, department_id) VALUES
('Zareen Khan', 'Data Analyst', 68000, NULL),
('Insha Farooqui', 'UI/UX Designer', 62000, NULL);

INSERT INTO Employee (name, position, salary,department_id) VALUES 
("Amna Azeem", 'IT Support',48000.00,2);

INSERT INTO Employees (name, position, salary, department_id) VALUES
('Ahmed Khan', 'HR Executive', 47000, 1),
('Ayesha Ali', 'HR Coordinator', 52000, 1),
('Hassan Raza', 'Software Developer', 85000, 2),
('Fatima Noor', 'IT Specialist', 78000, 2),
('Bilal Ahmed', 'IT Support', 50000, 2),
('Zainab Sheikh', 'Financial Analyst', 70000, 3),
('Hamza Tariq', 'Finance Officer', 60000, 3),
('Sara Hussain', 'Marketing Manager', 68000, 4),
('Usman Javed', 'Marketing Executive', 55000, 4),
('Ali Raza', 'Operations Lead', 62000, 5),
('Nimra Farooq', 'Operations Executive', 57000, 5),
('Taha Siddiqui', 'Operations Intern', 40000, 5);


-- Intermediate Tasks (Week 2-3)
-- JOIN Operations 1.
-- Use INNER JOIN to list employees and their departments.
SELECT Employees.name AS Employee_Name, Employees.position, Departments.name AS Department_Name
FROM Employees
INNER JOIN Departments ON Employees.department_id = Departments.id;

-- Use LEFT JOIN to list all employees, including those without
-- departments.
SELECT Employees.name AS Employee_Name, Employees.position, Departments.name AS Department_Name
FROM Employees
LEFT JOIN Departments ON Employees.department_id = Departments.id;




-- Aggregation Functions 2.
-- Calculate average salary,
SELECT AVG(salary) AS Average_Salary FROM Employees;

--  total employees per department, 
SELECT Departments.name AS Department_Name, COUNT(Employees.id) AS Total_Employees
FROM Departments
LEFT JOIN Employees ON Employees.department_id = Departments.id
GROUP BY Departments.name;

-- and highest salary in each department.
SELECT Departments.name AS Department_Name, MAX(Employees.salary) AS Highest_Salary
FROM Employees
INNER JOIN Departments ON Employees.department_id = Departments.id
GROUP BY Departments.name;




-- Subqueries 3.
-- Find employees earning more than the department's average Salary
SELECT name, position, salary, department_id
FROM Employees e
WHERE salary > (SELECT AVG(salary) FROM Employees WHERE department_id = e.department_id);

-- List departments with more than 3 employees.
SELECT Departments.name AS Department_Name
FROM Departments
JOIN Employees ON Employees.department_id = Departments.id
GROUP BY Departments.name
HAVING COUNT(Employees.id) > 3;
