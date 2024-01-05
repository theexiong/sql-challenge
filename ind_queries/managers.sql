SELECT dm.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
   FROM employees e
     JOIN dept_manager dm ON e.emp_no = dm.emp_no
     JOIN departments d ON dm.dept_no::text = d.dept_no::text;
