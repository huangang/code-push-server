ALTER TABLE `apps`
	ADD COLUMN `type` varchar(32) NOT NULL DEFAULT 'ios' AFTER `uid`;

UPDATE `versions` SET `version` = '0.3.0' WHERE `type` = '1';
