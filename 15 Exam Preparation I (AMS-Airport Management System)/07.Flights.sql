SELECT flight_id, departure_time, arrival_time
FROM flights AS f
WHERE f.`status` = 'Delayed'
ORDER BY f.flight_id ASC;