-- department number and name
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR (50) NOT NULL
);

SELECT * FROM departments;

-- department employee number and department number 
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_id SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR (10) NOT NULL
);

SELECT * FROM dept_emp;

-- department number and employee number of manager
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	manager_id SERIAL PRIMARY KEY,
	dept_no VARCHAR (10) NOT NULL,
	emp_no VARCHAR (10) NOT NULL
);

SELECT * FROM dept_manager;

-- Employee personal info 
DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no SERIAL PRIMARY KEY,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date VARCHAR (15) NOT NULL,
	first_name VARCHAR (25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date VARCHAR (15) NOT NULL
);

SELECT * FROM employees;
