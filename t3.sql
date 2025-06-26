CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department VARCHAR(50)
);
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
SELECT first_name, last_name, salary, hire_date, department
FROM employees
WHERE (department = 'IT' OR department = 'HR')   
  AND salary > 60000                              
  AND hire_date BETWEEN '2015-01-01' AND '2020-12-31'  
  AND first_name LIKE 'J%'                        
ORDER BY salary DESC, hire_date ASC;   