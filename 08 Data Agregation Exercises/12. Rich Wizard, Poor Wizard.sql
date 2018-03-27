USE `gringotts`;
SELECT SUM(wd1.deposit_amount - wd2.deposit_amount) AS sum_difference
FROM wizard_deposits AS wd1, wizard_deposits AS wd2
WHERE wd2.id = wd1.id + 1;

/* SELECT SUM(d.`difference`) AS 'difference'
FROM
	(SELECT w1.`first_name` AS 'host_wizard', 
			  w1.`deposit_amount` AS 'host_wizard_deposit',
			  w2.`first_name` AS 'guest_wizard', 
			  w2.`deposit_amount` AS 'guest_wizard_deposit', 
			  w1.`deposit_amount` - w2.`deposit_amount` AS 'difference'
	 FROM `wizzard_deposits` AS w1, `wizzard_deposits` AS w2
	 WHERE w1.`id` + 1 = w2.`id`) AS d; */
	 


