USE `soft_uni`;

SELECT e.`first_name`, e.`last_name`, `t`.`name`, a.`address_text`
FROM `employees` AS `e`
JOIN `addresses` AS `a` ON `e`.`address_id` = `a`.`address_id`
JOIN `towns` AS `t` ON `t`.`town_id` = `a`.`town_id`
ORDER BY `first_name`, `last_name`
LIMIT 5;

/* SELECT e.`first_name`, e.`last_name`, t.`name` AS 'town', a.`address_text`
FROM 
	`employees` AS e 
	 INNER JOIN `addresses` AS a
	 ON e.`address_id` = a.`address_id`
	 INNER JOIN `towns` AS t
	 ON a.`town_id` = t.`town_id`
ORDER BY e.`first_name` ASC, e.`last_name`
LIMIT 5; */