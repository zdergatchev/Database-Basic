USE soft_uni;

SELECT MIN(avgs.`avg_salary`) AS 'min_average_salary'
FROM 
	(SELECT e.`department_id`, AVG(e.`salary`) AS 'avg_salary'
	FROM `employees` AS e
	GROUP BY e.`department_id`) AS avgs
LIMIT 1;

/* SELECT AVG(e.`salary`) AS 'min_average_salary'
FROM `employees` AS e
GROUP BY e.`department_id`
ORDER BY min_average_salary
LIMIT 1; */
