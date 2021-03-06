-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name,e.gender,s.salary
FROM employees as e 
join salaries as s 
on e.emp_no = s.emp_no
order by e.emp_no;


-- 2. List employees who were hired in 1986.

SELECT first_name, last_name FROM employees 
where hire_date between '1986-01-01' AND '1986-12-31';


-- 3. List the manager of each department with the following information: department number, department name, the manager’s employee number, last name, first name, and start and end employment dates.


Select e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date, dm.to_date, d.dept_name

From employees e 
Inner join dept_manager dm
on e.emp_no= dm.emp_no
Inner join departments d 
on d.dept_no = dm.dept_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select e.emp_no, e.first_name, e.last_name, d.dept_name

From employees e 
Inner join dept_emp de
on e.emp_no= de.emp_no
Inner join departments d 
on d.dept_no = de.dept_no
Order by e.emp_no;



-- 5. List all employees whose first name is “Hercules” and last names begin with “B.”

SELECT * From employees 
where first_name = 'Hercules' And last_name Like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select e.emp_no, e.first_name, e.last_name, d.dept_name

From employees e 
Inner join dept_emp de
on e.emp_no= de.emp_no
Inner join departments d 
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
Order by e.emp_no;


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.first_name, e.last_name, d.dept_name

From employees e 
Inner join dept_emp de
on e.emp_no= de.emp_no
Inner join departments d 
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' OR d.dept_name = 'Development'
Order by e.emp_no;


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC;

