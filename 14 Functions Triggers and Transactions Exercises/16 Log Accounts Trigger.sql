USE bank_db;
CREATE TABLE `logs`(
log_id INT PRIMARY KEY AUTO_INCREMENT, 
account_id INT NOT NULL, 
old_sum DECIMAL(19, 4) NOT NULL,
new_sum DECIMAL(19, 4) NOT NULL 
);

DELIMITER $$
CREATE TRIGGER tr_add_logs
AFTER UPDATE
ON accounts
FOR EACH ROW
BEGIN
 INSERT INTO `logs`(account_id, old_sum, new_sum) 
    VALUES (old.id, old.balance, new.balance);
END $$

DELIMITER ;