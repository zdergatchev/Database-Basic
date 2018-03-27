USE soft_uni;
SELECT e1.department_id,
  (
      SELECT DISTINCT e2.salary
      FROM employees AS e2
      WHERE e2.department_id = e1.department_id
      ORDER BY e2.salary DESC LIMIT 2, 1
  ) AS `third_highest_salary`
FROM employees AS e1
GROUP BY department_id
HAVING `third_highest_salary` IS NOT NULL
ORDER BY department_id;


/* SELECT e.department_id, MAX(e.salary) AS `third_max_salary`
 FROM employees AS e
 JOIN
	(SELECT e1.department_id, MAX(e1.salary) AS `second_max_salary` 
	FROM employees AS e1
	 JOIN
			(SELECT e2.department_id, MAX(e2.salary) AS `max_salary` 
			FROM employees AS e2
  				GROUP BY department_id) AS `max_salary`
    			ON e1.department_id = max_salary.department_id
   			AND e1.salary < max_salary.max_salary
 						GROUP BY department_id) `second_max_salary`
    					ON e.department_id = second_max_salary.department_id
   					AND e.salary < second_max_salary.second_max_salary
GROUP BY department_id
ORDER BY department_id; */