-- Data Analysis

-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no
ORDER BY salaries.salary ASC;



-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT employees.first_name, employees.last_name,  employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986
ORDER BY employees.last_name ASC;




-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager, employees, departments
WHERE 
		dept_manager.emp_no=employees.emp_no
		AND dept_manager.dept_no=departments.dept_no	
		
ORDER BY dept_manager.dept_no ASC;






-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, dept_emp, departments
WHERE
		employees.emp_no=dept_emp.emp_no
		AND dept_emp.dept_no=departments.dept_no
		
ORDER BY dept_emp.dept_no ASC;





-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE 
		first_name='Hercules'
		AND SUBSTRING(last_name, 1, 1)='B';
		
		
		
		

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no
WHERE dept_emp.dept_no='d007' 				-- code for Sales dept.
ORDER BY employees.last_name ASC;





-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, departments, employees
WHERE 
		dept_emp.emp_no=employees.emp_no AND
		dept_emp.dept_no=departments.dept_no AND
		(dept_emp.dept_no='d007' OR dept_emp.dept_no='d005')				-- codes for Sales and Development
ORDER BY departments.dept_name ASC, employees.last_name ASC, employees.first_name ASC;




-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT employees.last_name, COUNT(employees.last_name)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.last_name) DESC;




