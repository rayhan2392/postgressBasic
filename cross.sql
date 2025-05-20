CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    dept_id INT
)

CREATE Table departments (
    dept_id INT,
    dept_name VARCHAR(50)
)

-- Insert data into departments
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources');

-- Insert data into employees
INSERT INTO employees (employee_id, employee_name, dept_id) VALUES
(101, 'Alice Johnson', 1),
(102, 'Bob Smith', 2);


SELECT * FROM departments

SELECT * FROM employees

--cross join
SELECT * FROM employees
CROSS JOIN departments


--natural join

SELECT * FROM departments
NATURAL JOIN employees