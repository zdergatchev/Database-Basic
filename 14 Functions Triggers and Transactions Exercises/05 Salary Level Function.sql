DELIMITER $$
CREATE FUNCTION ufn_get_salary_level(e_salary DECIMAL(19, 4)) 
RETURNS VARCHAR(8)
BEGIN
	DECLARE result VARCHAR(8);
    
   IF e_salary < 30000 THEN SET result := 'Low';
	ELSEIF e_salary >= 30000 AND e_salary <= 50000 THEN SET result = 'Average';
	ELSEIF e_salary > 50000 THEN SET result = 'High';	
	END IF;
    
   RETURN result;
END $$

DELIMITER ;
