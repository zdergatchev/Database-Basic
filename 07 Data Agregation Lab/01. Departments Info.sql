USE restaurant;
SELECT department_id, count(id) AS `Number of employees` FROM employees AS e
GROUP BY e.department_id
ORDER BY e.department_id, `Number of employees`;