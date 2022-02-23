-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.25 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table stock_check.tasks
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_group` smallint NOT NULL DEFAULT '0',
  `task` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table stock_check.tasks: ~87 rows (approximately)
DELETE FROM `tasks`;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `task_group`, `task`) VALUES
	(1, 0, 'Clock in'),
	(2, 0, 'Coffee Machine turned on and check for pressure'),
	(3, 0, 'Cafe phone turned and on charge if needed'),
	(4, 0, 'Deliveroo and just eat terminals switched on'),
	(5, 0, 'Block B unlocked and disalarmed'),
	(6, 0, 'Block C unlocked and disalarmed'),
	(7, 0, 'Block D unlocked and disalarmed'),
	(8, 0, 'Paisley room unlocked'),
	(9, 0, 'Tables and chairs put outside as per plan. (dependant on weather)'),
	(10, 0, 'All surfaces. and tables disinfected'),
	(11, 0, 'Breakfast menus cleaned and placed on tables and main counter'),
	(12, 0, 'All Interior windows opened. (dependant on weather)'),
	(13, 0, 'Heating put on (Dependant on weather)'),
	(14, 0, 'Speakers on charge and connected'),
	(15, 0, 'Drinks fridge fully stocked no food items visible'),
	(16, 0, 'Kithcen Extractor fan on '),
	(17, 0, 'Fridges checked for expired or incorrectly food add any comments below'),
	(18, 0, 'Both sink areas cleared of any dishes'),
	(19, 0, 'Dishwasher empty'),
	(20, 0, 'Display fridge temp Checked. Insert below'),
	(21, 0, 'Fridge 1 Temp checked. Insert Below'),
	(22, 0, 'Fridge 2 Temp checked. Insert Below 3.4'),
	(23, 0, 'Kitchen Fridge temp checked. Insert below'),
	(24, 0, 'Back up fridge temp checked. Insert Below'),
	(25, 0, 'Bin liners in all bins'),
	(26, 0, 'Recycling items put into the cafe recycling bin'),
	(27, 0, 'A Board put outside'),
	(28, 1, 'Full tub of sliced Halloumi'),
	(29, 1, 'Leaves washed and prepped'),
	(30, 1, 'Two Sliced Onion'),
	(31, 1, '8 Sliced tomatoes for Burgers'),
	(32, 0, '6 Halved Tomatoes for Breakfasts\''),
	(33, 1, '6 portion of side salad.'),
	(34, 1, '6 Tuna Melt Panini '),
	(35, 1, 'All Panini to have date of preperation on'),
	(36, 1, '4 Cheese and Tomato Panini'),
	(37, 1, '4 Fellafel Paninii'),
	(38, 1, '4 Chicken Pesto'),
	(39, 1, '2 Sweet Chilli Chicken'),
	(40, 1, '4 Pepperoni Pizza Panini'),
	(41, 1, '4 Sundried tomato Panini'),
	(42, 1, 'Full conatiner of Knife and forks wrapped in Napkins'),
	(43, 2, 'Clean dishes put away.'),
	(44, 2, 'Coffee Machine cleaned and switched off'),
	(45, 2, 'Cafe phone on charge'),
	(46, 2, 'Deliveroo and just eat terminals closed for the day. Deliveroo terminal on charge'),
	(47, 2, 'Tables, chairs, bin, board and umbrella brought inside'),
	(48, 2, 'All surfaces. and tables disinfected'),
	(49, 2, 'All menus collected and disinfected'),
	(50, 2, 'All Interior windows closedv'),
	(51, 2, 'Fridge checked for correctly sealed and dated items'),
	(52, 2, 'temperature gauge in all fridges'),
	(53, 2, 'Extractor fan off'),
	(54, 2, 'All fridges are switched on and runnig. '),
	(55, 2, 'All other kithchen appliances are switched off'),
	(56, 2, 'All bins emptied'),
	(57, 2, 'Dish washer loaded '),
	(58, 2, 'All dirty tea towels and oven gloves put in a bag to be washed'),
	(59, 2, 'Staff operating area hoovered or swept'),
	(60, 2, 'Shop floor hoovered or swept'),
	(61, 2, 'Toaster, Waffle machine, Payment pad, Panini press all cleaned and wiped.'),
	(62, 2, 'Beans from slow cooker put into display fridge,'),
	(63, 2, 'Refill Coffee grinder.'),
	(64, 2, 'Restock sugar sachets.'),
	(65, 2, 'Cash out done'),
	(66, 1, '6 Halved Tomatoes for Breakfasts\''),
	(67, 1, '24 Part Cooked Pork Sausages'),
	(68, 1, '32 Part cooked Bacon'),
	(69, 1, 'NEED TO DECIDE PROCESS FOR BEANS!'),
	(70, 1, '1 Container of part cooked mushrooms with Vegan butter '),
	(71, 1, '8 Rolls buttered and covered '),
	(72, 1, 'minimum of 6 Croissants'),
	(73, 1, 'minimum of 9 White Cookies'),
	(74, 1, 'minimum of 9 Vegan Dark Cookies'),
	(75, 1, 'minimum of 9 Choc Banana Bread'),
	(76, 1, 'All available macaroons on display'),
	(77, 1, 'minimum of 6 Vegan Brownies'),
	(78, 1, 'Chocolate powder shaker refilled'),
	(79, 1, 'Icing sugar shaker refilled.'),
	(80, 1, '4 pints of Waffle Mix'),
	(81, 1, '4 Pints of Pancake mix'),
	(82, 1, '4 Portions of Chantily Cream'),
	(83, 1, '2 Portions of Vegan Chantily Cream'),
	(84, 1, '4 Portions of Salmon seperated'),
	(85, 1, '8 Pieces fried Chicken'),
	(86, 1, '6 Pieces of Griled Chicken'),
	(87, 1, '4 Portions of Plantain prepped.');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Dumping structure for table stock_check.task_responses
DROP TABLE IF EXISTS `task_responses`;
CREATE TABLE IF NOT EXISTS `task_responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `task_id` int NOT NULL,
  `timestamp` datetime NOT NULL,
  `response` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK1_user_id` (`user_id`),
  KEY `FK2_task_id` (`task_id`),
  CONSTRAINT `FK1_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK2_task_id` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table stock_check.task_responses: ~0 rows (approximately)
DELETE FROM `task_responses`;
/*!40000 ALTER TABLE `task_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_responses` ENABLE KEYS */;

-- Dumping structure for table stock_check.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_group` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table stock_check.user: ~2 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `firstname`, `lastname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `user_group`) VALUES
	(1, 'admin', 'admin', 'kAkN4H87BnXNH-Dxtta20T-tP17cN5-j', '$2y$13$4TIXcVp6GTlbV4t1Y9clk.X3LAZVgl.3ELFn8BfGnkjogMKRZoeUS', NULL, 'artrmart@gmail.com', 10, 1610058395, 1645513947, 'H-p5k5P-uwHCKt1ZNSD7sGWd5iH5Rnqg_1610058395', 1),
	(6, 'demo', 'demo', '0zZLYf7QJDLUVcER5BMLHIWuUQVMpiGh', '$2y$13$aUBX5Rz3nMYCx8pjBjO/LO7uMKxdrCsIhjnOg04YrpBP8w3mWEtKa', NULL, 'demo@demo.com', 10, 1645517710, 1645518559, 'I0qYW3W3SL9SdHWJ1J3Hr-TH48-xslGP_1645517710', 2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table stock_check.user_groups
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table stock_check.user_groups: ~3 rows (approximately)
DELETE FROM `user_groups`;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` (`id`, `group_name`) VALUES
	(1, 'Administrator'),
	(2, 'Staff'),
	(3, 'Manager');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
