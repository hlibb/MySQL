CREATE TABLE `users` 
	(`user_id` INT NOT NULL UNIQUE AUTO_INCREMENT, 
    `name` VARCHAR(50) NOT NULL, 
    `surname` VARCHAR(50) NOT NULL, 
    `date_of_registration` DATE NOT NULL,
    PRIMARY KEY (`user_id`)
    ) ENGINE=INNODB;
    
    INSERT INTO `users` VALUES (1, 'Nicolas', 'Kage', '2020-05-15');
    INSERT INTO `users` VALUES (2, 'Jonas', 'Leberburg', '2022-09-11');
    INSERT INTO `users` VALUES (3, 'Ketty', 'Lamberfield', '2022-01-23');

CREATE TABLE `wallet` 
	(`wallet_id` INT(11) NOT NULL UNIQUE AUTO_INCREMENT,
    `currency` VARCHAR(3) NOT NULL,
    `amount` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL ,
    `created` DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    PRIMARY KEY (`wallet_id`)) ENGINE=INNODB;

	INSERT INTO `wallet` VALUES (1, 'UAH', '10000', 1, '2020-05-15');
	INSERT INTO `wallet` VALUES (2, 'UAH', '120000', 2, '2022-09-11');
	INSERT INTO `wallet` VALUES (3, 'UAH', '1045000', 3, '2022-01-23');
    

