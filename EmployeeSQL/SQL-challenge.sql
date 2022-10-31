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
	emp_no VARCHAR PRIMARY KEY,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date VARCHAR (15) NOT NULL,
	first_name VARCHAR (25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date VARCHAR (15) NOT NULL
);

SELECT * FROM employees;


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

-- Employee NO. and salary
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no VARCHAR PRIMARY KEY,
	salary INT NOT NULL

);

SELECT * FROM salaries;

-- #1
SELECT 
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.sex, 
	s.salary
FROM employees as e
INNER JOIN salaries as s 
	ON s.emp_no = e.emp_no;

-- #2
SELECT  
	first_name, 
	last_name, 
	hire_date 
	
FROM employees
WHERE hire_date LIKE '%1986%';

-- #3
SELECT 
	dm.dept_no,
	dm.emp_no,
	d.dept_name,
	e.last_name,
	e.first_name
FROM dept_manager as dm
INNER JOIN departments as d 
	ON dm.dept_no = d.dept_no 
INNER JOIN employees as e
	ON e.emp_no = dm.emp_no;

-- #4
SELECT
	de.dept_no,	 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d 
	ON de.dept_no = d.dept_no;

-- #5 
SELECT  
	e.first_name, 
	e.last_name, 
	e.sex
FROM employees as e
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
-- #6
SELECT	 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d 
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- #7
SELECT	 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d 
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' 
	OR dept_name = 'Development';
	
-- #8
SELECT last_name, COUNT(last_name) as distinct_last_name_count		
FROM employees
GROUP BY last_name
ORDER BY distinct_last_name_count DESC;