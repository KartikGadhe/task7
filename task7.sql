-- create database 
create database viewDB;

-- use database 
use viewDB;

-- create table employees 
CREATE TABLE Employees (
  id INT,
  name VARCHAR(100),
  department VARCHAR(50),
  salary INT
);


-- insert values in the table employees
INSERT INTO Employees VALUES
(1, 'Ajay', 'HR', 30000),
(2, 'Prashant', 'IT', 50000),
(3, 'Sharad', 'Sales', 60000),
(4, 'Atul', 'ITI', 90000),
(5, 'Kartik', 'IT', 60000);


-- create a vieww named as IT_EMPLOYEES
CREATE VIEW IT_Employees AS
SELECT name, salary
FROM Employees
WHERE department = 'IT';

-- Show view after create 
SELECT * FROM IT_Employees;


SET SQL_SAFE_UPDATES = 0;

-- update value in view table 
UPDATE IT_Employees
SET salary = 55000
WHERE name = 'Bob';

-- show the view after update 
SELECT * FROM IT_Employees;

-- delete the view
DROP VIEW IT_Employees;

