USE `soft_uni`;
CREATE TABLE `NewTable` SELECT * FROM `employees`
WHERE `salary` > 30000;

DELETE FROM `NewTable` 
WHERE `manager_id` = 42;

UPDATE `NewTable`
SET `salary` = `salary` + 5000
WHERE `department_id` = 1;

SELECT `department_id`, AVG(`salary`) AS `avg_salary`
FROM `NewTable`
GROUP BY `department_id`
ORDER BY `department_id`; 

