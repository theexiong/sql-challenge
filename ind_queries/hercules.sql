SELECT first_name,
    last_name,
    sex
   FROM employees
  WHERE first_name::text = 'Hercules'::text AND last_name::text ~~ 'B%'::text;
