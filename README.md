# task7

🔷 What is a View in SQL?
A view is a virtual table based on the result of a SELECT query.

It does not store data physically; it fetches data from real tables.

Views can be used just like tables in SELECT queries.

They are useful for:

Reusing complex queries

Restricting access to sensitive data

Simplifying SQL logic

Creating read-only dashboards or reports

🔷 Creating a Table and Adding Data
Example table: Employees with columns: id, name, department, salary

Inserting sample data:

sql
Copy
Edit
INSERT INTO Employees VALUES
(1, 'Alice', 'HR', 30000),
(2, 'Bob', 'IT', 50000),
(3, 'Charlie', 'IT', 60000);
🔷 Creating a View
Example:

sql
Copy
Edit
CREATE VIEW IT_Employees AS
SELECT name, salary
FROM Employees
WHERE department = 'IT';
This view filters only IT department employees with their names and salaries.

🔷 Using the View
You can fetch data from the view like:

sql
Copy
Edit
SELECT * FROM IT_Employees;
🔷 Updating Data Through a View
Attempting this:

sql
Copy
Edit
UPDATE IT_Employees
SET salary = 55000
WHERE name = 'Bob';
May result in: Error Code: 1175 (safe update mode prevents it)

🔷 What is Safe Update Mode?
A feature in MySQL Workbench that blocks UPDATE or DELETE operations unless:

A key column (like id) is used in the WHERE clause.

Prevents accidental updates to the whole table.

🔷 How to Disable Safe Update Mode
✅ Option 1: Temporarily
Run:

sql
Copy
Edit
SET SQL_SAFE_UPDATES = 0;
Then run your UPDATE query.

Re-enable using:

sql
Copy
Edit
SET SQL_SAFE_UPDATES = 1;
✅ Option 2: Permanently
Go to Edit > Preferences

Click SQL Editor

Uncheck ✅ "Safe Updates"

Click OK and reconnect to the database

🔷 Best Practice: Add Primary Key in View
Safer to create view with id included:

sql
Copy
Edit
CREATE VIEW IT_Employees AS
SELECT id, name, salary
FROM Employees
WHERE department = 'IT';
Then update using:

sql
Copy
Edit
UPDATE IT_Employees
SET salary = 55000
WHERE id = 2;
🔷 Dropping a View
To delete a view:

sql
Copy
Edit
DROP VIEW IT_Employees;
