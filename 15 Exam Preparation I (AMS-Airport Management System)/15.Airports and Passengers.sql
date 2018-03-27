SELECT airport_id, airport_name, COUNT(ticket_id) AS `passengers`
FROM airports AS a
	INNER JOIN flights AS f ON f.origin_airport_id = a.airport_id
	INNER JOIN tickets AS t ON t.flight_id = f.flight_id
WHERE f.`status` = 'Departing'
GROUP BY airport_id, airport_name
ORDER BY airport_id ASC;