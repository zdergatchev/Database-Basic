SELECT ticket_id, airport_name, CONCAT(first_name, ' ', last_name) AS `full_name`
FROM tickets AS t
	INNER JOIN flights AS f ON t.flight_id = f.flight_id
	INNER JOIN airports AS a ON f.destination_airport_id = a.airport_id
	INNER JOIN customers AS c ON t.customer_id = c.customer_id
	WHERE t.price < 5000 AND t.class = 'First'
ORDER BY t.ticket_id ASC;