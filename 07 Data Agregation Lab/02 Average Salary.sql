USE restaurant;
SELECT department_id, ROUND(AVG(salary), 2) FROM employees AS e
GROUP BY e.department_id;