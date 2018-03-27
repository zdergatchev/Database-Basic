USE `soft_uni`;
SELECT e.`department_id`, MAX(e.`salary`) AS `max_salary`
FROM `employees` AS e
GROUP BY e.`department_id`
HAVING `max_salary` < 30000 OR `max_salary` > 70000
/* HAVING MAX(salary) NOT BETWEEN 30000 AND 70000 */
/* HAVING NOT MAX(salary) BETWEEN 30000 AND 70000 */
ORDER BY e.`department_id`;



