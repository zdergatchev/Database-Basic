USE `gringotts`;
SELECT w.`deposit_group`, w.`is_deposit_expired`, AVG(w.`deposit_interest`) AS 'average_interest' 
FROM `wizzard_deposits` AS w
WHERE `deposit_start_date` > '1985/01/01'
GROUP BY w.`deposit_group`, w.`is_deposit_expired`
ORDER BY w.`deposit_group` DESC, w.`is_deposit_expired`;