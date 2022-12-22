-- 1. List the employee number, last name, first name, sex, and salary of each employee.

select * from salaries

SELECT 
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
FROM
    employees
JOIN
    salaries on employees.emp_no = salaries.emp_no
    

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
    first_name,
    last_name,
    TO_DATE(hire_date, 'mm/dd/yyyy')
FROM employees
WHERE
    TO_DATE(hire_date, 'mm/dd/yyyy') >= TO_DATE('01/01/1986', 'mm/dd/yyyy')
    and TO_DATE(hire_date, 'mm/dd/yyyy') <= TO_DATE('01/01/1987', 'mm/dd/yyyy')



-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.


SELECT
    dept_manager.dept_no,
    departments.dept_name,
    dept_manager.emp_no,
    employees.last_name,
    employees.first_name
FROM
    dept_manager
JOIN
    departments ON dept_manager.dept_no = departments.dept_no
JOIN 
    employees ON dept_manager.emp_no = employees.emp_no


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    

SELECT
    dept_emp.dept_no,
    departments.dept_name,
    dept_emp.emp_no,
    employees.last_name,
    employees.first_name
FROM
    dept_emp
JOIN
    departments ON dept_emp.dept_no = departments.dept_no
JOIN 
    employees ON dept_emp.emp_no = employees.emp_no


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT
    first_name,
    last_name,
    sex
FROM
    employees
WHERE
    first_name = 'Hercules'
    and last_name LIKE 'B%'
    
    
-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
    
SELECT
    dept_emp.emp_no,
    employees.last_name,
    employees.first_name
FROM
    dept_emp
JOIN
    employees ON dept_emp.emp_no = employees.emp_no
WHERE
    dept_no IN
(SELECT 
    dept_no
FROM
    departments
WHERE
    dept_name = 'Sales')
    
    
    
-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
    dept_emp.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM
    dept_emp
JOIN
    employees ON dept_emp.emp_no = employees.emp_no
JOIN
    departments ON dept_emp.dept_no = departments.dept_no
WHERE
    dept_emp.dept_no IN
(SELECT 
    dept_no
FROM
    departments
WHERE
    dept_name = 'Sales'
    or dept_name = 'Development')
    
    
    
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT
    COUNT(last_name) as frequency_counts,
    last_name
FROM
    employees
GROUP BY
    last_name
ORDER BY
    frequency_counts desc
    
    



