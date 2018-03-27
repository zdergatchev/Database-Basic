USE soft_uni;
SELECT em.first_name, em.last_name, em.department_id
FROM employees AS em
JOIN
	(SELECT e.department_id, avg(e.salary) AS `avg_salary`
	FROM employees AS e
	GROUP BY e.department_id) AS `avg_salary`
	ON em.department_id = avg_salary.department_id
	WHERE em.salary > avg_salary.avg_salary
ORDER BY department_id
LIMIT 10;

