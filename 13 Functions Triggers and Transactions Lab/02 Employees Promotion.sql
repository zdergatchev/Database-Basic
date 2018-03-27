DELIMITER $$
CREATE PROCEDURE usp_raise_salaries(department_name varchar(50))
BEGIN
	UPDATE `employees` SET `salary` = `salary` + 0.05 * `salary`
	WHERE `department_id` = (SELECT `department_id`
									FROM `departments`
									WHERE `name` = department_name);
END$$


/* FOR judje */
/* CREATE PROCEDURE usp_raise_salaries(department_name varchar(50))
BEGIN
	UPDATE `employees` SET `salary` = `salary` + 0.05 * `salary`
	WHERE `department_id` = (SELECT `department_id`
									FROM `departments`
									WHERE `name` = department_name);
END */