-- Data Analysis

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no
ORDER BY salaries.salary ASC;



-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name, employees.last_name,  employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986
ORDER BY employees.last_name ASC;




-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager, employees, departments
WHERE 
		dept_manager.emp_no=employees.emp_no
		AND dept_manager.dept_no=departments.dept_no	
		
ORDER BY dept_manager.dept_no ASC;






-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, dept_emp, departments
WHERE
		employees.emp_no=dept_emp.emp_no
		AND dept_emp.dept_no=departments.dept_no
		
ORDER BY dept_emp.dept_no ASC;





-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE 
		first_name='Hercules'
		AND SUBSTRING(last_name, 1, 1)='B';
		
		
		
		

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no
WHERE dept_emp.dept_no='d007' 				-- code for Sales dept.
ORDER BY employees.last_name ASC;





-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, departments, employees
WHERE 
		dept_emp.emp_no=employees.emp_no AND
		dept_emp.dept_no=departments.dept_no AND
		(dept_emp.dept_no='d007' OR dept_emp.dept_no='d005')				-- codes for Sales and Development
ORDER BY departments.dept_name ASC, employees.last_name ASC, employees.first_name ASC;




-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT employees.last_name, COUNT(employees.last_name)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.last_name) DESC;




