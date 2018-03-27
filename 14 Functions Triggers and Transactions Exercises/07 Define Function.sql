DELIMITER $$

CREATE FUNCTION ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
RETURNS BIT
BEGIN
	DECLARE len INT DEFAULT CHAR_LENGTH(word);
	DECLARE idx INT DEFAULT 1;
	WHILE idx <= len
	DO
		IF LOCATE(SUBSTRING(word, idx, 1), set_of_letters) < 1
		THEN
			RETURN FALSE;
		END IF;
		SET idx = idx + 1;
	END WHILE;
	RETURN TRUE;
END$$

DELIMITER ;

SELECT ufn_is_word_comprised('oistmiahf', 'Sofia');
