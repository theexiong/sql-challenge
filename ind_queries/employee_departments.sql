SELECT d.dept_no,
    de.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
   FROM departments d
     JOIN dept_emp de ON d.dept_no::text = de.dept_no::text
     JOIN employees e ON de.emp_no = e.emp_no;
