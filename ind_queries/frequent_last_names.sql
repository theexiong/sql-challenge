SELECT last_name,
    count(last_name) AS count
   FROM employees
  GROUP BY last_name
  ORDER BY last_name DESC;