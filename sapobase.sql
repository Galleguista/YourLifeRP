-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.20-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sapobase
CREATE DATABASE IF NOT EXISTS `sapobase` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sapobase`;

-- Dumping structure for table sapobase.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.addon_account: ~11 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('housing_black_money', 'Dinero Negro de las Casas', 0),
	('property_black_money', 'Argent Sale Propriété', 0),
	('society_ambulance', 'LSMC', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'LSPD', 1),
	('society_police2', 'SSPD', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table sapobase.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.addon_account_data: ~40 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(4, 'society_taxi', 1675, NULL),
	(5, 'society_ambulance', 0, NULL),
	(6, 'society_mechanic', 0, NULL),
	(7, 'society_police', 7000, NULL),
	(8, 'property_black_money', 0, 'steam:11000010a15ff73'),
	(9, 'property_black_money', 0, 'steam:110000103a62ad9'),
	(26, 'property_black_money', 0, 'steam:1100001037f0a22'),
	(27, 'property_black_money', 0, 'steam:1100001356d9f0f'),
	(28, 'property_black_money', 0, 'steam:110000146ae9cfb'),
	(29, 'housing_black_money', 0, 'steam:110000146ae9cfb'),
	(30, 'housing_black_money', 0, 'steam:11000010a15ff73'),
	(31, 'property_black_money', 0, 'steam:110000147a5d365'),
	(32, 'housing_black_money', 0, 'steam:110000147a5d365'),
	(33, 'society_police2', 0, NULL),
	(34, 'society_cyber', 0, NULL),
	(35, 'housing_black_money', 0, 'steam:11000014347f0d8'),
	(36, 'property_black_money', 0, 'steam:11000014347f0d8'),
	(37, 'housing_black_money', 0, 'steam:110000142d6a862'),
	(38, 'property_black_money', 0, 'steam:110000142d6a862'),
	(39, 'housing_black_money', 0, 'steam:110000103a62ad9'),
	(40, 'housing_black_money', 0, 'steam:110000136ae89d0'),
	(41, 'property_black_money', 1, 'steam:110000136ae89d0'),
	(42, 'property_black_money', 0, 'steam:11000014949569d'),
	(43, 'housing_black_money', 0, 'steam:11000014949569d'),
	(44, 'property_black_money', 0, 'steam:11000014043a89a'),
	(45, 'housing_black_money', 0, 'steam:11000014043a89a'),
	(46, 'property_black_money', 0, 'steam:110000149a69ca9'),
	(47, 'housing_black_money', 0, 'steam:110000149a69ca9'),
	(48, 'property_black_money', 0, 'steam:11000010fb3efe4'),
	(49, 'housing_black_money', 0, 'steam:11000010fb3efe4');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table sapobase.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.addon_inventory: ~23 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0),
	('property', 'Propriété', 0),
	('society_ambulance', 'LSMC', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'LSPD', 1),
	('society_police2', 'GUARDIA CIVIL', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table sapobase.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.addon_inventory_items: ~6 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(1, 'society_taxi', 'chips', 0, NULL),
	(2, 'housing', 'water', 0, 'steam:110000136ae89d0'),
	(3, 'society_police', 'water', 0, NULL),
	(4, 'society_mechanic', 'water', 0, NULL),
	(5, 'society_police', 'cannabis', 0, NULL),
	(6, 'society_ambulance', 'water', 0, NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table sapobase.arrests_list
CREATE TABLE IF NOT EXISTS `arrests_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table sapobase.arrests_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `arrests_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrests_list` ENABLE KEYS */;

-- Dumping structure for table sapobase.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- Dumping structure for table sapobase.bolos_list
CREATE TABLE IF NOT EXISTS `bolos_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sapobase.bolos_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `bolos_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolos_list` ENABLE KEYS */;

-- Dumping structure for table sapobase.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sapobase.bought_houses: ~1 rows (approximately)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
INSERT INTO `bought_houses` (`houseid`) VALUES
	(30);
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Dumping structure for table sapobase.characters_motels
CREATE TABLE IF NOT EXISTS `characters_motels` (
  `userIdentifier` varchar(50) NOT NULL,
  `motelData` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table sapobase.characters_motels: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters_motels` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_motels` ENABLE KEYS */;

-- Dumping structure for table sapobase.characters_storages
CREATE TABLE IF NOT EXISTS `characters_storages` (
  `storageId` varchar(255) NOT NULL,
  `storageData` longtext NOT NULL,
  PRIMARY KEY (`storageId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table sapobase.characters_storages: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_storages` ENABLE KEYS */;

-- Dumping structure for table sapobase.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.datastore: ~18 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0),
	('property', 'Propriété', 0),
	('society_ambulance', 'LSMC', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'LSPD', 1),
	('society_police2', 'GUARDIA CIVIL', 1),
	('society_taxi', 'Taxi', 1),
	('user_mask', 'Masque', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table sapobase.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.datastore_data: ~46 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(3, 'society_taxi', NULL, '{}'),
	(4, 'society_ambulance', NULL, '{}'),
	(5, 'society_mechanic', NULL, '{}'),
	(6, 'society_police', NULL, '{"weapons":[{"name":"WEAPON_SMG","count":0},{"name":"WEAPON_STUNGUN","count":0},{"name":"WEAPON_PISTOL","count":0},{"name":"WEAPON_MACHETE","count":0},{"name":"WEAPON_NIGHTSTICK","count":0},{"name":"WEAPON_COMBATPISTOL","count":0},{"name":"WEAPON_FLASHLIGHT","count":0},{"name":"WEAPON_PUMPSHOTGUN","count":0},{"name":"WEAPON_MACHINEPISTOL","count":0},{"name":"WEAPON_ASSAULTSMG","count":0}]}'),
	(7, 'property', 'steam:11000010a15ff73', '{"dressing":[{"label":"Pa casa","skin":{"skin_md_weight":50,"age_1":0,"headOverlay":[{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Blemishes","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"FacialHair","colourType":1},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Eyebrows","colourType":1},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Ageing","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Makeup","colourType":2},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Blush","colourType":2},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Complexion","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"SunDamage","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"Lipstick","colourType":1},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"MolesFreckles","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"ChestHair","colourType":1},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"BodyBlemishes","colourType":0},{"secondColour":0,"overlayOpacity":0.0,"overlayValue":255,"firstColour":0,"name":"AddBodyBlemishes","colourType":0}],"jaw_2":0,"chin_4":0,"hair_color_2":0,"glasses_1":0,"eyebrows_1":0,"mask_1":0,"pants_1":46,"bodyb_3":-1,"beard_1":0,"moles_2":0,"dad":3,"helmet_2":0,"torso_2":1,"model":1885233650,"ears_2":0,"lipstick_4":0,"sun_1":0,"mom":31,"beard_4":0,"makeup_4":0,"watches_1":-1,"hair_color_1":0,"arms_2":0,"nose_6":0,"pants_2":0,"age_2":0,"chin_1":0,"makeup_1":0,"hair_1":6,"nose_3":0,"makeup_2":0,"tshirt_1":15,"helmet_1":6,"headBlend":false,"bracelets_2":0,"cheeks_1":0,"beard_3":0,"decals_2":0,"beard_2":0,"lip_thickness":0,"chain_2":0,"watches_2":0,"neck_thickness":0,"bodyb_2":0,"tshirt_2":0,"complexion_2":0,"decals_1":0,"bproof_1":0,"headStructure":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"shoes_1":29,"mask_2":0,"lipstick_2":0,"ears_1":-1,"eye_color":0,"chest_2":0,"blush_1":0,"chin_3":0,"makeup_3":0,"blush_3":0,"bags_1":0,"face_md_weight":50,"blemishes_2":0,"blemishes_1":0,"bodyb_4":0,"moles_1":0,"eye_squint":0,"eyebrows_3":0,"chain_1":0,"glasses_2":0,"chest_3":0,"lipstick_1":0,"nose_1":0,"torso_1":45,"nose_2":0,"sun_2":0,"shoes_2":4,"jaw_1":0,"hairColor":[0,0],"hair_2":0,"bags_2":0,"lipstick_3":0,"chest_1":0,"bproof_2":0,"drawtextures":[["face",0],["masks",0],["hair",0],["torsos",0],["legs",2],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]],"cheeks_2":0,"props":{"1":["glasses",0],"2":["earrings",-1],"7":["braclets",-1],"0":["hats",-1],"5":["rhand",-1],"6":["watches",-1],"3":["mouth",-1],"4":["lhand",-1]},"arms":0,"drawables":{"1":["masks",0],"2":["hair",6],"0":["face",0],"10":["decals",0],"9":["vest",0],"11":["jackets",54],"7":["neck",0],"8":["undershirts",15],"5":["bags",0],"6":["shoes",29],"3":["torsos",12],"4":["legs",46]},"proptextures":[["hats",-1],["glasses",0],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]],"bodyb_1":-1,"eyebrows_2":0,"blush_2":0,"complexion_1":0,"eyebrows_4":0,"sex":0,"cheeks_3":0,"nose_4":0,"eyebrows_5":0,"eyebrows_6":0,"nose_5":0,"bracelets_1":-1,"chin_2":0}}]}'),
	(8, 'property', 'steam:110000103a62ad9', '{}'),
	(24, 'property', 'steam:1100001037f0a22', '{}'),
	(25, 'property', 'steam:1100001356d9f0f', '{}'),
	(26, 'property', 'steam:110000146ae9cfb', '{}'),
	(27, 'housing', 'steam:110000146ae9cfb', '{}'),
	(28, 'housing', 'steam:11000010a15ff73', '{}'),
	(29, 'housing', 'steam:110000147a5d365', '{}'),
	(30, 'property', 'steam:110000147a5d365', '{"dressing":[{"skin":{"lipstick_4":0,"arms":0,"mom":21,"hair_color_2":0,"arms_2":0,"chin_4":0,"blemishes_1":0,"skin_md_weight":50,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"mask_2":0,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":0,"beard_1":0,"nose_1":0,"bproof_2":0,"nose_2":0,"nose_6":0,"hair_color_1":0,"moles_2":0,"chest_2":0,"eye_color":0,"bracelets_1":-1,"mask_1":0,"eyebrows_2":0,"makeup_2":0,"helmet_2":0,"torso_1":8,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"chain_1":0,"bracelets_2":0,"tshirt_1":2,"face_md_weight":50,"shoes_1":22,"bodyb_3":-1,"cheeks_1":0,"lipstick_1":0,"eyebrows_4":0,"blemishes_2":0,"ears_2":0,"glasses_1":0,"pants_1":2,"shoes_2":1,"makeup_3":0,"chest_1":0,"bodyb_4":0,"age_1":0,"lipstick_3":0,"eyebrows_1":0,"pants_2":9,"makeup_4":0,"neck_thickness":0,"sun_1":0,"hair_2":0,"hair_1":0,"lipstick_2":0,"bags_1":0,"chin_3":0,"jaw_1":0,"bags_2":0,"beard_2":0,"complexion_1":0,"cheeks_3":0,"eyebrows_3":0,"eyebrows_5":0,"lip_thickness":0,"eyebrows_6":0,"complexion_2":0,"torso_2":4,"ears_1":-1,"chain_2":0,"blush_2":0,"tshirt_2":0,"cheeks_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"nose_5":0,"chin_1":0,"beard_4":0,"helmet_1":-1,"dad":0,"nose_4":0,"blush_3":0,"decals_2":0},"label":"Blod oficial"},{"skin":{"lipstick_4":0,"arms":0,"mom":23,"hair_color_2":0,"arms_2":0,"chin_4":0,"model":1885233650,"blemishes_1":0,"skin_md_weight":50,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"props":{"7":["braclets",-1],"6":["watches",-1],"5":["rhand",-1],"4":["lhand",-1],"3":["mouth",-1],"2":["earrings",-1],"1":["glasses",0],"0":["hats",-1]},"mask_2":0,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":0,"beard_1":0,"nose_1":0,"bproof_2":0,"nose_2":0,"nose_6":0,"hair_color_1":0,"moles_2":0,"chest_2":0,"eye_color":0,"face_md_weight":50,"bracelets_1":-1,"mask_1":0,"blush_2":0,"drawables":{"10":["decals",0],"11":["jackets",8],"3":["torsos",0],"2":["hair",7],"1":["masks",0],"0":["face",0],"7":["neck",0],"6":["shoes",0],"5":["bags",0],"4":["legs",0],"9":["vest",0],"8":["undershirts",0]},"eyebrows_2":0,"makeup_2":0,"helmet_2":0,"blemishes_2":0,"torso_1":8,"lipstick_1":0,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"ears_2":0,"headBlend":false,"chain_1":0,"bracelets_2":0,"tshirt_1":0,"chest_1":0,"shoes_1":0,"age_1":0,"cheeks_1":0,"chin_3":0,"eyebrows_4":0,"pants_2":0,"neck_thickness":0,"glasses_1":0,"pants_1":0,"shoes_2":0,"makeup_3":0,"bodyb_4":0,"headStructure":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"hair_2":0,"hairColor":[0,0],"eyebrows_1":0,"beard_2":0,"makeup_4":0,"eyebrows_5":0,"sun_1":0,"chin_1":0,"headOverlay":[{"firstColour":0,"overlayOpacity":1.0,"name":"Blemishes","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":0.0,"name":"FacialHair","secondColour":0,"overlayValue":255,"colourType":1},{"firstColour":0,"overlayOpacity":1.0,"name":"Eyebrows","secondColour":0,"overlayValue":255,"colourType":1},{"firstColour":0,"overlayOpacity":1.0,"name":"Ageing","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":1.0,"name":"Makeup","secondColour":0,"overlayValue":255,"colourType":2},{"firstColour":0,"overlayOpacity":1.0,"name":"Blush","secondColour":0,"overlayValue":255,"colourType":2},{"firstColour":0,"overlayOpacity":1.0,"name":"Complexion","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":1.0,"name":"SunDamage","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":1.0,"name":"Lipstick","secondColour":0,"overlayValue":255,"colourType":2},{"firstColour":0,"overlayOpacity":1.0,"name":"MolesFreckles","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":1.0,"name":"ChestHair","secondColour":0,"overlayValue":255,"colourType":1},{"firstColour":0,"overlayOpacity":1.0,"name":"BodyBlemishes","secondColour":0,"overlayValue":255,"colourType":0},{"firstColour":0,"overlayOpacity":1.0,"name":"AddBodyBlemishes","secondColour":0,"overlayValue":255,"colourType":0}],"lipstick_2":0,"bags_1":0,"bags_2":0,"jaw_1":0,"ears_1":-1,"tshirt_2":0,"drawtextures":[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",4]],"cheeks_3":0,"eyebrows_3":0,"torso_2":4,"lip_thickness":0,"eyebrows_6":0,"nose_5":0,"proptextures":[["hats",-1],["glasses",0],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]],"complexion_2":0,"chain_2":0,"hair_1":7,"lipstick_3":0,"cheeks_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"bodyb_3":-1,"complexion_1":0,"beard_4":0,"helmet_1":-1,"dad":0,"nose_4":0,"blush_3":0,"decals_2":0},"label":"11"},{"skin":{"lipstick_4":0,"arms":86,"mom":21,"hair_color_2":0,"arms_2":0,"chin_4":0,"blemishes_1":0,"skin_md_weight":28,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"mask_2":11,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":24,"beard_1":0,"nose_1":0,"bproof_2":4,"nose_2":0,"nose_6":0,"hair_color_1":10,"moles_2":0,"chest_2":0,"eye_color":0,"bracelets_1":-1,"mask_1":59,"eyebrows_2":0,"makeup_2":0,"helmet_2":3,"torso_1":226,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"chain_1":0,"bracelets_2":0,"tshirt_1":15,"face_md_weight":55,"shoes_1":39,"lipstick_1":0,"bags_2":0,"blemishes_2":0,"eyebrows_4":0,"complexion_1":0,"ears_2":0,"glasses_1":0,"pants_1":49,"shoes_2":0,"makeup_3":0,"chest_1":0,"age_1":0,"hair_2":0,"pants_2":6,"eyebrows_1":0,"neck_thickness":1,"makeup_4":0,"cheeks_1":0,"sun_1":0,"lipstick_3":0,"bodyb_4":0,"lipstick_2":0,"bags_1":0,"chin_3":0,"jaw_1":-1,"hair_1":81,"complexion_2":0,"eyebrows_5":0,"cheeks_3":0,"eyebrows_3":0,"chin_1":0,"lip_thickness":0,"eyebrows_6":0,"torso_2":5,"beard_2":0,"bodyb_3":-1,"chain_2":0,"blush_2":0,"tshirt_2":0,"cheeks_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"nose_5":0,"ears_1":-1,"decals_2":0,"helmet_1":-1,"dad":3,"nose_4":0,"blush_3":0,"beard_4":0},"label":"COMBATE FULL"},{"skin":{"lipstick_4":0,"arms":86,"mom":21,"hair_color_2":0,"arms_2":0,"chin_4":0,"blemishes_1":0,"skin_md_weight":28,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"mask_2":11,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":12,"beard_1":0,"nose_1":0,"bproof_2":4,"nose_2":0,"nose_6":0,"hair_color_1":10,"moles_2":0,"chest_2":0,"eye_color":0,"bracelets_1":-1,"mask_1":59,"eyebrows_2":0,"makeup_2":0,"helmet_2":3,"lipstick_1":0,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"chain_1":0,"bracelets_2":0,"bodyb_3":-1,"face_md_weight":55,"shoes_1":55,"eyebrows_1":0,"bags_2":0,"blemishes_2":0,"eyebrows_4":0,"ears_2":0,"chest_1":0,"glasses_1":0,"pants_1":62,"shoes_2":4,"makeup_3":0,"complexion_1":0,"age_1":0,"pants_2":8,"neck_thickness":1,"hair_2":0,"cheeks_1":0,"makeup_4":0,"lipstick_3":0,"sun_1":0,"chin_1":0,"bodyb_4":0,"lipstick_2":0,"bags_1":0,"chin_3":0,"jaw_1":-1,"torso_2":1,"eyebrows_5":0,"hair_1":81,"cheeks_3":0,"eyebrows_3":0,"tshirt_1":10,"lip_thickness":0,"eyebrows_6":0,"complexion_2":0,"beard_2":0,"blush_2":0,"chain_2":0,"torso_1":227,"tshirt_2":0,"cheeks_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"nose_5":0,"ears_1":-1,"decals_2":0,"helmet_1":-1,"dad":3,"nose_4":0,"blush_3":0,"beard_4":0},"label":"TRAJE OFICIAL"},{"skin":{"lipstick_4":0,"arms":86,"mom":21,"hair_color_2":0,"arms_2":0,"chin_4":0,"blemishes_1":0,"skin_md_weight":28,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"mask_2":11,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":12,"beard_1":0,"nose_1":0,"bproof_2":4,"nose_2":0,"nose_6":0,"hair_color_1":10,"moles_2":0,"chest_2":0,"eye_color":0,"bracelets_1":-1,"mask_1":59,"eyebrows_2":0,"makeup_2":0,"helmet_2":3,"lipstick_1":0,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"chain_1":0,"bracelets_2":0,"bodyb_3":-1,"face_md_weight":55,"blush_2":0,"torso_1":171,"hair_2":0,"blemishes_2":0,"eyebrows_4":0,"ears_2":0,"chest_1":0,"glasses_1":0,"pants_1":45,"shoes_2":3,"makeup_3":0,"age_1":0,"complexion_1":0,"pants_2":1,"neck_thickness":1,"eyebrows_1":0,"cheeks_1":0,"makeup_4":0,"lipstick_3":0,"sun_1":0,"bags_2":0,"chin_1":0,"lipstick_2":0,"bags_1":0,"chin_3":0,"jaw_1":-1,"complexion_2":0,"bodyb_4":0,"eyebrows_5":0,"cheeks_3":0,"eyebrows_3":0,"torso_2":4,"lip_thickness":0,"eyebrows_6":0,"hair_1":81,"tshirt_1":74,"beard_2":0,"chain_2":0,"tshirt_2":5,"decals_2":0,"cheeks_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"nose_5":0,"ears_1":-1,"shoes_1":20,"helmet_1":-1,"dad":3,"nose_4":0,"blush_3":0,"beard_4":0},"label":"d"},{"skin":{"lipstick_4":0,"complexion_1":0,"mom":21,"hair_color_2":0,"arms_2":0,"chin_4":0,"blemishes_1":0,"skin_md_weight":28,"watches_2":0,"bodyb_1":-1,"sun_2":0,"bodyb_2":0,"mask_2":11,"blush_1":0,"makeup_1":0,"age_2":0,"chin_2":0,"sex":0,"bproof_1":12,"beard_1":0,"nose_1":0,"bproof_2":4,"nose_2":0,"nose_6":0,"hair_color_1":10,"moles_2":0,"chest_2":0,"eye_color":0,"bracelets_1":-1,"mask_1":59,"eyebrows_2":0,"makeup_2":0,"helmet_2":3,"torso_1":8,"jaw_2":0,"eye_squint":0,"nose_3":0,"chest_3":0,"decals_1":0,"moles_1":0,"chain_1":0,"bracelets_2":0,"bodyb_3":-1,"face_md_weight":55,"shoes_1":22,"arms":86,"beard_2":0,"cheeks_1":0,"eyebrows_4":0,"blemishes_2":0,"ears_2":0,"glasses_1":0,"pants_1":2,"shoes_2":0,"makeup_3":0,"chest_1":0,"chin_3":0,"hair_1":81,"age_1":0,"eyebrows_1":0,"pants_2":3,"makeup_4":0,"neck_thickness":1,"sun_1":0,"lipstick_3":0,"hair_2":0,"lipstick_2":0,"bags_1":0,"bags_2":0,"jaw_1":-1,"nose_5":0,"chin_1":0,"eyebrows_5":0,"cheeks_3":0,"eyebrows_3":0,"bodyb_4":0,"lip_thickness":0,"eyebrows_6":0,"torso_2":5,"cheeks_2":0,"complexion_2":0,"chain_2":0,"tshirt_1":2,"tshirt_2":4,"blush_2":0,"watches_1":-1,"beard_3":0,"glasses_2":0,"lipstick_1":0,"beard_4":0,"ears_1":-1,"helmet_1":-1,"dad":3,"nose_4":0,"blush_3":0,"decals_2":0},"label":"sudare de los script love"}]}'),
	(31, 'society_police2', NULL, '{}'),
	(33, 'housing', 'steam:11000014347f0d8', '{}'),
	(34, 'property', 'steam:11000014347f0d8', '{}'),
	(35, 'housing', 'steam:110000142d6a862', '{}'),
	(36, 'property', 'steam:110000142d6a862', '{}'),
	(37, 'housing', 'steam:110000103a62ad9', '{}'),
	(38, 'user_mask', 'steam:11000010a15ff73', '{}'),
	(39, 'user_mask', 'steam:110000147a5d365', '{}'),
	(40, 'user_mask', 'steam:110000136ae89d0', '{}'),
	(41, 'property', 'steam:110000136ae89d0', '{"dressing":[{"label":"basurero","skin":{"age_1":0,"decals_1":0,"eyebrows_4":0,"complexion_1":0,"ears_1":-1,"eyebrows_2":0,"makeup_4":0,"arms":63,"bags_1":0,"makeup_2":0,"lipstick_1":0,"eye_color":0,"shoes_1":24,"blemishes_1":0,"torso_1":57,"tshirt_1":15,"sex":0,"chest_2":0,"mask_1":0,"age_2":0,"chest_3":0,"lipstick_3":0,"blush_2":0,"ears_2":-1,"sun_2":0,"glasses_1":0,"hair_color_1":0,"bproof_2":0,"bodyb_1":0,"eyebrows_3":0,"helmet_1":-1,"moles_2":0,"hair_color_2":0,"torso_2":0,"watches_2":0,"chain_1":0,"pants_2":0,"hair_1":0,"helmet_2":0,"moles_1":0,"makeup_3":0,"watches_1":-1,"arms_2":0,"sun_1":0,"blemishes_2":0,"shoes_2":0,"shoes":36,"skin":0,"beard_1":0,"tshirt_2":0,"hair_2":0,"mask_2":0,"lipstick_2":0,"bproof_1":0,"face":0,"beard_3":0,"lipstick_4":0,"bodyb_2":0,"chain_2":0,"decals_2":0,"blush_1":0,"beard_2":0,"blush_3":0,"beard_4":0,"makeup_1":0,"pants_1":36,"bags_2":0,"chest_1":0,"bracelets_1":-1,"eyebrows_1":0,"bracelets_2":0,"glasses_2":1,"complexion_2":0}}]}'),
	(42, 'housing', 'steam:110000136ae89d0', '{"weapons":[]}'),
	(43, 'user_mask', 'steam:11000014949569d', '{}'),
	(44, 'housing', 'steam:11000014949569d', '{"weapons":[]}'),
	(45, 'property', 'steam:11000014949569d', '{}'),
	(46, 'property', 'steam:11000014043a89a', '{}'),
	(47, 'housing', 'steam:11000014043a89a', '{}'),
	(48, 'user_mask', 'steam:11000014043a89a', '{}'),
	(49, 'housing', 'steam:110000149a69ca9', '{}'),
	(50, 'property', 'steam:110000149a69ca9', '{"dressing":[{"label":"CHILL","skin":{"age_1":0,"beard_2":0,"eyebrows_4":0,"complexion_1":0,"ears_1":-1,"eyebrows_2":0,"makeup_4":0,"arms":0,"bags_1":0,"makeup_2":0,"lipstick_1":0,"eye_color":0,"shoes_1":1,"tshirt_2":0,"torso_1":105,"tshirt_1":15,"sex":0,"chest_2":0,"bracelets_1":-1,"age_2":0,"chest_3":0,"lipstick_3":0,"blush_2":0,"ears_2":0,"sun_2":0,"glasses_1":0,"hair_color_1":0,"bproof_2":0,"beard_3":0,"eyebrows_3":0,"helmet_1":-1,"moles_2":0,"hair_color_2":0,"torso_2":0,"watches_2":0,"chain_1":0,"pants_2":0,"hair_1":11,"helmet_2":0,"moles_1":0,"makeup_3":0,"watches_1":-1,"arms_2":0,"sun_1":0,"blemishes_2":0,"shoes_2":0,"skin":0,"bags_2":0,"decals_1":0,"mask_1":0,"mask_2":0,"lipstick_2":0,"bproof_1":0,"face":0,"bodyb_1":0,"lipstick_4":0,"bodyb_2":0,"chain_2":0,"decals_2":0,"blush_1":0,"makeup_1":0,"blush_3":0,"hair_2":0,"blemishes_1":0,"pants_1":6,"chest_1":0,"beard_1":0,"beard_4":0,"eyebrows_1":0,"bracelets_2":0,"glasses_2":0,"complexion_2":0}}]}'),
	(51, 'user_mask', 'steam:110000149a69ca9', '{}'),
	(52, 'housing', 'steam:11000010fb3efe4', '{}'),
	(53, 'property', 'steam:11000010fb3efe4', '{}'),
	(54, 'user_mask', 'steam:11000010fb3efe4', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table sapobase.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sapobase.dpkeybinds: ~7 rows (approximately)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a15ff73', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001037f0a22', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001356d9f0f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146ae9cfb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000147a5d365', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014347f0d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000142d6a862', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table sapobase.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.fine_types: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (label, amount, category) VALUES
	('Mal uso del claxon', 1000, 0),
	('Cruzando ilegalmente una línea continua', 1500, 0),
	('Conducir en el lado equivocado de la carretera', 2000, 0),
	('Giro ilegal en U', 1000, 0),
	('Conducir ilegalmente fuera de la carretera', 2000, 0),
	('Rechazar una orden legal', 3000, 0),
	('Detener ilegalmente un vehículo', 1000, 0),
	('Estacionamiento ilegal', 2000, 0),
	('A falta de ceder a la derecha', 2000, 0),
	('Incumplimiento de la información del vehículo', 2000, 0),
	('No parar en una señal de Stop', 1500, 0),
	('No parar en un semaforo rojo', 1000, 0),
	('Paso ilegal', 1000, 0),
	('Conducir un vehículo ilegal', 5000, 0),
	('Conducir sin licencia', 3000, 0),
	('Accidente con fuga', 10000, 0),
	('Exceso de velocidad por < 5 mph', 1000, 0),
	('Exceso de velocidad por 5-15 mph', 1500, 0),
	('Exceso de velocidad por 15-30 mph', 2000, 0),
	('Exceso de velocidad por > 30 mph', 3000, 0),
	('Impedir el flujo de tráfico', 1000, 1),
	('Intoxicación pública', 2000, 1),
	('Conducta desordenada', 3000, 1),
	('Obstrucción de la justicia', 6000, 1),
	('Insultos hacia los civiles', 2000, 1),
	('Falta de respeto a un oficial', 5000, 1),
	('Amenaza verbal hacia un civil', 3000, 1),
	('Amenaza verbal hacia un oficial', 6000, 1),
	('Proporcionar información falsa', 15000, 1),
	('Intento de corrupción', 15000, 1),
	('Blandiendo un arma en los límites de la ciudad', 2000, 2),
	('Blandiendo un arma letal en los límites de la ciudad', 6000, 2),
	('Sin licencia de armas de fuego', 10000, 2),
	('Posesión de un arma ilegal', 20000, 2),
	('Posesión de herramientas de robo', 2000, 2),
	('Acoso y/o violacion', 10000, 2),
	('Intención de vender, comprar droga', 2000, 2),
	('Fabricación de una sustancia ilegal', 5000, 2),
	('Posesión de una sustancia ilegal', 2000, 2),
	('Secuestro de un Civilan', 20000, 2),
	('Secuestro de un Oficial', 100000, 2),
	('Robo', 30000, 2),
	('Robo de joyeria mano armada', 80000, 2),
	('Robo de banco mano armada', 500000, 2),
	('Robo a un civil', 20000, 3),
	('Robo a un oficial', 50000, 3),
	('Intento de asesinato de un civil', 300000, 3),
	('Intento de asesinato de un oficial', 500000, 3),
	('Asesinato de un civil', 1000000, 3),
	('Asesinato de un oficial', 5000000, 3),
	('Homicidio involuntario', 200000, 3),
	('Fraude', 80000, 2)
;
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table sapobase.gangmissions
CREATE TABLE IF NOT EXISTS `gangmissions` (
  `keyid` int(11) NOT NULL DEFAULT 0,
  `gang` longtext NOT NULL DEFAULT '{}',
  `mission` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.gangmissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangmissions` ENABLE KEYS */;

-- Dumping structure for table sapobase.guille_gangsv2
CREATE TABLE IF NOT EXISTS `guille_gangsv2` (
  `gang` varchar(50) DEFAULT NULL,
  `maxmembers` int(11) DEFAULT NULL,
  `ranks` longtext DEFAULT NULL,
  `gangStyle` int(11) DEFAULT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `members` mediumtext DEFAULT NULL,
  `shop` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.guille_gangsv2: ~0 rows (approximately)
/*!40000 ALTER TABLE `guille_gangsv2` DISABLE KEYS */;
/*!40000 ALTER TABLE `guille_gangsv2` ENABLE KEYS */;

-- Dumping structure for table sapobase.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

-- Dumping data for table sapobase.houselocations: ~0 rows (approximately)
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;

-- Dumping structure for table sapobase.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.items: ~187 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('absinthe', 'Absenta', 5, 0, 1),
	('aditives', 'Aditivos', 1, 0, 1),
	('bactery_waterBottle', 'Botella de agua con bacterias', 1, 0, 1),
	('bandage', 'Bandage', 2, 0, 1),
	('beer', 'Cerveza', 1, 0, 1),
	('blowpipe', 'Soplete', 1, 0, 1),
	('blueberry_fruit', 'Arándano', 1, 0, 1),
	('blueberry_package', 'Caja de arándanos', 1, 0, 1),
	('blueberry_seed', 'Semilla de Arándanos', 1, 0, 1),
	('bolcacahuetes', 'Bol de cacahuetes', 5, 0, 1),
	('bolchips', 'Bol de patatas', 5, 0, 1),
	('bolnoixcajou', 'Bol de anacardos', 5, 0, 1),
	('bolpistache', 'Bol de pistachos', 5, 0, 1),
	('bottleWater_package', 'Caja de Botellas de Agua', 1, 0, 1),
	('bread', 'Pan', 15, 0, 1),
	('canion', 'Cañon de arma', 1, 0, 1),
	('cannabis', 'Cannabis', 3, 0, 1),
	('carbon', 'Carbón', 1, 0, 1),
	('carbon_piece', 'Trozo de carbón', 1, 0, 1),
	('carokit', 'Kit de reparacion', 1, 0, 1),
	('carotool', 'Herramienta de reparacion de carroceria', 1, 0, 1),
	('champagne', 'Champan', 1, 0, 1),
	('chemicals', 'Quimicos', 1, 0, 1),
	('chemicalslisence', 'Licencia de productos químicos', 0, 0, 1),
	('chips', 'Patatas fritas', 5, 0, 1),
	('chocolate', 'Chocolate', 10, 0, 1),
	('cigarett', 'Cigarro', 20, 0, 1),
	('clip', 'Cargador', 1, 0, 1),
	('coca', 'Cocaina', 1, 0, 1),
	('cocacola', 'Coca-cola', 15, 0, 1),
	('cocaplant', 'Planta de Cocaina', 1, 0, 1),
	('cocaseed', 'Semilla de Cocaina', 1, 0, 1),
	('cocawithout', 'Cocaina sin aditivos', 1, 0, 1),
	('coca_leaf', 'Hoja de Coca', 3, 0, 1),
	('cocidoabuela', 'Cocidoabuela', 1, 0, 1),
	('coffe', 'Café', 15, 0, 1),
	('coke', 'Cocaina', 3, 0, 1),
	('copper', 'Cobre', 25, 0, 1),
	('croquettes', 'Comida de Perro', 20, 0, 1),
	('culett', 'Culata de arma', 1, 0, 1),
	('cupcake', 'Magdalena', 15, 0, 1),
	('cutted_wood', 'Madera cortada', 1, 0, 1),
	('diamond', 'Diamante', 5, 0, 1),
	('dirty_waterBottle', 'Botella de agua sucia', 1, 0, 1),
	('donut', 'Donut', 1, 0, 1),
	('dragonballcocktail', 'Dragon ball Cocktail', 5, 0, 1),
	('drpepper', 'Dr. Pepper', 5, 0, 1),
	('duffbeer', 'Duff beer', 5, 0, 1),
	('dvrcocktail', 'DVR cocktail', 5, 0, 1),
	('emerald', 'Esmeralda', 5, 0, 1),
	('energy', 'Bebida energética', 5, 0, 1),
	('essence', 'Gas', 1, 0, 1),
	('fabric', 'Tela', 1, 0, 1),
	('fertilizer_25', 'Fertilizante de 25', 1, 0, 1),
	('fertilizer_50', 'Fertilizante de 50', 1, 0, 1),
	('fish', 'Pez', 1, 0, 1),
	('fishbait', 'Cebo para peces', 30, 0, 1),
	('fishingrod', 'Caña de pescar', 2, 0, 1),
	('fixkit', 'Kit de reparacion', 1, 0, 1),
	('fixtool', 'Herramienta de reparacion', 1, 0, 1),
	('fountain', 'Fountain Firework', -1, 0, 1),
	('full_waterBottle', 'Botella de agua pura', 1, 0, 1),
	('gazbottle', 'Botella de gas', 1, 0, 1),
	('gintonic', 'Gin Tónic', 5, 0, 1),
	('gold', 'Barra de oro', 1, 0, 1),
	('gold_piece', 'Pepita de oro', 1, 0, 1),
	('grapperaisin', 'Racimo de uvas', 5, 0, 1),
	('grilletes', 'Esposas', 1, 0, 1),
	('gym_membership', 'Carnet del gym', 1, 0, 1),
	('hamburger', 'Hamburguesa', 15, 0, 1),
	('headbag', 'headbag', 1, 0, 1),
	('heroin', 'Heroina', 2, 0, 1),
	('hierro', 'Hierro', 1, 0, 1),
	('hifi', 'Altavoz', 1, 0, 1),
	('hookah', 'Hookah', 1, 0, 1),
	('hulkcockail', 'Hulk Cockail', 5, 0, 1),
	('hydrochloric_acid', 'Ácido clorhídico', 2, 0, 1),
	('ice', 'Hielo', 5, 0, 1),
	('icecream', 'Helado', 1, 0, 1),
	('icetea', 'Te helado', 15, 0, 1),
	('id_card', 'DNI', -1, 0, 1),
	('iron', 'Hierro', 25, 0, 1),
	('iron_piece', 'Fragmento de hierro', 1, 0, 1),
	('jager', 'Jägermeister', 5, 0, 1),
	('jagerbomb', 'Jägerbomb', 5, 0, 1),
	('jagercerbere', 'Jäger Cerberus', 3, 0, 1),
	('jamesbondcocktail', 'Jamesbond Cocktail', 5, 0, 1),
	('jewels', 'Joyas', 1, 0, 1),
	('jumelles', 'Prismaticos', 1, 0, 1),
	('jusfruit', 'Zumo de frutas', 5, 0, 1),
	('keys', 'Llaves de esposas', 1, 0, 1),
	('keys_master_key', 'Master Key', 1, 0, 1),
	('keys_master_key_single_use', 'Master Key (Single Use)', 1, 0, 1),
	('keys_missionrow_pd_front', 'Mission Row PD Key (Front)', 1, 0, 1),
	('leather', 'Cuero', 1, 0, 1),
	('leather_a', 'Piel', 1, 0, 1),
	('letter', 'Carta', -1, 0, 1),
	('license_drive', 'DRIVING LICENSE', -1, 0, 1),
	('license_weapon', 'WEAPON LICENSE', -1, 0, 1),
	('lighter', 'mechero', 1, 0, 1),
	('limonade', 'Limonada', 5, 0, 1),
	('lingot_carbon', 'Carbón procesado', 1, 0, 1),
	('lingot_gold', 'Lingote de oro', 1, 0, 1),
	('lingot_iron', 'Lingote de hierro', 1, 0, 1),
	('lingot_silver', 'Lingote de plata', 1, 0, 1),
	('lockpick', 'Lockpick', 1, 0, 1),
	('lockpickv2', 'Lockpick (V2)', 1, 0, 1),
	('lsa', 'LSA', 1, 0, 1),
	('lsd', 'LSD', 1, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 1),
	('martini', 'Martini', 5, 0, 1),
	('marvelcocktail', 'Marvel Cocktail', 5, 0, 1),
	('meat', 'Carne', 1, 0, 1),
	('meat_a', ' Carne de calidad', 1, 0, 1),
	('medikit', 'Medikit', 2, 0, 1),
	('menthe', 'Hoja de menta', 10, 0, 1),
	('meth', 'Metanfetamina', 3, 0, 1),
	('metreshooter', 'Chupito especial', 3, 0, 1),
	('milk', 'Leche', 15, 0, 1),
	('milkbottle', 'Botella de leche', 1, 0, 1),
	('milkdragon', 'Milk dragon', 5, 0, 1),
	('mixapero', 'Mezcla de aperitivos', 3, 0, 1),
	('mojito', 'Mojito', 5, 0, 1),
	('moneywash', 'Licencia de lavado de dinero negro', 0, 0, 1),
	('monster', 'Monster Energy', 1, 0, 1),
	('multi_key', 'Carrera callejera clave', 10, 0, 1),
	('net_cracker', 'Net Cracker', 2, 0, 1),
	('nevadito', 'Nevadito', 1, 0, 1),
	('onepunchman', 'One Punch Man Cocktail', 5, 0, 1),
	('oro', 'Oro', 1, 0, 1),
	('package', 'Paquete', -1, 0, 1),
	('pastacarbonara', 'Pasta Carbonara', 1, 0, 1),
	('patochebeer', 'Patoche Beer', 5, 0, 1),
	('phone', 'Movil', 1, 0, 1),
	('pine_processed', 'Madera de pino procesada', 1, 0, 1),
	('pine_wood', 'Madera de pino', 1, 0, 1),
	('pizza', 'Pizza', -1, 0, 1),
	('plata', 'Plata', 1, 0, 1),
	('pollution_waterBottle', 'Botella de agua contaminada', 1, 0, 1),
	('poppyresin', 'Resina de amapola', 1, 0, 1),
	('powerade', 'Powerade', 1, 0, 1),
	('protein_shake', 'Batido de proteinas', 1, 0, 1),
	('radio', 'radio', 1, 0, 1),
	('receipt', 'Recibo', 1, 0, 1),
	('rhum', 'Ron', 5, 0, 1),
	('rhumcoca', 'Ron-coca', 5, 0, 1),
	('rhumfruit', 'Ron-fruta', 5, 0, 1),
	('robberyuniform', 'UniformeCP', 5, 0, 1),
	('salt_waterBottle', 'Botella de agua salada', 1, 0, 1),
	('sandwich', 'Sandwich', 15, 0, 1),
	('saucisson', 'Salchicha', 5, 0, 1),
	('scarfacecolada', 'Scarface Colada', 5, 0, 1),
	('scope', 'Mira de arma', 1, 0, 1),
	('shark', 'Tiburón', -1, 0, 1),
	('shotburst', 'Shotburst Firework', -1, 0, 1),
	('shovel', 'Pala', 1, 0, 1),
	('sim_card', 'Sim Card', 10, 0, 1),
	('soda', 'Soda', 5, 0, 1),
	('sodium_hydroxide', 'Hidróxido de sodio', 2, 0, 1),
	('solo_key', 'Llave del reloj', 10, 0, 1),
	('sportlunch', 'Almuerzo deportivo', 1, 0, 1),
	('starburst', 'Starburst Firework', -1, 0, 1),
	('steel', 'Acero', 25, 0, 1),
	('sulfuric_acid', 'Ácido sulfurico', 2, 0, 1),
	('teqpaf', 'Chupito Tequila', 5, 0, 1),
	('tequila', 'Tequila', 15, 0, 1),
	('thermite', 'Thermite', 1, 0, 1),
	('thionyl_chloride', 'Cloruro de tionilo', 1, 0, 1),
	('tomato_fruit', 'Tomate', 1, 0, 1),
	('tomato_package', 'Caja de Tomates', 1, 0, 1),
	('tomato_seed', 'Semilla de Tomate', 1, 0, 1),
	('toxic_waterBottle', 'Botella de agua toxica', 1, 0, 1),
	('trailburst', 'Trailburst Firework', -1, 0, 1),
	('turtle', 'Tortuga', 3, 0, 1),
	('turtlebait', 'Cebo de tortuga', 10, 0, 1),
	('usbhacked', 'USB HACK', 1, 0, 1),
	('vino', 'Vino', 15, 0, 1),
	('vitodaiquiri', 'Vito Daiquiri', 5, 0, 1),
	('vodka', 'Vodka', 15, 0, 1),
	('water', 'Agua', 15, 0, 1),
	('waterBottle', 'Botella de agua', 1, 0, 1),
	('water_25', 'Garrafa de 25 litros', 1, 0, 1),
	('water_50', 'Garrafa de 50 litros', 1, 0, 1),
	('weapon_shit', 'Repuestos de armas', 1, 0, 1),
	('whisky', 'Whisky', 15, 0, 1),
	('whiskycoca', 'Whisky-coca', 5, 0, 1),
	('yoshishooter', 'Yoshi shooter', 5, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table sapobase.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.jobs: ~11 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'LSMC', 1),
	('garbage', 'Basurero', 0),
	('mailjob', 'GoPostal', 0),
	('mechanic', 'Mecanico', 1),
	('offambulance', 'LSMC', 1),
	('offmechanic', 'Mecanico', 1),
	('offpolice', 'LSPD', 1),
	('offtaxi', 'Taxi', 1),
	('police', 'LSPD', 1),
	('taxi', 'Taxi', 1),
	('unemployed', 'Desempleado', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table sapobase.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.job_grades: ~58 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 150, '{}', '{}'),
	(15, 'taxi', 0, 'recrue', 'Recrue', 200, '{}', '{}'),
	(16, 'taxi', 1, 'novice', 'Novice', 250, '{}', '{}'),
	(17, 'taxi', 2, 'experimente', 'Experimente', 300, '{}', '{}'),
	(18, 'taxi', 3, 'uber', 'Uber', 350, '{}', '{}'),
	(19, 'taxi', 4, 'boss', 'Patron', 500, '{}', '{}'),
	(68, 'police', 1, 'rango_1', 'Oficial I', 200, '{}', '{}'),
	(69, 'police', 2, 'rango_2', 'Oficial II', 250, '{}', '{}'),
	(70, 'police', 3, 'rango_3', 'Oficial III', 300, '{}', '{}'),
	(71, 'police', 4, 'rango_4', 'Oficial III+ / Inspector', 350, '{}', '{}'),
	(72, 'police', 5, 'rango_5', 'Teniente', 400, '{}', '{}'),
	(73, 'police', 6, 'rango_6', 'Capitán', 450, '{}', '{}'),
	(74, 'police', 7, 'rango_7', 'Comandante', 500, '{}', '{}'),
	(75, 'police', 8, 'rango_8', 'Jefe Supervisor', 550, '{}', '{}'),
	(76, 'police', 9, 'rango_9', 'Jefe Adjunto', 600, '{}', '{}'),
	(77, 'police', 10, 'boss', 'Jefe de Policía / Comisario', 650, '{}', '{}'),
	(78, 'ambulance', 0, 'rango_0', 'Paramedico', 250, '{}', '{}'),
	(79, 'ambulance', 1, 'rango_1', 'Medico Adjunto', 300, '{}', '{}'),
	(80, 'ambulance', 2, 'rango_2', 'Cirujano', 350, '{}', '{}'),
	(81, 'ambulance', 3, 'rango_3', 'Jefe de Sección', 400, '{}', '{}'),
	(82, 'ambulance', 4, 'rango_4', 'Jefe de Servicio', 450, '{}', '{}'),
	(83, 'ambulance', 5, 'rango_5', 'Sub-Jefe', 500, '{}', '{}'),
	(84, 'ambulance', 6, 'boss', 'Jefe', 550, '{}', '{}'),
	(85, 'mechanic', 0, 'recrue', 'Recluta', 250, '{}', '{}'),
	(86, 'mechanic', 1, 'novice', 'Novato', 300, '{}', '{}'),
	(87, 'mechanic', 2, 'experimente', 'Experimentado', 350, '{}', '{}'),
	(88, 'mechanic', 3, 'chief', 'Supervisor', 400, '{}', '{}'),
	(89, 'mechanic', 4, 'boss', 'Jefe', 500, '{}', '{}'),
	(158, 'offpolice', 0, 'rango_0', 'Fuera de servicio', 200, '', ''),
	(159, 'offpolice', 1, 'rango_1', 'Fuera de servicio', 250, '', ''),
	(160, 'offpolice', 2, 'rango_2', 'Fuera de servicio', 350, '', ''),
	(161, 'offpolice', 3, 'rango_3', 'Fuera de servicio', 400, '', ''),
	(162, 'offpolice', 4, 'rango_4', 'Fuera de servicio', 450, '', ''),
	(163, 'offpolice', 5, 'rango_5', 'Fuera de servicio', 500, '', ''),
	(164, 'offpolice', 6, 'rango_6', 'Fuera de servicio', 550, '', ''),
	(165, 'offpolice', 7, 'rango_7', 'Fuera de servicio', 600, '', ''),
	(166, 'offpolice', 8, 'rango_8', 'Fuera de servicio', 650, '', ''),
	(167, 'offpolice', 9, 'rango_9', 'Fuera de servicio', 700, '', ''),
	(168, 'offpolice', 10, 'boss', 'Fuera de servicio', 750, '', ''),
	(178, 'garbage', 0, 'employee', 'Empleado', 220, '{}', '{}'),
	(183, 'mailjob', 0, 'GoPostal', 'Delivery', 100, '{}', '{}'),
	(184, 'offmechanic', 0, 'recrue', 'Fuera de servicio', 250, '', ''),
	(185, 'offmechanic', 1, 'novice', 'Fuera de servicio', 300, '', ''),
	(186, 'offmechanic', 2, 'experimente', 'Fuera de servicio', 350, '', ''),
	(187, 'offmechanic', 3, 'chief', 'Fuera de servicio', 400, '', ''),
	(188, 'offmechanic', 4, 'boss', 'Fuera de servicio', 500, '', ''),
	(189, 'offambulance', 0, 'rango_0', 'Fuera de servicio', 200, '', ''),
	(190, 'offambulance', 1, 'rango_1', 'Fuera de servicio', 250, '', ''),
	(191, 'offambulance', 2, 'rango_2', 'Fuera de servicio', 350, '', ''),
	(192, 'offambulance', 3, 'rango_3', 'Fuera de servicio', 400, '', ''),
	(193, 'offambulance', 4, 'rango_4', 'Fuera de servicio', 450, '', ''),
	(194, 'offambulance', 5, 'rango_5', 'Fuera de servicio', 500, '', ''),
	(195, 'offambulance', 6, 'boss', 'Fuera de servicio', 600, '', ''),
	(196, 'offtaxi', 0, 'recrue', 'Fuera de servicio', 200, '', ''),
	(197, 'offtaxi', 1, 'novice', 'Fuera de servicio', 250, '', ''),
	(198, 'offtaxi', 2, 'experimente', 'Fuera de servicio', 300, '', ''),
	(199, 'offtaxi', 3, 'uber', 'Fuera de servicio', 350, '', ''),
	(200, 'offtaxi', 4, 'boss', 'Fuera de servicio', 400, '', '');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table sapobase.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Permiso de armas');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table sapobase.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.owned_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2, 'LowEndApartment', 2813, 1, 'steam:110000146ae9cfb');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table sapobase.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `garage` varchar(200) DEFAULT 'A',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping structure for table sapobase.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Dumping structure for table sapobase.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- Dumping data for table sapobase.phone_calls: ~28 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(122, '931-7011', '111', 1, '2021-05-06 17:00:00', 0),
	(123, '931-7011', '960-1214', 1, '2021-05-06 17:20:41', 1),
	(124, '960-1214', '931-7011', 0, '2021-05-06 17:20:41', 1),
	(125, '960-1214', '931-7011', 1, '2021-05-19 02:08:39', 0),
	(126, '931-7011', '960-1214', 0, '2021-05-19 02:08:39', 0),
	(127, '931-7011', '960-1214', 0, '2021-05-19 02:09:03', 0),
	(128, '960-1214', '931-7011', 1, '2021-05-19 02:09:03', 0),
	(129, '931-7011', '960-1214', 0, '2021-05-19 02:20:09', 0),
	(130, '960-1214', '931-7011', 1, '2021-05-19 02:20:09', 0),
	(131, '931-7011', '960-1214', 0, '2021-05-19 02:21:10', 0),
	(132, '960-1214', '931-7011', 1, '2021-05-19 02:21:10', 0),
	(133, '960-1214', '931-7011', 1, '2021-05-19 02:21:22', 0),
	(134, '931-7011', '960-1214', 0, '2021-05-19 02:21:22', 0),
	(135, '960-1214', '931-7011', 1, '2021-05-19 02:22:31', 0),
	(136, '931-7011', '960-1214', 0, '2021-05-19 02:22:31', 0),
	(137, '986-4937', '569--0459', 1, '2021-08-20 01:39:19', 0),
	(138, '569-0459', '986-4937', 0, '2021-08-20 01:40:11', 0),
	(139, '986-4937', '569-0459', 1, '2021-08-20 01:40:11', 0),
	(140, '986-4937', '569-0459', 1, '2021-08-20 02:39:34', 1),
	(141, '569-0459', '986-4937', 0, '2021-08-20 02:39:34', 1),
	(142, '569-0459', '986-4937', 0, '2021-08-20 02:39:34', 1),
	(143, '986-4937', '569-0459', 1, '2021-08-20 02:39:34', 1),
	(144, '706-4219', '986-4937', 1, '2021-08-21 12:53:54', 1),
	(145, '986-4937', '706-4219', 0, '2021-08-21 12:53:54', 1),
	(146, '706-4219', '986-4937', 1, '2021-08-21 13:06:37', 1),
	(147, '986-4937', '706-4219', 0, '2021-08-21 13:06:37', 1),
	(148, '706-4219', '986-4937', 1, '2021-08-21 13:06:38', 1),
	(149, '986-4937', '706-4219', 0, '2021-08-21 13:06:38', 1);
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table sapobase.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- Dumping structure for table sapobase.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping structure for table sapobase.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.properties: ~72 rows (approximately)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907}', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000),
	(43, 'MazeBankBuilding', 'Maze Bank Building', '{"x":-79.18,"y":-795.92,"z":43.35}', NULL, NULL, '{"x":-72.50,"y":-786.92,"z":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
	(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(47, 'ExecutiveRich', 'Executive Rich', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(48, 'ExecutiveCool', 'Executive Cool', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(53, 'LomBank', 'Lom Bank', '{"x":-1581.36,"y":-558.23,"z":34.07}', NULL, NULL, '{"x":-1583.60,"y":-555.12,"z":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
	(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(63, 'MazeBankWest', 'Maze Bank West', '{"x":-1379.58,"y":-499.63,"z":32.22}', NULL, NULL, '{"x":-1378.95,"y":-502.82,"z":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
	(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table sapobase.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table sapobase.store_balance
CREATE TABLE IF NOT EXISTS `store_balance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.store_balance: ~23 rows (approximately)
/*!40000 ALTER TABLE `store_balance` DISABLE KEYS */;
INSERT INTO `store_balance` (`id`, `market_id`, `income`, `title`, `amount`, `date`) VALUES
	(1, 'market_1', b'0', 'Money deposited', 999999, 1616006690),
	(2, 'market_1', b'1', 'Item purchased: 5 CellPhone', 2500, 1616006698),
	(3, 'market_1', b'1', 'Item purchased: 5 CellPhone', 2500, 1616006936),
	(4, 'market_1', b'0', 'Item sold: 1 CellPhone', 2500, 1616007070),
	(5, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007126),
	(6, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007128),
	(7, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007131),
	(8, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007131),
	(9, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007132),
	(10, 'market_1', b'1', 'Upgrade purchased: Stock capacity', 11000, 1616007133),
	(11, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007134),
	(12, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007135),
	(13, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007135),
	(14, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007135),
	(15, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007135),
	(16, 'market_1', b'1', 'Upgrade purchased: Truck capacity', 8000, 1616007135),
	(17, 'market_1', b'1', 'Upgrade purchased: Relationship', 10000, 1616007139),
	(18, 'market_1', b'1', 'Upgrade purchased: Relationship', 10000, 1616007139),
	(19, 'market_1', b'1', 'Upgrade purchased: Relationship', 10000, 1616007139),
	(20, 'market_1', b'1', 'Upgrade purchased: Relationship', 10000, 1616007140),
	(21, 'market_1', b'1', 'Upgrade purchased: Relationship', 10000, 1616007140),
	(22, 'market_1', b'0', 'Item sold: 1 CellPhone', 2500, 1617032567),
	(23, 'market_1', b'0', 'Item sold: 2 CellPhone', 5000, 1617032592);
/*!40000 ALTER TABLE `store_balance` ENABLE KEYS */;

-- Dumping structure for table sapobase.store_business
CREATE TABLE IF NOT EXISTS `store_business` (
  `market_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL DEFAULT '[]',
  `stock_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_earned` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_spent` int(10) unsigned NOT NULL DEFAULT 0,
  `goods_bought` int(10) unsigned NOT NULL DEFAULT 0,
  `distance_traveled` double unsigned NOT NULL DEFAULT 0,
  `total_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `customers` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`market_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping structure for table sapobase.store_jobs
CREATE TABLE IF NOT EXISTS `store_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) unsigned NOT NULL DEFAULT 0,
  `product` varchar(50) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.store_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `store_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_jobs` ENABLE KEYS */;

-- Dumping structure for table sapobase.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping structure for table sapobase.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table sapobase.twitter_likes: ~1 rows (approximately)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
	(137, 38, 171);
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table sapobase.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping structure for table sapobase.users
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `accounts` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastname` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL,
  `dateofbirth` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `callsign` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilepicture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `background` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `iban` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `furniture` longtext COLLATE utf8mb4_bin NOT NULL,
  `wardrobe` longtext COLLATE utf8mb4_bin NOT NULL,
  `house` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `bought_furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `skills` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `loaf_furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping structure for table sapobase.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table sapobase.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sapobase.vehicles: ~240 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table sapobase.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.vehicle_categories: ~11 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table sapobase.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table sapobase.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sapobase.weashops: ~4 rows (approximately)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 15000),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 250),
	(5, 'GunShop', 'WEAPON_MACHETE', 400),
	(9, 'GunShop', 'WEAPON_BAT', 600);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
