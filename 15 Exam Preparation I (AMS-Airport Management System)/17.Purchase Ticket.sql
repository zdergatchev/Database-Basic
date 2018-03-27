DELIMITER $$

CREATE PROCEDURE udp_purchase_ticket(customer_id INT, flight_id INT,
ticket_price DECIMAL(8, 2), class VARCHAR(6), seat VARCHAR(5))
BEGIN
DECLARE customer_balance DECIMAL;
SET customer_balance := (SELECT cba.balance FROM customer_bank_accounts AS cba 
WHERE cba.customer_id = customer_id);
	START TRANSACTION;
		IF(customer_balance < ticket_price) THEN
			ROLLBACK;
		END IF;
		UPDATE customer_bank_accounts
		SET balance = balance - ticket_price;
		INSERT INTO tickets(price, class, seat, customer_id, flight_id)
		VALUES(ticket_price, class, seat, customer_id, flight_id);
	COMMIT;
END