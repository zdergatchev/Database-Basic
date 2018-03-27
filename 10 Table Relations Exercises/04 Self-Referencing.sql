USE table_relation_DB;

CREATE TABLE `teachers` (
	`teacher_id` INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50),
	`manager_id` INT,
	CONSTRAINT `fk_teacher_id` 
	FOREIGN KEY (`manager_id`) REFERENCES `teachers` (`teacher_id`)
);


INSERT INTO `teachers` (`teacher_id`, `name`)
VALUES (101, 'John');
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`)
VALUES (102, 'Maya', 106),
		 (103, 'Silvia', 106), (104, 'Ted', 105), 
		 (105, 'Mark', 101), (106, 'Greta', 101);  
		 