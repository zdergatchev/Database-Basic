USE `soft_uni`;

SELECT e.`employee_id`, e.`first_name`, 
	IF(`start_date` >= '2005-01-01', NULL, p.`name`) AS 'project_name'
FROM `employees` AS e
INNER JOIN `employees_projects` AS ep
ON e.`employee_id` = ep.`employee_id`
JOIN `projects` AS p
ON p.`project_id` = ep.`project_id`
WHERE e.`employee_id` = 24
ORDER BY `project_name`;

/* SELECT e.`employee_id`, e.`first_name`, 
CASE
WHEN YEAR(p.`start_date`) >= 2005 THEN NULL
ELSE p.`name`
END AS 'project_name'
FROM `employees` AS e
INNER JOIN `employees_projects` AS ep
ON e.`employee_id` = ep.`employee_id`
INNER JOIN `projects` AS p
ON ep.`project_id` = p.`project_id`
WHERE e.`employee_id` = 24
ORDER BY `project_name`;

/* SELECT e.employee_id, e.first_name, p.name
FROM `employees` AS e
INNER JOIN `employees_projects` AS ep
ON e.employee_id = ep.employee_id
AND e.employee_id = 24
LEFT JOIN `projects` AS p
ON ep.project_id = p.project_id
AND YEAR(p.start_date) < 2005
ORDER BY p.name ASC; */
