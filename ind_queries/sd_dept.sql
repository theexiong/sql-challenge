--list emp no, last name, first name, sex, salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries as s 
ON e.emp_no = s.emp_no;

--list first name, last name, hire date for 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

--list manager dept no, dept name, emp no, last name, first name
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_manager as dm 
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no;

--list dept no, emp no, last name, first name, dept name
SELECT d.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d
JOIN dept_emp de 
ON d.dept_no = de.dept_no
JOIN employees as e 
ON de.emp_no = e.emp_no;

--list first name = Hercules, last name start with B, sex 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--list employees in sales dept, emp no, last name, first name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no::text = de.dept_no::text
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--list employees in sales and dev dept, emp no, last name, first name, dept name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d 
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--list frequency counts in desc order, last names
SELECT last_name,
count(last_name) AS count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;