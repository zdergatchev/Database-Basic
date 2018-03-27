USE `geography`;

SELECT cou.`country_name`, r.`river_name`
FROM  `countries` AS cou
JOIN `continents` AS con 
ON cou.`continent_code` = con.`continent_code`
AND con.`continent_name` = 'Africa' 
/* WHERE con.`continent_name` = 'Africa' */  /* WHERE problem */
LEFT JOIN `countries_rivers` AS cr 
ON cr.`country_code` = cou.`country_code`
LEFT JOIN `rivers` AS r 
ON r.`id` = cr.`river_id`
ORDER BY `country_name`
LIMIT 5;
