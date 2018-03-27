USE `geography`;

SELECT `continent_code`, `currency_code`, COUNT(`country_name`) AS `currency_usage`
FROM `countries` AS c
GROUP BY `continent_code`, `currency_code`
HAVING `currency_usage` = (
	SELECT COUNT(`country_code`) AS `count`
	FROM `countries` AS `c1`
	WHERE `c1`. `continent_code` = `c`.`continent_code`
	GROUP BY `currency_code`
	ORDER BY `count` DESC
	LIMIT 1
) AND `currency_usage` > 1
ORDER BY `continent_code`, `currency_code`;
	








/* SELECT usages.continent_code, usages.currency_code, usages.currency_usage
FROM
		(SELECT co.continent_code, cu.currency_code, COUNT(cu.currency_code) AS 'currency_usage'
		
				FROM continents AS co
				INNER JOIN countries AS c
				ON co.continent_code = c.continent_code
				INNER JOIN currencies AS cu
				ON c.currency_code = cu.currency_code
		GROUP BY co.continent_code, cu.currency_code
		HAVING currency_usage > 1) AS `usages`
		INNER JOIN
		(SELECT cu_usages.continent_code, MAX(cu_usages.currency_usage) AS max_usage
		FROM(
				SELECT co.continent_code, cu.currency_code, COUNT(cu.currency_code) AS 'currency_usage'
		
				FROM continents AS co
				INNER JOIN countries AS c
				ON co.continent_code = c.continent_code
				INNER JOIN currencies AS cu
				ON c.currency_code = cu.currency_code
				GROUP BY co.continent_code, cu.currency_code
				HAVING currency_usage > 1) AS cu_usages
		GROUP BY cu_usages.continent_code) AS `max_usages`
		ON usages.continent_code = max_usages.continent_code
WHERE usages.currency_usage = max_usages.max_usage
ORDER BY usages.continent_code ASC, usages.currency_code; */