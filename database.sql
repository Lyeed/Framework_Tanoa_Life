SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `type` text NOT NULL,
  `item` text NOT NULL,
  `price` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `carid` int(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `name` varchar(64) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `bank` int(64) DEFAULT NULL,
  `plate` int(64) DEFAULT NULL,
  `POS_x` int(64) DEFAULT NULL,
  `POS_y` int(64) DEFAULT NULL,
  `POS_z` int(64) DEFAULT NULL,
  `POS_direction` int(64) DEFAULT NULL,
  `CONSTRUCTION_built` varchar(150) DEFAULT NULL,
  `CONSTRUCTION_require` varchar(150) DEFAULT NULL,
  `members` varchar(150) DEFAULT NULL,
  `INV_virtual` varchar(150) DEFAULT NULL,
  `INV_arma` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companies
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_markers`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_markers`;
CREATE TABLE `dynamic_markers` (
  `name` text NOT NULL,
  `POS_X` text NOT NULL,
  `POS_Y` text NOT NULL,
  `POS_Z` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic_markers
-- ----------------------------

-- ----------------------------
-- Table structure for `factions`
-- ----------------------------
DROP TABLE IF EXISTS `factions`;
CREATE TABLE `factions` (
  `name` text NOT NULL,
  `bank` text NOT NULL,
  `history` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factions
-- ----------------------------

-- ----------------------------
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `pid` varchar(64) DEFAULT NULL,
  `POS_x` int(64) DEFAULT NULL,
  `POS_y` int(64) DEFAULT NULL,
  `POS_z` int(64) DEFAULT NULL,
  `STOCK_virtual` varchar(150) DEFAULT NULL,
  `STOCK_arma` varchar(150) DEFAULT NULL,
  `tenants` varchar(150) DEFAULT NULL,
  `plate` int(50) DEFAULT NULL,
  `classname` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for `labo`
-- ----------------------------
DROP TABLE IF EXISTS `labo`;
CREATE TABLE `labo` (
  `plate` int(6) DEFAULT NULL,
  `owner` varchar(64) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `POS_x` int(50) DEFAULT NULL,
  `POS_y` int(50) DEFAULT NULL,
  `POS_z` int(50) DEFAULT NULL,
  `POS_direction` int(50) DEFAULT NULL,
  `EXTRA_process` text,
  `CONSTRUCTION_BUILT` text,
  `CONSTRUCTION_REQUIRE` varchar(100) DEFAULT NULL,
  `INV_virtual` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of labo
-- ----------------------------

-- ----------------------------
-- Table structure for `land_atms`
-- ----------------------------
DROP TABLE IF EXISTS `land_atms`;
CREATE TABLE `land_atms` (
  `POS_X` varchar(50) NOT NULL,
  `POS_Y` varchar(50) NOT NULL,
  `POS_Z` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of land_atms
-- ----------------------------

-- ----------------------------
-- Table structure for `land_fuels`
-- ----------------------------
DROP TABLE IF EXISTS `land_fuels`;
CREATE TABLE `land_fuels` (
  `type` text NOT NULL,
  `POS_X` varchar(50) NOT NULL,
  `POS_Y` varchar(50) NOT NULL,
  `POS_Z` varchar(50) NOT NULL,
  `fuel_Diesel` int(50) NOT NULL,
  `fuel_SP95` int(50) NOT NULL,
  `fuel_SP98` int(50) NOT NULL,
  `fuel_Kerosene` int(50) NOT NULL,
  `fuel_GPL` int(50) NOT NULL,
  `fuel_BIO` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of land_fuels
-- ----------------------------

-- ----------------------------
-- Table structure for `players`
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` varchar(64) NOT NULL,
  `profileName` varchar(32) NOT NULL,
  `RP_firstname` varchar(32) DEFAULT NULL,
  `RP_lastname` varchar(32) DEFAULT NULL,
  `RP_birth` text,
  `RP_nationality` varchar(32) DEFAULT NULL,
  `RP_sexe` varchar(32) DEFAULT NULL,
  `DYN_markers` text NOT NULL,
  `LEVEL_donator` enum('2','1','0') NOT NULL DEFAULT '0',
  `HEALTH_blood` int(3) NOT NULL DEFAULT '4000',
  `HEALTH_bleed` int(3) NOT NULL DEFAULT '0',
  `HEALTH_coma` tinyint(1) NOT NULL DEFAULT '0',
  `POS_x` int(50) NOT NULL DEFAULT '0',
  `POS_y` int(50) NOT NULL DEFAULT '0',
  `POS_z` int(50) NOT NULL DEFAULT '0',
  `POS_alive` int(50) NOT NULL DEFAULT '0',
  `POS_direction` int(50) NOT NULL DEFAULT '0',
  `HEALTH_deseases` varchar(100) NOT NULL DEFAULT '[[],[],[]]',
  `HEALTH_hunger` int(50) NOT NULL DEFAULT '100',
  `HEALTH_thirst` int(50) NOT NULL DEFAULT '100',
  `WEST_level` varchar(2) NOT NULL DEFAULT '0',
  `GUER_level` varchar(2) NOT NULL DEFAULT '0',
  `EAST_level` varchar(2) NOT NULL DEFAULT '0',
  `CIV_level` varchar(2) NOT NULL DEFAULT '1',
  `JAIL_prison` text,
  `JAIL_cell` text,
  `JAIL_time` int(50) DEFAULT NULL,
  `JAIL_caution` text,
  `JAIL_reason` text,
  `JAIL_escape` tinyint(1) NOT NULL DEFAULT '0',
  `JAIL_gear` text,
  `PHONE_number` varchar(50) DEFAULT NULL,
  `PHONE_contacts` varchar(100) DEFAULT NULL,
  `PHONE_messages` varchar(100) DEFAULT NULL,
  `PHONE_forfait` varchar(10) DEFAULT NULL,
  `PHONE_blacklist` varchar(100) DEFAULT NULL,
  `RP_face` varchar(32) DEFAULT NULL,
  `HEALTH_alcool` int(50) DEFAULT '0',
  `HEALTH_hurt` int(50) DEFAULT '100',
  `PHONE_annuaire` varchar(150) NOT NULL DEFAULT '"[]"',
  `CIV_licenses` text,
  `CIV_cash` int(50) DEFAULT '0',
  `CIV_atm` int(50) DEFAULT '15000',
  `CIV_inventory` text,
  `CIV_gear` text,
  `TABLET_apps` text,
  `WEST_gear` text,
  `EAST_gear` text,
  `WEST_inventory` text,
  `WEST_licenses` text,
  `EAST_inventory` text,
  `EAST_licenses` text,
  `GUER_gear` text,
  `GUER_inventory` text,
  `GUER_licenses` text,
  `STATS_global_played` varchar(50) DEFAULT '0',
  `HEALTH_fatigue` int(1) DEFAULT '0',
  `GUER_cash` int(50) NOT NULL DEFAULT '0',
  `GUER_atm` int(50) NOT NULL DEFAULT '50000',
  `EAST_cash` int(50) NOT NULL DEFAULT '0',
  `EAST_atm` int(50) NOT NULL DEFAULT '50000',
  `WEST_cash` int(50) NOT NULL DEFAULT '0',
  `WEST_atm` int(50) NOT NULL DEFAULT '50000',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players
-- ----------------------------

-- ----------------------------
-- Table structure for `ressources`
-- ----------------------------
DROP TABLE IF EXISTS `ressources`;
CREATE TABLE `ressources` (
  `name` text NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ressources
-- ----------------------------

-- ----------------------------
-- Table structure for `serverinfo`
-- ----------------------------
DROP TABLE IF EXISTS `serverinfo`;
CREATE TABLE `serverinfo` (
  `year` int(50) NOT NULL,
  `month` int(50) NOT NULL,
  `day` int(50) NOT NULL,
  `hour` int(50) NOT NULL,
  `minute` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serverinfo
-- ----------------------------
INSERT INTO `serverinfo` VALUES ('2018', '5', '30', '12', '0');

-- ----------------------------
-- Table structure for `taxes`
-- ----------------------------
DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes` (
  `variable` varchar(50) NOT NULL,
  `value` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taxes
-- ----------------------------
INSERT INTO `taxes` VALUES ('gServer_tax_companies_building_multiplier', '1');
INSERT INTO `taxes` VALUES ('gServer_tax_house_multiplier', '1');
INSERT INTO `taxes` VALUES ('gServer_tax_salary_multiplier', '1');
INSERT INTO `taxes` VALUES ('gServer_tax_companies_employee_multiplier', '1');

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `side` varchar(50) NOT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '''CAR''',
  `pid` varchar(64) NOT NULL,
  `inventory` varchar(100) DEFAULT NULL,
  `plate` int(50) NOT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `HitPointsDamage` varchar(100) DEFAULT NULL,
  `active` tinyint(3) DEFAULT '1',
  `assurance` int(3) DEFAULT '0',
  `POS_x` int(50) DEFAULT NULL,
  `POS_y` int(50) DEFAULT NULL,
  `POS_z` int(50) DEFAULT NULL,
  `POS_direction` int(50) DEFAULT NULL,
  `fuel` int(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `POS_store_x` int(50) DEFAULT '0',
  `POS_store_y` int(50) DEFAULT '0',
  `POS_store_z` int(50) DEFAULT '0',
  `occuped` int(2) DEFAULT '0',
  PRIMARY KEY (`pid`,`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
