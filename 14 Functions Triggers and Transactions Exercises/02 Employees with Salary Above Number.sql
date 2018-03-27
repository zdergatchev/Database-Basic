DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above(salary_min DECIMAL(19,4))
BEGIN
	SELECT `first_name`, `last_name` 
	FROM `employees`
   WHERE `salary` >= `salary_min`	
	ORDER BY `first_name`, `last_name`;
END $$

DELIMITER ;

CALL `usp_get_employees_salary_above`(48100);