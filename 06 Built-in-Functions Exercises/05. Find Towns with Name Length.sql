USE soft_uni;
SELECT name FROM towns
WHERE CHAR_LENGTH(name) IN (5, 6)
ORDER BY name ASC;

/* SELECT name FROM towns
where length(name)=5 or length(name)=6
order by name; */
