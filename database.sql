-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           8.0.3-rc-log - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour tanoa
DROP DATABASE IF EXISTS `tanoa`;
CREATE DATABASE IF NOT EXISTS `tanoa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tanoa`;

-- Export de la structure de la table tanoa. companies
DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `plate` varchar(6) NOT NULL COMMENT 'Unique ID',
  `name` varchar(50) NOT NULL DEFAULT '',
  `owner` char(17) NOT NULL DEFAULT '' COMMENT 'PlayerUID',
  `type` varchar(20) NOT NULL DEFAULT '',
  `bank` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `members` text NOT NULL COMMENT 'Array',
  `INV_virtual` text NOT NULL COMMENT 'Array',
  `INV_arma` text NOT NULL COMMENT 'Array',
  `POS_x` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_y` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_z` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_direction` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Range [0-360(°)]',
  `link_percentage` tinyint(2) unsigned NOT NULL DEFAULT '20' COMMENT 'Range [0-70(%)]',
  `CONSTRUCTION_built` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `CONSTRUCTION_require` text NOT NULL COMMENT 'Array',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.companies : ~0 rows (environ)
DELETE FROM `companies`;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Export de la structure de la table tanoa. companies_bank_transactions
DROP TABLE IF EXISTS `companies_bank_transactions`;
CREATE TABLE IF NOT EXISTS `companies_bank_transactions` (
  `COMPANY_plate` varchar(6) NOT NULL,
  `TRANS_reason` varchar(25) NOT NULL,
  `TRANS_from` varchar(25) NOT NULL,
  `TRANS_date` varchar(25) NOT NULL,
  `TRANS_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean | 0 : withdraw | 1 : deposit',
  `TRANS_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  KEY `COMPANY_plate` (`COMPANY_plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.companies_bank_transactions : ~0 rows (environ)
DELETE FROM `companies_bank_transactions`;
/*!40000 ALTER TABLE `companies_bank_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies_bank_transactions` ENABLE KEYS */;

-- Export de la structure de la table tanoa. dynamic_markers
DROP TABLE IF EXISTS `dynamic_markers`;
CREATE TABLE IF NOT EXISTS `dynamic_markers` (
  `name` varchar(50) NOT NULL,
  `POS_X` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Y` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Z` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.dynamic_markers : ~0 rows (environ)
DELETE FROM `dynamic_markers`;
/*!40000 ALTER TABLE `dynamic_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamic_markers` ENABLE KEYS */;

-- Export de la structure de la table tanoa. factions
DROP TABLE IF EXISTS `factions`;
CREATE TABLE IF NOT EXISTS `factions` (
  `name` varchar(50) NOT NULL COMMENT 'ArmA3 side',
  `bank` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `history` text NOT NULL COMMENT 'Array',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.factions : ~4 rows (environ)
DELETE FROM `factions`;
/*!40000 ALTER TABLE `factions` DISABLE KEYS */;
INSERT INTO `factions` (`name`, `bank`, `history`) VALUES
	('CIV', 0, '"[]"'),
	('EAST', 0, '"[]"'),
	('GUER', 0, '"[]"'),
	('WEST', 0, '"[]"');
/*!40000 ALTER TABLE `factions` ENABLE KEYS */;

-- Export de la structure de la table tanoa. houses
DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
  `plate` mediumint(6) unsigned NOT NULL COMMENT 'Unique ID',
  `classname` varchar(50) NOT NULL DEFAULT '' COMMENT 'ArmA3 classname',
  `pid` char(17) NOT NULL DEFAULT '' COMMENT 'PlayerUID',
  `STOCK_virtual` text NOT NULL COMMENT 'Array',
  `STOCK_arma` text NOT NULL COMMENT 'Array',
  `POS_x` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_y` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_z` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `tenants` text NOT NULL COMMENT 'Array',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.houses : ~0 rows (environ)
DELETE FROM `houses`;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;

-- Export de la structure de la table tanoa. labo
DROP TABLE IF EXISTS `labo`;
CREATE TABLE IF NOT EXISTS `labo` (
  `plate` mediumint(6) unsigned NOT NULL COMMENT 'Unique ID',
  `owner` char(17) NOT NULL DEFAULT '' COMMENT 'PlayerUID',
  `type` varchar(50) NOT NULL DEFAULT '',
  `POS_x` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_y` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_z` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_direction` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Range [0-360(°)]',
  `CONSTRUCTION_BUILT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `CONSTRUCTION_REQUIRE` text NOT NULL COMMENT 'Array',
  `INV_virtual` text NOT NULL COMMENT 'Array',
  `EXTRA_process` text NOT NULL COMMENT 'Array',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.labo : ~0 rows (environ)
DELETE FROM `labo`;
/*!40000 ALTER TABLE `labo` DISABLE KEYS */;
/*!40000 ALTER TABLE `labo` ENABLE KEYS */;

-- Export de la structure de la table tanoa. land_atms
DROP TABLE IF EXISTS `land_atms`;
CREATE TABLE IF NOT EXISTS `land_atms` (
  `amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT 'ArmA3 classname',
  `POS_X` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Y` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Z` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.land_atms : ~0 rows (environ)
DELETE FROM `land_atms`;
/*!40000 ALTER TABLE `land_atms` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_atms` ENABLE KEYS */;

-- Export de la structure de la table tanoa. land_fuels
DROP TABLE IF EXISTS `land_fuels`;
CREATE TABLE IF NOT EXISTS `land_fuels` (
  `type` varchar(50) NOT NULL,
  `POS_X` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Y` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `POS_Z` float NOT NULL DEFAULT '0' COMMENT 'Position AGLS',
  `fuel_Diesel` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter',
  `fuel_SP95` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter',
  `fuel_SP98` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter',
  `fuel_Kerosene` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter',
  `fuel_GPL` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter',
  `fuel_BIO` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Liter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.land_fuels : ~0 rows (environ)
DELETE FROM `land_fuels`;
/*!40000 ALTER TABLE `land_fuels` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_fuels` ENABLE KEYS */;

-- Export de la structure de la table tanoa. players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `uid` char(17) NOT NULL COMMENT 'PlayerUID',
  `profileName` varchar(60) NOT NULL DEFAULT '',
  `RP_firstname` varchar(30) NOT NULL DEFAULT '' COMMENT 'Roleplay information',
  `RP_lastname` varchar(30) NOT NULL DEFAULT '' COMMENT 'Roleplay information',
  `RP_birth` varchar(20) NOT NULL DEFAULT '"[]"' COMMENT 'Roleplay information - Array',
  `RP_nationality` varchar(20) NOT NULL DEFAULT '' COMMENT 'Roleplay information',
  `RP_sexe` varchar(10) NOT NULL DEFAULT '' COMMENT 'Roleplay information',
  `RP_face` varchar(50) NOT NULL DEFAULT '' COMMENT 'Roleplay information',
  `DYN_markers` text NOT NULL COMMENT 'Array',
  `LEVEL_donator` enum('0','1','2') NOT NULL DEFAULT '0',
  `HEALTH_blood` smallint(4) unsigned NOT NULL DEFAULT '4000' COMMENT 'Range [0-4000]',
  `HEALTH_bleed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HEALTH_coma` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `POS_x` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_y` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_z` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_alive` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `POS_direction` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Range [0-360(°)]',
  `HEALTH_deseases` text NOT NULL COMMENT 'Array',
  `HEALTH_hunger` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT 'Range [0-100]',
  `HEALTH_thirst` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT 'Range [0-100]',
  `HEALTH_fatigue` double unsigned NOT NULL DEFAULT '0' COMMENT 'Range [0-1]',
  `HEALTH_alcool` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HEALTH_hurt` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `WEST_level` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0' COMMENT 'Faction rank (see Faction config to define ranks)',
  `GUER_level` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0' COMMENT 'Faction rank (see Faction config to define ranks)',
  `EAST_level` enum('0','1','2','3','4','5','6','7','8','9','10','11','12') NOT NULL DEFAULT '0' COMMENT 'Faction rank (see Faction config to define ranks)',
  `CIV_level` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT 'Faction rank (see Faction config to define ranks)',
  `JAIL_prison` varchar(2) NOT NULL DEFAULT '',
  `JAIL_cell` varchar(50) NOT NULL DEFAULT '',
  `JAIL_time` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Minuts',
  `JAIL_caution` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `JAIL_reason` varchar(50) NOT NULL DEFAULT '',
  `JAIL_escape` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `JAIL_gear` text NOT NULL COMMENT 'Array',
  `PHONE_number` varchar(10) NOT NULL DEFAULT '',
  `PHONE_contacts` text NOT NULL COMMENT 'Array',
  `PHONE_messages` text NOT NULL COMMENT 'Array',
  `PHONE_forfait` varchar(50) NOT NULL DEFAULT '' COMMENT 'See Phone config',
  `PHONE_blacklist` text NOT NULL COMMENT 'Array',
  `PHONE_annuaire` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `CIV_licenses` text NOT NULL COMMENT 'Array',
  `CIV_inventory` text NOT NULL COMMENT 'Array',
  `CIV_gear` text NOT NULL COMMENT 'Array',
  `TABLET_apps` text NOT NULL COMMENT 'Array',
  `WEST_gear` text NOT NULL COMMENT 'Array',
  `EAST_gear` text NOT NULL COMMENT 'Array',
  `WEST_inventory` text NOT NULL COMMENT 'Array',
  `WEST_licenses` text NOT NULL COMMENT 'Array',
  `EAST_inventory` text NOT NULL COMMENT 'Array',
  `EAST_licenses` text NOT NULL COMMENT 'Array',
  `GUER_gear` text NOT NULL COMMENT 'Array',
  `GUER_inventory` text NOT NULL COMMENT 'Array',
  `GUER_licenses` text NOT NULL COMMENT 'Array',
  `STATS_global_played` smallint(5) unsigned DEFAULT '0' COMMENT 'Total minuts played',
  `STATS_last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last connection',
  `STATS_first_connection` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'First connection',
  `CIV_cash` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `CIV_atm` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `GUER_cash` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `GUER_atm` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `EAST_cash` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `EAST_atm` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `WEST_cash` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  `WEST_atm` int(50) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.players : ~0 rows (environ)
DELETE FROM `players`;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Export de la structure de la table tanoa. ressources
DROP TABLE IF EXISTS `ressources`;
CREATE TABLE IF NOT EXISTS `ressources` (
  `name` varchar(50) NOT NULL,
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Money',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.ressources : ~0 rows (environ)
DELETE FROM `ressources`;
/*!40000 ALTER TABLE `ressources` DISABLE KEYS */;
/*!40000 ALTER TABLE `ressources` ENABLE KEYS */;

-- Export de la structure de la table tanoa. serverinfo
DROP TABLE IF EXISTS `serverinfo`;
CREATE TABLE IF NOT EXISTS `serverinfo` (
  `year` smallint(4) unsigned NOT NULL DEFAULT '2000',
  `month` tinyint(2) unsigned NOT NULL DEFAULT '12',
  `day` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hour` tinyint(2) unsigned NOT NULL DEFAULT '12',
  `minute` tinyint(2) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.serverinfo : ~0 rows (environ)
DELETE FROM `serverinfo`;
/*!40000 ALTER TABLE `serverinfo` DISABLE KEYS */;
INSERT INTO `serverinfo` (`year`, `month`, `day`, `hour`, `minute`) VALUES
	(2030, 10, 24, 12, 0);
/*!40000 ALTER TABLE `serverinfo` ENABLE KEYS */;

-- Export de la structure de la table tanoa. taxes
DROP TABLE IF EXISTS `taxes`;
CREATE TABLE IF NOT EXISTS `taxes` (
  `variable` varchar(50) NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Factor/Coef (Range [0-1])',
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.taxes : ~4 rows (environ)
DELETE FROM `taxes`;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` (`variable`, `value`) VALUES
	('gServer_tax_companies_building_multiplier', 1),
	('gServer_tax_companies_employee_multiplier', 1),
	('gServer_tax_house_multiplier', 1),
	('gServer_tax_salary_multiplier', 1);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;

-- Export de la structure de la table tanoa. vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `plate` mediumint(6) unsigned NOT NULL COMMENT 'Unique ID',
  `classname` varchar(50) NOT NULL COMMENT 'ArmA3 classname',
  `pid` char(17) NOT NULL COMMENT 'PlayerUID',
  `side` varchar(10) NOT NULL DEFAULT 'CIV' COMMENT 'ArmA3 side',
  `type` varchar(50) NOT NULL DEFAULT 'CAR' COMMENT 'Subtype',
  `inventory` text NOT NULL COMMENT 'Array',
  `displayname` varchar(50) NOT NULL DEFAULT '' COMMENT 'Display name in garage. Can be changed by user',
  `HitPointsDamage` text NOT NULL COMMENT 'Array',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean | 0 : stored | 1 : out of garage',
  `assurance` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean',
  `fuel` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT 'Range [0-100(%)]',
  `fuel_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'Current fuel type in tank. (only stored if not default vehicle''s fuel)',
  `POS_store_x` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_store_y` float DEFAULT '0' COMMENT 'Position ATL',
  `POS_store_z` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_x` float unsigned NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_y` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_z` float NOT NULL DEFAULT '0' COMMENT 'Position ATL',
  `POS_direction` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Range [0-360(°)]',
  `occuped` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Boolean | 0 : free to use | 1 : cannot be accessed',
  PRIMARY KEY (`plate`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table tanoa.vehicles : ~0 rows (environ)
DELETE FROM `vehicles`;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
