-- Create table for Departments
CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM Departments

-- Manually add data into 'departments' table
INSERT INTO Departments (dept_no, dept_name)
VALUES 
('d001', 'Marketing'),
('d002', 'Finance'),
('d003', 'Human Resources'),
('d004', 'Production'),
('d005', 'Development'),
('d006', 'Quality Management'),
('d007', 'Sales'),
('d008', 'Research'),
('d009', 'Customer Service');


-- Create table for Titles
CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM Titles

-- Manually add data into 'titles' table
INSERT INTO Titles (title_id, title)
VALUES 
('s0001', 'Staff'),
('s0002', 'Senior Staff'),
('e0001', 'Assistant Engineer'),
('e0002', 'Engineer'),
('e0003', 'Senior Engineer'),
('e0004', 'Technique Leader'),
('m0001', 'Manager');


-- Create table for Employees
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(6),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM employees;

-- imported employees.csv to table (included notation of headers)


-- Create table for department managers
CREATE TABLE department_managers (
    dept_no VARCHAR(4),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM department_managers

-- Manually add data into 'department managers' table
INSERT INTO department_managers (dept_no, emp_no) 
VALUES
('d001', 110022),
('d001', 110039),
('d002', 110085),
('d002', 110114),
('d003', 110183),
('d003', 110228),
('d004', 110303),
('d004', 110344),
('d004', 110386),
('d004', 110420),
('d005', 110511),
('d005', 110567),
('d006', 110725),
('d006', 110765),
('d006', 110800),
('d006', 110854),
('d007', 111035),
('d007', 111133),
('d008', 111400),
('d008', 111534),
('d009', 111692),
('d009', 111784),
('d009', 111877),
('d009', 111939);


-- Create table for department employees
CREATE TABLE department_employees (
    emp_no INT,
	dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM department_employees

-- imported dept_emp.csv to table (included notation of headers)


-- Create table for employee salaries
CREATE TABLE salaries (
    emp_no INT,
	salary INT,
    PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check table headers look correct (select all from the table)
SELECT *
FROM salaries

-- imported salaries.csv to table (included notation of headers)