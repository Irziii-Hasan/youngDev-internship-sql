-- author: Irza Hasan
-- interns @youngdevinternsprogram
-- week 01

-- Basic Tasks (Week 1)
-- Database & Table Setup 1.
-- Create Internship_DB, tables Employees and Departments.
CREATE DATABASE Internship_DB;
USE Internship_DB;

CREATE TABLE Departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);
-- Insert 5 records into each table.
INSERT INTO Departments (name, location) VALUES 
('HR', 'Karachi'),
('IT', 'Islamabad'),
('Finance', 'Lahore'),
('Marketing', 'Multan'),
('Operations', 'Peshawar');

INSERT INTO Employees (name, position, salary, department_id) VALUES
('Haniya Khawaja', 'HR Manager', 60000, 1),
('Irza Hasan', 'Software Engineer', 100000, 2),
('Moosa Azeem', 'Accountant', 55000, 3),
('Janees Hasan', 'Marketing Analyst', 48000, 4),
('Mubashir Khawaja', 'Operations Manager', 95000, 5);

-- Basic SELECT Queries 2.
-- Retrieve employees' names and positions.
SELECT name, position FROM Employees;

-- List departments with locations.
SELECT name, location FROM Departments;

-- Filtering & Sorting 3.
-- Query employees earning > $50,000.
SELECT name, position, salary FROM Employees WHERE salary > 50000;

-- Sort employees by name, list departments in specific cities.
SELECT * FROM Employees ORDER BY name;

-- List departments in specific cities (e.g., 'Kaarachi' and 'Multan')
SELECT * FROM Departments WHERE location IN ('Karachi', 'Multan');



