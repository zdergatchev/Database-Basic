SELECT * FROM 
(SELECT f.flight_id, f.departure_time, f.arrival_time, 
o.airport_name AS `origin`, d.airport_name AS `destination`
FROM flights AS f
	INNER JOIN airports AS o ON o.airport_id = f.origin_airport_id
	INNER JOIN airports AS d ON d.airport_id = f.destination_airport_id
WHERE f.`status` = 'Departing'
ORDER BY f.departure_time DESC
LIMIT 5) AS `last_5`
ORDER BY departure_time ASC, flight_id ASC;

