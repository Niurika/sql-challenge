-- department number and name
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR (20) PRIMARY KEY,
	dept_name VARCHAR (50) NOT NULL
);

SELECT * FROM departments;

-- department employee number and department number 
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR (20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- department number and employee number of manager
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	manager_id SERIAL PRIMARY KEY,
	dept_no VARCHAR (20) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;

-- Employee personal info 
DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL
	
);

SELECT * FROM employees;

-- Employee NO. and salary
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

-- title id and title

CREATE TABLE titles(
	title_id VARCHAR (40) PRIMARY KEY,
	title VARCHAR (40) NOT NULL
);

SELECT * FROM titles;

