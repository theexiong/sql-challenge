SELECT de.emp_no,
    e.last_name,
    e.first_name
   FROM employees e
     JOIN dept_emp de ON e.emp_no = de.emp_no
     JOIN departments ON de.dept_no::text = departments.dept_no::text
  WHERE departments.dept_name::text = 'Sales'::text;
