USE `gringotts`;
SELECT `deposit_group`
FROM `wizzard_deposits`
GROUP BY `deposit_group`
ORDER BY AVG (`magic_wand_size`) LIMIT 1;

/* SELECT aws.`deposit_group`
FROM
    (SELECT w.`deposit_group`, AVG(w.`magic_wand_size`) AS 'average_wand_size'
    FROM `wizzard_deposits` AS w
    GROUP BY w.`deposit_group`
    ORDER BY `average_wand_size`) AS aws
LIMIT 1; */