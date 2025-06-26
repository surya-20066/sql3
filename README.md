👨‍💼 Employee Management System using MySQL and DBeaver
This is a beginner-friendly project that demonstrates how to create and manage a simple Employee Management System using MySQL and DBeaver. The database keeps track of employee details such as their name, salary, hire date, and department.

🧾 Overview
This project includes one main table:

Table Name	Description
employees	Stores information about employees, including their department and salary details

In this simplified version, department names are stored directly within the employee table as a text field.

⚡ Features
✅ Stores employee information (name, department, salary, hire date)
✅ Allows filtering employees based on department, salary range, and hire date
✅ Demonstrates SQL SELECT queries with WHERE, BETWEEN, LIKE, and ORDER BY clauses

🛠️ How to Set It Up
✅ Step 1: Create and Select the Database
sql
Copy
Edit
DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;
✅ Step 2: Create the Employees Table
sql
Copy
Edit
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department VARCHAR(50)
);
✅ Step 3: Insert Sample Employee Data
sql
Copy
Edit
INSERT INTO employees (employee_id, first_name, last_name, salary, hire_date, department)
VALUES
(1, 'John', 'Doe', 75000.00, '2018-04-15', 'IT'),
(2, 'Jane', 'Smith', 85000.00, '2017-03-22', 'HR'),
(3, 'Jack', 'Johnson', 95000.00, '2016-06-30', 'Finance'),
(4, 'Jill', 'Davis', 72000.00, '2019-11-11', 'IT'),
(5, 'James', 'Wilson', 65000.00, '2020-07-10', 'HR'),
(6, 'Julia', 'Taylor', 80000.00, '2018-09-25', 'Finance'),
(7, 'Joe', 'Brown', 67000.00, '2021-05-03', 'IT'),
(8, 'Jasper', 'Miller', 70000.00, '2020-02-14', 'HR');
✅ Step 4: Run Example Query to Filter Employees
The following query filters:

Employees from IT or HR departments

With salary greater than 60,000

Hired between 2015 and 2020

Whose first name starts with 'J'

sql
Copy
Edit
SELECT first_name, last_name, salary, hire_date, department
FROM employees
WHERE (department = 'IT' OR department = 'HR')
  AND salary > 60000
  AND hire_date BETWEEN '2015-01-01' AND '2020-12-31'
  AND first_name LIKE 'J%'
ORDER BY salary DESC, hire_date ASC;
🎯 Expected Output
first_name | last_name | salary  | hire_date  | department
-----------------------------------------------------------
Jane       | Smith     | 85000.00| 2017-03-22 | HR
John       | Doe       | 75000.00| 2018-04-15 | IT
Jill       | Davis     | 72000.00| 2019-11-11 | IT
