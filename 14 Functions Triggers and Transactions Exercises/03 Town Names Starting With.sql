DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(start_with VARCHAR(49))
BEGIN
	SELECT `name` AS `town_name`
    FROM `towns` 
    WHERE `name` LIKE CONCAT(start_with, '%')
    ORDER BY `name`;
END $$

DELIMITER ;

CALL `usp_get_towns_starting_with`('b');