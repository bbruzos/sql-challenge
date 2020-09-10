SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, salaries.salary
FROM employees emp
JOIN salaries 
ON emp.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT dept.dept_no, dept.dept_name, dept_manager.emp_no, emp.last_name, emp.first_name
FROM departments dept
JOIN dept_manager
ON dept.dept_no = dept_manager.dept_no
JOIN employees emp
ON dept_manager.emp_no = emp.emp_no;

SELECT dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp
JOIN employees emp
ON dept_emp.emp_no = emp.emp_no
JOIN departments dept 
ON dept_emp.dept_no = dept.dept_no;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%'; 

SELECT dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp
JOIN employees emp 
ON dept_emp.emp_no = emp.emp_no
JOIN departments dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales';

SELECT dept_emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp
JOIN employees emp 
ON dept_emp.emp_no = emp.emp_no
JOIN departments dept
ON dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
OR dept.dept_name = 'Development';

SELECT last_name,
COUNT (last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY 
COUNT(last_name) DESC;

