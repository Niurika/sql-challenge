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