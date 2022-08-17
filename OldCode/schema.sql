
--------------------------------------------------
-- for departments.csv

-- DROP TABLE departments;

CREATE TABLE departments (

	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
	
);

SELECT * FROM departments;

--------------------------------------------------




--------------------------------------------------

-- for dept_emp.csv

DROP TABLE dept_emp;

CREATE TABLE dept_emp (

	dept_no VARCHAR,
	emp_no INTEGER
	PRIMARY KEY (dept_no, emp_no)
	

);

-- has dupe on lines 11-12 'emp_no = 10010'; d004, d006

SELECT * FROM dept_emp;
--------------------------------------------------




--------------------------------------------------

-- for dept_manager.csv

-- DROP TABLE dept_manager;

CREATE TABLE dept_manager (

	dept_no VARCHAR,
	emp_no INTEGER,
	PRIMARY KEY (dept_no, emp_no)


);

SELECT * FROM dept_manager;

--------------------------------------------------



--------------------------------------------------

-- for employees.csv

-- DROP TABLE employees;

CREATE TABLE employees (

	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE

);

SELECT * FROM employees;

--------------------------------------------------


--------------------------------------------------

-- for salaries.csv

-- DROP TABLE salaries;

CREATE TABLE salaries (

	emp_no INTEGER PRIMARY KEY,
	salary INTEGER

);

SELECT * FROM salaries;

--------------------------------------------------



--------------------------------------------------

-- for titles.csv

-- DROP TABLE titles;

CREATE TABLE titles (

	title_id VARCHAR PRIMARY KEY,
	title VARCHAR

);

SELECT * FROM titles;



