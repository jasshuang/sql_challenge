-- 1. create departments table

CREATE TABLE departments(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
    )

SELECT * FROM departments



-- 2. create dept_emp table

CREATE TABLE dept_emp(
    emp_no INT PRIMARY KEY,
    dept_no VARCHAR
    )

SELECT * FROM dept_emp



-- 3. create dept_namager table

CREATE TABLE dept_manager(
    dept_no VARCHAR,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
    )
    
SELECT * FROM dept_manager



-- 4. create title table 
    
CREATE TABLE title(
    title_id VARCHAR,
    title VARCHAR,
    PRIMARY KEY (title_id)
    
SELECT * FROM title
    
    
    
-- 5. create employees table

CREATE TABLE employees(
    emp_no INT,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
    )
    
    
SELECT * FROM employees
    
    
    
-- 6. create salaryes table
    
CREATE TABLE salaries(
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    )
    
SELECT * FROM salaries