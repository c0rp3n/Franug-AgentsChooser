CREATE TABLE IF NOT EXISTS `player_agents`
(
	`account_id` INT UNSIGNED NOT NULL,
	`ct_agent` VARCHAR(128) NOT NULL,
	`t_agent` VARCHAR(128) NOT NULL,
	PRIMARY KEY (`account_id`)
)
ENGINE = InnoDB;

INSERT INTO `player_agents` (`account_id`, `ct_agent`, `t_agent`) VALUES ('%d', '', '');

SELECT `ct_agent`, `t_agent` FROM `player_agents` WHERE `account_id` = '%d' LIMIT 1;

UPDATE `player_agents` SET `ct_agent` = '%s', `t_agent` = '%s' WHERE `account_id` = '%d';
