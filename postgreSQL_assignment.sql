--CREATE DATABASE
CREATE DATABASE company_db;

--CREATE DEPARTMENTS TABLE
CREATE Table departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

--CREATE EMPLOYEES TABLE
CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    salary NUMERIC NOT NULL,
    status VARCHAR(25)
);

--INSERT DATA INTO DEPARTMENTS TABLE
INSERT INTO departments (department_name) VALUES 
    ('Engineering'),
    ('Marketing'),
    ('Finance');

--INSERT DATA INTO EMPLOYEES TABLE
INSERT INTO employees(employee_name, age, email, department_id, salary, status) VALUES
    ('Alice', 30, 'alice@example.com', 1, 60000, NULL),
    ('Bob', 35, 'bob@example.net', 2, 65000, NULL),
    ('Charlie', 28, 'charlie@google.com', 1, 55000, NULL),
    ('David', 33, 'david@yahoo.com', 2, 62000, NULL),
    ('Eve', 31, 'eve@example.net', 3, 58000, NULL),
    ('Frank', 29, 'frank@example.com', 1, 59000, NULL),
    ('Grace', 34, 'grace@google.com', 2, 63000, NULL),
    ('Henry', 32, 'henry@yahoo.com', 3, 57000, NULL),
    ('Ivy', 27, 'ivy@gmail.com', 1, 56000, NULL),
    ('Jack', 36, 'jack@example.net', 2, 64000, NULL),
    ('Karen', 29, 'karen@gmail.com', 3, 60000, NULL),
    ('Liam', 33, 'liam@gmail.com', 1, 59000, NULL),
    ('Mia', 31, 'mia@yahoo.com', 2, 62000, NULL),
    ('Nora', 28, 'nora@yahoo.com', 3, 57000, NULL),
    ('Oliver', 35, 'oliver@example.net', 1, 61000, NULL),
    ('Penelope', 30, 'penelope@google.com', 2, 63000, NULL),
    ('Quinn', 32, 'quinn@google.com', 3, 59000, NULL),
    ('Rachel', 27, 'rachel@gmail.com', 1, 55000, NULL),
    ('Sam', 34, 'sam@example.net', 2, 64000, NULL),
    ('Taylor', 31, 'taylor@yahoo.com', 3, 58000, NULL);

--CHECK IF ALL DATA ARE INSERTED SUCCESSFULLY OR NOT
SELECT * FROM departments;

--CHECK IF ALL DATA ARE INSERTED SUCCESSFULLY OR NOT
SELECT * FROM employees;


--Query 1:
SELECT * FROM employees
WHERE salary>60000;

--Query 2:
SELECT employee_name FROM employees LIMIT 2 OFFSET 2;

--Qeury 3:
SELECT avg(age) as average_age FROM employees

--Query 4:
SELECT employee_name FROM employees
WHERE email LIKE '%example.com' OR email LIKE '%example.net' OR email LIKE '%google.com';

--Query 5:
SELECT employee_name FROM employees
JOIN departments ON employees.department_id=departments.department_id
WHERE department_name='Engineering';

--Query 6:
UPDATE employees
SET status='Promoted'
WHERE salary=(SELECT max(salary) FROM employees);

--Query 7:
SELECT department_name,avg(salary) FROM employees
JOIN departments ON employees.department_id=departments.department_id
GROUP BY department_name;