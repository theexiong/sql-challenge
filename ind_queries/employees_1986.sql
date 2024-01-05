SELECT first_name,
    last_name,
    hire_date
   FROM employees
  WHERE hire_date >= '1986-01-01'::date AND hire_date <= '1986-12-31'::date
  ORDER BY hire_date;
