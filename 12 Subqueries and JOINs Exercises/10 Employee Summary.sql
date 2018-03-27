USE soft_uni;

SELECT e.`employee_id`, CONCAT(e.`first_name`, ' ', e.`last_name`) AS 'employee_name',
CONCAT(m.`first_name`, ' ', m.`last_name`) AS 'manager_name', d.`name` AS 'department_name'
FROM `departments` AS d
JOIN `employees` AS e
ON d.`department_id` = e.`department_id`
JOIN `employees` AS m
ON e.`manager_id` = m.`employee_id`
ORDER BY e.`employee_id`
LIMIT 5;

/* SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS `employee_name`,
 (SELECT CONCAT(e2.first_name, ' ', e2.last_name) FROM  employees AS e2
   WHERE e.manager_id = e2.employee_id) AS `manager_name`, d.name AS `department_name`
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY e.employee_id LIMIT 5; */   /* 66% in judge */