ALTER TABLE `apps`
	ADD COLUMN `type` varchar(32) NOT NULL DEFAULT 'ios' AFTER `uid`;
ALTER TABLE `deployments_versions`
	ADD COLUMN `num_version` int(10) unsigned NOT NULL DEFAULT '0' AFTER `app_version`;

UPDATE `versions` SET `version` = '0.3.0' WHERE `type` = '1';
