-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table virsliga.auth_group: ~0 rows (approximately)

-- Dumping data for table virsliga.auth_group_permissions: ~0 rows (approximately)

-- Dumping data for table virsliga.auth_permission: ~28 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add virsliga2324', 7, 'add_virsliga2324'),
	(26, 'Can change virsliga2324', 7, 'change_virsliga2324'),
	(27, 'Can delete virsliga2324', 7, 'delete_virsliga2324'),
	(28, 'Can view virsliga2324', 7, 'view_virsliga2324'),
	(29, 'Can add upcoming game', 8, 'add_upcominggame'),
	(30, 'Can change upcoming game', 8, 'change_upcominggame'),
	(31, 'Can delete upcoming game', 8, 'delete_upcominggame'),
	(32, 'Can view upcoming game', 8, 'view_upcominggame'),
	(33, 'Can add team', 9, 'add_team'),
	(34, 'Can change team', 9, 'change_team'),
	(35, 'Can delete team', 9, 'delete_team'),
	(36, 'Can view team', 9, 'view_team'),
	(37, 'Can add team stats', 10, 'add_teamstats'),
	(38, 'Can change team stats', 10, 'change_teamstats'),
	(39, 'Can delete team stats', 10, 'delete_teamstats'),
	(40, 'Can view team stats', 10, 'view_teamstats');

-- Dumping data for table virsliga.auth_user: ~0 rows (approximately)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$720000$c8S8ZjDKqEaPqDU7TBlc2Z$5bY4NY+/xIzy3U17tBOSK8JKnnIMjyLcUt9e2mSBPgw=', '2024-06-06 20:52:37.334484', 1, 'raivo', '', '', 'blumenaus@inbox.lv', 1, 1, '2024-06-05 09:45:43.001988');

-- Dumping data for table virsliga.auth_user_groups: ~0 rows (approximately)

-- Dumping data for table virsliga.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping data for table virsliga.django_admin_log: ~0 rows (approximately)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-06-06 19:58:18.882469', '1', 'Dobele vs Ulbroka', 1, '[{"added": {}}]', 8, 1),
	(2, '2024-06-06 20:20:39.788675', '1', 'Dobele vs Ulbroka', 3, '', 8, 1),
	(3, '2024-06-06 20:25:32.735944', '2', 'Dobele vs Ulbroka', 1, '[{"added": {}}]', 8, 1),
	(4, '2024-06-06 20:44:01.284802', '3', 'Ulbroka vs Dobele', 1, '[{"added": {}}]', 8, 1),
	(5, '2024-06-06 20:48:53.816828', '4', 'gejs vs negejs', 1, '[{"added": {}}]', 8, 1),
	(6, '2024-06-06 20:49:17.543235', '4', 'gejs vs negejs', 3, '', 8, 1),
	(7, '2024-06-06 20:49:17.547469', '3', 'Ulbroka vs Dobele', 3, '', 8, 1),
	(8, '2024-06-06 20:49:17.551245', '2', 'Dobele vs Ulbroka', 3, '', 8, 1),
	(9, '2024-06-06 20:53:13.031279', '5', '123 vs tests', 1, '[{"added": {}}]', 8, 1),
	(10, '2024-06-06 20:53:44.624484', '5', '123 vs tests', 3, '', 8, 1),
	(11, '2024-06-06 20:55:44.357597', '6', 'Ulbroka vs Dobele', 1, '[{"added": {}}]', 8, 1),
	(12, '2024-06-06 20:56:27.852394', '7', '412 vs 123', 1, '[{"added": {}}]', 8, 1),
	(13, '2024-06-06 20:56:56.656673', '7', '412 vs 123', 3, '', 8, 1),
	(14, '2024-06-06 20:56:56.659644', '6', 'Ulbroka vs Dobele', 3, '', 8, 1),
	(15, '2024-06-06 21:00:22.355174', '2', 'justs', 1, '[{"added": {}}]', 4, 1),
	(16, '2024-06-06 21:00:44.343155', '2', 'justs', 3, '', 4, 1),
	(17, '2024-06-06 21:01:41.128776', '8', 'Dobele vs Ulbroka', 1, '[{"added": {}}]', 8, 1),
	(18, '2024-06-06 21:01:45.733541', '8', 'Dobele vs Ulbroka', 2, '[]', 8, 1),
	(19, '2024-06-06 21:03:06.685414', '9', 'Ulbroka vs Dobele', 1, '[{"added": {}}]', 8, 1),
	(20, '2024-06-06 21:08:43.090299', '10', 'Dobele vs Dobele', 1, '[{"added": {}}]', 8, 1),
	(21, '2024-06-06 21:09:16.781452', '10', 'Dobele vs Dobele', 2, '[{"changed": {"fields": ["Time"]}}]', 8, 1),
	(22, '2024-06-06 21:12:15.672409', '11', 'ZRHK TENAX Dobele vs SK Latgols', 1, '[{"added": {}}]', 8, 1),
	(23, '2024-06-06 21:24:43.110925', '8', 'Raivo vs Anja', 2, '[{"changed": {"fields": ["Team1", "Team2", "Venue", "Time", "Team1 image", "Team2 image"]}}]', 8, 1),
	(24, '2024-06-06 21:25:12.093156', '8', 'Raivo vs Anja', 2, '[{"changed": {"fields": ["Venue", "Time"]}}]', 8, 1),
	(25, '2024-06-06 21:25:42.798922', '8', 'Raivo vs Anja', 3, '', 8, 1),
	(26, '2024-06-06 21:26:02.527274', '11', 'ZRHK TENAX Dobele vs SK Latgols', 3, '', 8, 1),
	(27, '2024-06-06 21:26:02.531592', '10', 'Dobele vs Dobele', 3, '', 8, 1),
	(28, '2024-06-06 21:30:01.944198', '9', 'Ulbroka vs Dobele', 3, '', 8, 1),
	(29, '2024-06-06 22:23:17.547188', '12', 'ZRHK TENAX Dobele vs MSĢ', 1, '[{"added": {}}]', 8, 1),
	(30, '2024-06-06 22:23:54.032762', '12', 'ZRHK TENAX Dobele vs MSĢ', 2, '[{"changed": {"fields": ["Time"]}}]', 8, 1),
	(31, '2024-06-06 22:24:42.824559', '12', 'ZRHK TENAX Dobele vs MSĢ', 3, '', 8, 1),
	(32, '2024-06-06 22:32:26.091309', '13', 'ZRHK TENAX Dobele vs MSĢ', 1, '[{"added": {}}]', 8, 1),
	(33, '2024-06-06 22:33:44.638675', '13', 'ZRHK TENAX Dobele vs MSĢ', 3, '', 8, 1),
	(34, '2024-06-07 00:03:39.053512', '14', 'ZRHK TENAX Dobele vs MSĢ', 1, '[{"added": {}}]', 8, 1),
	(35, '2024-06-07 00:16:54.127254', '15', 'UpcomingGame object (15)', 1, '[{"added": {}}]', 8, 1),
	(36, '2024-06-07 00:22:46.063349', '16', 'UpcomingGame object (16)', 1, '[{"added": {}}]', 8, 1),
	(37, '2024-06-07 00:29:26.453159', '17', 'UpcomingGame object (17)', 1, '[{"added": {}}]', 8, 1),
	(38, '2024-06-07 00:43:43.599057', '14', 'UpcomingGame object (14)', 3, '', 8, 1),
	(39, '2024-06-07 00:44:04.776463', '18', 'UpcomingGame object (18)', 1, '[{"added": {}}]', 8, 1),
	(40, '2024-06-07 00:46:13.810175', '18', 'UpcomingGame object (18)', 3, '', 8, 1),
	(41, '2024-06-07 00:46:22.834111', '19', 'UpcomingGame object (19)', 1, '[{"added": {}}]', 8, 1),
	(42, '2024-06-07 00:50:52.966945', '20', 'UpcomingGame object (20)', 1, '[{"added": {}}]', 8, 1),
	(43, '2024-06-07 01:01:49.538763', '21', 'UpcomingGame object (21)', 1, '[{"added": {}}]', 8, 1),
	(44, '2024-06-07 04:16:10.907269', '21', 'UpcomingGame object (21)', 3, '', 8, 1),
	(45, '2024-06-07 06:38:14.607018', '1', 'UpcomingGame object (1)', 1, '[{"added": {}}]', 8, 1),
	(46, '2024-06-07 06:38:39.534499', '1', 'UpcomingGame object (1)', 2, '[{"changed": {"fields": ["Team1 score", "Team2 score"]}}]', 8, 1),
	(47, '2024-06-07 06:40:12.651459', '1', 'UpcomingGame object (1)', 3, '', 8, 1),
	(48, '2024-06-07 06:51:22.309209', '2', 'UpcomingGame object (2)', 1, '[{"added": {}}]', 8, 1),
	(49, '2024-06-07 06:51:31.560382', '2', 'UpcomingGame object (2)', 3, '', 8, 1),
	(50, '2024-06-07 06:52:06.442388', '3', 'UpcomingGame object (3)', 1, '[{"added": {}}]', 8, 1),
	(51, '2024-06-07 06:58:37.704776', '4', 'UpcomingGame object (4)', 1, '[{"added": {}}]', 8, 1),
	(52, '2024-06-07 07:10:09.717929', '4', 'UpcomingGame object (4)', 3, '', 8, 1),
	(53, '2024-06-07 07:10:09.721901', '3', 'UpcomingGame object (3)', 3, '', 8, 1),
	(54, '2024-06-07 07:12:08.259425', '5', 'UpcomingGame object (5)', 1, '[{"added": {}}]', 8, 1),
	(55, '2024-06-07 07:12:19.010397', '5', 'UpcomingGame object (5)', 3, '', 8, 1),
	(56, '2024-06-07 07:14:01.330042', '6', 'UpcomingGame object (6)', 1, '[{"added": {}}]', 8, 1),
	(57, '2024-06-07 07:47:21.815450', '6', '2 vs 8 - 2024-07-12 06:00:00+03:00', 2, '[{"changed": {"fields": ["Team1 score", "Team2 score"]}}]', 8, 1),
	(58, '2024-06-07 07:55:07.277391', '8', 'TeamStats object (8)', 2, '[{"changed": {"fields": ["Spelets", "Uzvarets", "Neizskirts", "Zaudets", "Guti varti", "Plus minus", "Punkti"]}}]', 10, 1),
	(59, '2024-06-07 07:55:30.582169', '8', 'TeamStats object (8)', 2, '[{"changed": {"fields": ["Spelets", "Uzvarets", "Neizskirts", "Zaudets", "Guti varti", "Plus minus", "Punkti"]}}]', 10, 1);

-- Dumping data for table virsliga.django_content_type: ~7 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'handball', 'team'),
	(10, 'handball', 'teamstats'),
	(8, 'handball', 'upcominggame'),
	(7, 'handball', 'virsliga2324'),
	(6, 'sessions', 'session');

-- Dumping data for table virsliga.django_migrations: ~19 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-06-05 08:27:17.151552'),
	(2, 'auth', '0001_initial', '2024-06-05 08:27:17.782988'),
	(3, 'admin', '0001_initial', '2024-06-05 08:27:17.893285'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-05 08:27:17.900903'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-05 08:27:17.907765'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-05 08:27:17.971373'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-05 08:27:18.020875'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-06-05 08:27:18.053327'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-06-05 08:27:18.060326'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-06-05 08:27:18.101412'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-06-05 08:27:18.105076'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-05 08:27:18.111206'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-06-05 08:27:18.162660'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-05 08:27:18.213126'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-06-05 08:27:18.231226'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-06-05 08:27:18.239338'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-05 08:27:18.289169'),
	(19, 'sessions', '0001_initial', '2024-06-05 08:27:18.334513'),
	(30, 'handball', '0001_initial', '2024-06-07 05:29:01.416669'),
	(31, 'handball', '0002_upcominggame', '2024-06-07 05:29:01.437045'),
	(32, 'handball', '0003_alter_upcominggame_team1_image_and_more', '2024-06-07 05:29:01.442543'),
	(33, 'handball', '0004_team', '2024-06-07 05:29:01.463043'),
	(34, 'handball', '0005_alter_upcominggame_team1_alter_upcominggame_team2', '2024-06-07 05:29:01.816694'),
	(35, 'handball', '0006_team_logo', '2024-06-07 05:29:01.841262'),
	(36, 'handball', '0007_remove_upcominggame_team1_image_and_more', '2024-06-07 05:29:01.864956'),
	(37, 'handball', '0008_upcominggame_team1_image_upcominggame_team2_image', '2024-06-07 05:29:01.887445'),
	(38, 'handball', '0009_remove_team_logo_remove_upcominggame_team1_and_more', '2024-06-07 05:29:02.073636'),
	(39, 'handball', '0010_remove_upcominggame_team1_logo_and_more', '2024-06-07 05:29:02.124038'),
	(40, 'handball', '0011_alter_team_team_name_teamstats', '2024-06-07 05:29:02.198041'),
	(41, 'handball', '0012_remove_teamstats_draws_remove_teamstats_games_played_and_more', '2024-06-07 05:48:24.655546'),
	(42, 'handball', '0013_alter_teamstats_guti_varti', '2024-06-07 05:48:24.661117');

-- Dumping data for table virsliga.django_session: ~1 rows (approximately)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('dshx2uctx45rn7hab9kq7r93xk6jp4ms', '.eJxVjEEOwiAQRe_C2hBox0Jduu8ZyMDMSNVAUtqV8e7apAvd_vfef6mA25rD1ngJM6mLsur0u0VMDy47oDuWW9WplnWZo94VfdCmp0r8vB7u30HGlr_1OQp69iN68dKxA0zgBs80oEgywEC-d9ERxQTGWLHOWNOPxACmE6veHw4kOGc:1sFK69:MLlHOH8WdMgpUWD-DYgL0dEd85ahzZSF8zNZm71TT14', '2024-06-20 20:52:37.339861');

-- Dumping data for table virsliga.handball_team: ~0 rows (approximately)
INSERT INTO `handball_team` (`id`, `team_name`) VALUES
	(1, 'ZRHK TENAX Dobele'),
	(2, 'MSĢ'),
	(3, 'ASK Zemessardze/LSPA'),
	(4, 'HK Ogre/HYDROX'),
	(5, 'Salaspils'),
	(6, 'HK Vaiņode'),
	(7, 'SK Latgols'),
	(8, 'HK S&A');

-- Dumping data for table virsliga.handball_upcominggame: ~0 rows (approximately)
INSERT INTO `handball_upcominggame` (`id`, `venue`, `time`, `team1_id`, `team2_id`, `team1_image`, `team2_image`, `team1_score`, `team2_score`) VALUES
	(6, 'Dobeles sporta halle', '2024-07-12 03:00:00.000000', 2, 8, 'images/2_QSGol8d.png', 'images/6.png', 15, 55);

-- Dumping data for table virsliga.team_stats: ~0 rows (approximately)
INSERT INTO `team_stats` (`id`, `vieta`, `team_id`, `spelets`, `uzvarets`, `neizskirts`, `zaudets`, `guti_varti`, `plus_minus`, `punkti`) VALUES
	(1, 1, 1, 0, 0, 0, 0, '0 : 0', 0, 0),
	(2, 2, 2, 0, 0, 0, 0, '0 : 0', 0, 0),
	(3, 3, 3, 0, 0, 0, 0, '0 : 0', 0, 0),
	(4, 4, 4, 0, 0, 0, 0, '0 : 0', 0, 0),
	(5, 5, 5, 0, 0, 0, 0, '0 : 0', 0, 0),
	(6, 6, 6, 0, 0, 0, 0, '0 : 0', 0, 0),
	(7, 7, 7, 0, 0, 0, 0, '0 : 0', 0, 0),
	(8, 8, 8, 0, 0, 0, 0, '0 : 0', 0, 0);

-- Dumping data for table virsliga.virslīga 12_13: ~9 rows (approximately)
INSERT INTO `virslīga 12_13` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'SK Latgols', 21, 16, 1, 4, '674 : 547', 127, 33),
	('2.', 'LSPA/NB SAN', 23, 16, 0, 7, '734 : 611', 123, 32),
	('3.', 'ZRHK TENAX Dobele', 20, 14, 1, 5, '620 : 520', 100, 29),
	('4.', 'RTU', 20, 8, 2, 10, '556 : 542', 14, 18),
	('5.', 'Jūrmalas Sports', 18, 8, 1, 9, '469 : 503', -34, 17),
	('6.', 'HK Ogre/HYDROX', 21, 8, 1, 12, '618 : 628', -10, 17),
	('7.', 'ASK/LU', 15, 7, 0, 8, '414 : 448', -34, 14),
	('8.', 'HK Vaiņode', 16, 7, 0, 9, '459 : 494', -35, 14),
	('9.', 'RVR/Garšu darbnīca', 20, 0, 0, 20, '468 : 719', -251, 0);

-- Dumping data for table virsliga.virslīga 13_14: ~10 rows (approximately)
INSERT INTO `virslīga 13_14` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 25, 23, 2, 0, '840 : 557', 283, 48),
	('2.', 'SK Latgols', 27, 17, 0, 10, '778 : 721', 57, 34),
	('3.', 'HK Ogre/HYDROX', 25, 16, 1, 8, '684 : 613', 71, 33),
	('4.', 'Celtnieks/LSPA', 25, 16, 1, 8, '763 : 623', 140, 33),
	('5.', 'Jūrmalas Sports', 20, 12, 0, 8, '502 : 466', 36, 24),
	('6.', 'HK Vaiņode', 19, 6, 0, 13, '480 : 545', -65, 12),
	('7.', 'LAT-96', 17, 4, 1, 12, '424 : 515', -91, 9),
	('8.', 'ASK/LU', 19, 4, 0, 15, '436 : 577', -141, 8),
	('9.', 'RTU', 18, 3, 1, 14, '379 : 510', -131, 7),
	('10.', 'Stopiņu NHK', 17, 2, 0, 15, '370 : 529', -159, 4);

-- Dumping data for table virsliga.virslīga 14_15: ~8 rows (approximately)
INSERT INTO `virslīga 14_15` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 26, 26, 0, 0, '914 : 570', 344, 52),
	('2.', 'Celtnieks/LSPA', 29, 20, 1, 8, '793 : 677', 116, 41),
	('3.', 'Jūrmalas Sports', 30, 17, 2, 11, '803 : 693', 110, 36),
	('4.', 'HK Ogre/Miandum', 29, 15, 0, 14, '798 : 776', 22, 30),
	('5.', 'SK Latgols', 23, 8, 1, 14, '607 : 668', -61, 17),
	('6.', 'HK Vaiņode', 23, 8, 0, 15, '640 : 738', -98, 16),
	('7.', 'ASK/LU', 23, 6, 0, 17, '596 : 766', -170, 12),
	('8.', 'LAT-98', 21, 0, 0, 21, '487 : 750', -263, 0);

-- Dumping data for table virsliga.virslīga 15_16: ~8 rows (approximately)
INSERT INTO `virslīga 15_16` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 24, 23, 0, 1, '785 : 535', 250, 46),
	('2.', 'Celtnieks Rīga', 26, 17, 2, 7, '680 : 606', 74, 36),
	('3.', 'HK Ogre/Miandum', 28, 14, 1, 13, '756 : 726', 30, 29),
	('4.', 'Jūrmalas Sports', 28, 14, 0, 14, '716 : 662', 54, 28),
	('5.', 'ASK Zemessardze/LSPA', 24, 11, 0, 13, '626 : 708', -82, 22),
	('6.', 'SK Latgols', 23, 7, 1, 15, '589 : 641', -52, 15),
	('7.', 'HK Vaiņode', 21, 7, 0, 14, '553 : 662', -109, 14),
	('8.', 'MSĢ/LAT-98', 20, 2, 0, 18, '488 : 653', -165, 4);

-- Dumping data for table virsliga.virslīga 16_17: ~8 rows (approximately)
INSERT INTO `virslīga 16_17` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 25, 21, 1, 3, '786 : 612', 174, 43),
	('2.', 'Celtnieks Rīga', 25, 19, 1, 5, '755 : 664', 91, 39),
	('3.', 'SK Latgols', 28, 17, 2, 9, '867 : 755', 112, 36),
	('4.', 'HK Ogre/Miandum', 29, 9, 2, 18, '764 : 834', -70, 20),
	('5.', 'Jūrmalas Sports', 24, 8, 2, 14, '605 : 672', -67, 18),
	('6.', 'MSĢ/LAT-98', 19, 7, 0, 12, '578 : 603', -25, 14),
	('7.', 'ASK Zemessardze/LSPA', 23, 6, 2, 15, '605 : 731', -126, 14),
	('8.', 'HK Vaiņode', 23, 6, 0, 17, '620 : 709', -89, 12);

-- Dumping data for table virsliga.virslīga 17_18: ~9 rows (approximately)
INSERT INTO `virslīga 17_18` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 24, 23, 0, 1, '852 : 644', 208, 46),
	('2.', 'Celtnieks Rīga', 23, 15, 1, 7, '705 : 631', 74, 31),
	('3.', 'SK Latgols', 27, 14, 1, 12, '805 : 794', 11, 29),
	('4.', 'HK Ogre/Miandum', 28, 11, 1, 16, '841 : 835', 6, 23),
	('5.', 'Jūrmalas Sports', 23, 9, 1, 13, '593 : 669', -76, 19),
	('6.', 'MSĢ/LAT-Hertz', 20, 8, 1, 11, '593 : 640', -47, 17),
	('7.', 'HK Vaiņode', 25, 7, 2, 16, '725 : 806', -81, 16),
	('8.', 'ASK Zemessardze/LSPA', 26, 7, 1, 18, '748 : 843', -95, 15),
	('9.', 'MSĢ/LAT-2000', 0, 0, 0, 0, '0 : 0', 0, 0);

-- Dumping data for table virsliga.virslīga 18_19: ~8 rows (approximately)
INSERT INTO `virslīga 18_19` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 24, 19, 3, 2, '797 : 627', 170, 41),
	('2.', 'Celtnieks Rīga', 26, 14, 4, 8, '819 : 717', 102, 32),
	('3.', 'SK Latgols', 27, 16, 0, 11, '777 : 771', 6, 32),
	('4.', 'HK Ogre/HYDROX', 26, 15, 0, 11, '806 : 719', 87, 30),
	('5.', 'Jūrmalas Sports', 25, 11, 2, 12, '735 : 792', -57, 24),
	('6.', 'HK Vaiņode', 25, 8, 2, 15, '730 : 813', -83, 18),
	('7.', 'MSĢ/LAT-Hertz', 19, 7, 1, 11, '549 : 613', -64, 15),
	('8.', 'ASK Zemessardze/LSPA', 24, 1, 2, 21, '629 : 790', -161, 4);

-- Dumping data for table virsliga.virslīga 19_20: ~9 rows (approximately)
INSERT INTO `virslīga 19_20` (`Spēle`, `Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1', '1.', 'ZRHK TENAX Dobele', 12, 12, 0, 0, '462 : 310', 152, 24),
	('2', '2.', 'Celtnieks Rīga', 14, 12, 0, 2, '590 : 402', 188, 24),
	('3', '3.', 'HK Ogre/HYDROX', 14, 8, 1, 5, '411 : 411', 0, 17),
	('4', '4.', 'SK Latgols', 14, 7, 0, 7, '403 : 410', -7, 14),
	('5', '5.', 'HK Vaiņode', 14, 7, 0, 7, '389 : 403', -14, 14),
	('6', '6.', 'Jūrmalas Sports', 14, 3, 0, 11, '359 : 442', -83, 6),
	('7', '7.', 'MSĢ', 13, 3, 0, 10, '324 : 439', -115, 6),
	('8', '8.', 'ASK Zemessardze/LSPA', 13, 1, 1, 11, '336 : 457', -121, 3);

-- Dumping data for table virsliga.virslīga 20_21: ~22 rows (approximately)
INSERT INTO `virslīga 20_21` (`Spēle`, `Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1', '1.', 'ZRHK TENAX Dobele', 12, 12, 0, 0, '441 : 261', 180, 24),
	('1', '2.', 'Celtnieks Rīga', 13, 11, 0, 2, '486 : 374', 112, 22),
	('1', '3.', 'HK Ogre/HYDROX', 12, 5, 1, 6, '360 : 371', -11, 11),
	('1', '4.', 'Jūrmalas Sports', 13, 5, 1, 7, '320 : 369', -49, 11),
	('1', '5.', 'SK Latgols', 11, 4, 1, 6, '313 : 362', -49, 9),
	('1', '6.', 'HK Vaiņode', 13, 3, 1, 9, '334 : 398', -64, 7),
	('1', '7.', 'ASK Zemessardze/LSPA', 12, 1, 2, 9, '280 : 362', -82, 4),
	('2', '8.', 'MSĢ', 4, 1, 0, 3, '94 : 131', -37, 2),
	('3', '1.', 'Celtnieks Rīga', 2, 2, 0, 0, '74 : 68', 6, 4),
	('4', '2.', 'ASK Zemessardze/LSPA', 2, 0, 0, 2, '68 : 74', -6, 0),
	('5', '1.', 'HK Ogre/HYDROX', 3, 2, 0, 1, '107 : 95', 12, 4),
	('6', '2.', 'HK Vaiņode', 3, 1, 0, 2, '95 : 107', -12, 2),
	('7', '1.', 'SK Latgols', 2, 2, 0, 0, '53 : 47', 6, 4),
	('8', '2.', 'Jūrmalas Sports', 2, 0, 0, 2, '47 : 53', -6, 0),
	('9', '1.', 'ZRHK TENAX Dobele', 2, 2, 0, 0, '71 : 38', 33, 4),
	('10', '2.', 'SK Latgols', 2, 0, 0, 2, '38 : 71', -33, 0),
	('11', '1.', 'HK Ogre/HYDROX', 2, 2, 0, 0, '73 : 64', 9, 4),
	('12', '2.', 'Celtnieks Rīga', 2, 0, 0, 2, '64 : 73', -9, 0),
	('13', '1.', 'Celtnieks Rīga', 2, 2, 0, 0, '67 : 54', 13, 4),
	('14', '2.', 'SK Latgols', 2, 0, 0, 2, '54 : 67', -13, 0),
	('15', '1.', 'ZRHK TENAX Dobele', 3, 3, 0, 0, '126 : 86', 40, 6),
	('16', '2.', 'HK Ogre/HYDROX', 3, 0, 0, 3, '86 : 126', -40, 0);

-- Dumping data for table virsliga.virslīga 21_22: ~43 rows (approximately)
INSERT INTO `virslīga 21_22` (`Spēle`, `Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1', '1.', 'ASK Zemessardze/LSPA', 11, 11, 0, 0, '409 : 233', 176, 22),
	('2', '2.', 'ZRHK Dobele/DSS', 11, 8, 0, 3, '370 : 333', 37, 16),
	('3', '3.', 'MSĢ', 11, 8, 0, 3, '381 : 283', 98, 16),
	('4', '4.', 'HK Vaiņode', 11, 8, 0, 3, '364 : 296', 68, 16),
	('5', '5.', 'RPI-S', 11, 6, 1, 4, '328 : 333', -5, 13),
	('6', '6.', 'Jūrmalas Sports', 11, 6, 0, 5, '384 : 368', 16, 12),
	('7', '7.', 'HK S&A', 11, 6, 0, 5, '336 : 332', 4, 12),
	('8', '8.', 'ONSC/HK OGRE', 11, 4, 0, 7, '287 : 350', -63, 8),
	('9', '9.', 'Salaspils', 11, 3, 0, 8, '255 : 334', -79, 6),
	('10', '10.', 'Ulbroka SK', 11, 3, 0, 8, '293 : 365', -72, 6),
	('11', '11.', 'SK Latgols juniori', 11, 1, 1, 9, '318 : 371', -53, 3),
	('12', '12.', 'LAT 2006', 11, 1, 0, 10, '299 : 426', -127, 2),
	('13', '1.', 'ASK Zemessardze/LSPA', 10, 9, 0, 1, '334 : 237', 97, 18),
	('14', '2.', 'HK Vaiņode', 10, 7, 0, 3, '331 : 299', 32, 14),
	('15', '3.', 'MSĢ', 10, 5, 0, 5, '328 : 300', 28, 10),
	('16', '4.', 'ZRHK Dobele/DSS', 10, 4, 1, 5, '312 : 313', -1, 9),
	('17', '5.', 'Jūrmalas Sports', 10, 4, 0, 6, '311 : 344', -33, 8),
	('18', '6.', 'RPI-S', 10, 0, 1, 9, '251 : 374', -123, 1),
	('19', '2.', 'Ulbroka SK', 10, 8, 0, 2, '303 : 254', 49, 16),
	('20', '3.', 'SK Latgols juniori', 10, 5, 1, 4, '287 : 295', -8, 11),
	('21', '4.', 'LAT 2006', 10, 3, 2, 5, '330 : 328', 2, 8),
	('22', '5.', 'HK S&A', 10, 2, 1, 7, '294 : 335', -41, 5),
	('23', '6.', 'ONSC/HK OGRE', 10, 1, 1, 8, '314 : 343', -29, 3),
	('24', '1.', 'HK Ogre/HYDROX', 2, 2, 0, 0, '81 : 42', 39, 4),
	('25', '2.', 'Salaspils', 2, 0, 0, 2, '42 : 81', -39, 0),
	('26', '1.', 'ASK Zemessardze/LSPA', 2, 2, 0, 0, '59 : 38', 21, 4),
	('27', '2.', 'HK Vaiņode', 2, 0, 0, 2, '38 : 59', -21, 0),
	('28', '1.', 'ZRHK TENAX Dobele', 2, 2, 0, 0, '98 : 51', 47, 4),
	('29', '2.', 'Jūrmalas Sports', 2, 0, 0, 2, '51 : 98', -47, 0),
	('30', '1.', 'MSĢ', 3, 2, 0, 1, '102 : 88', 14, 4),
	('31', '2.', 'SK Latgols', 3, 1, 0, 2, '88 : 102', -14, 2),
	('32', '1.', 'Ulbroka SK', 2, 1, 0, 1, '70 : 69', 1, 2),
	('33', '2.', 'RPI-S', 2, 1, 0, 1, '69 : 70', -1, 2),
	('34', '1.', 'HK S&A', 2, 2, 0, 0, '68 : 60', 8, 4),
	('34', '2.', 'ONSC/HK OGRE', 2, 0, 0, 2, '60 : 68', -8, 0),
	('35', '1.', 'ASK Zemessardze/LSPA', 1, 1, 0, 0, '36 : 31', 5, 2),
	('37', '2.', 'HK Ogre/HYDROX', 1, 0, 0, 1, '31 : 36', -5, 0),
	('38', '1.', 'ZRHK TENAX Dobele', 1, 1, 0, 0, '36 : 26', 10, 2),
	('39', '2.', 'MSĢ', 1, 0, 0, 1, '26 : 36', -10, 0),
	('40', '1.', 'HK Ogre/HYDROX', 2, 2, 0, 0, '74 : 67', 7, 4),
	('41', '2.', 'MSĢ', 2, 0, 0, 2, '67 : 74', -7, 0),
	('42', '1.', 'ZRHK TENAX Dobele', 3, 3, 0, 0, '123 : 68', 55, 6),
	('43', '2.', 'ASK Zemessardze/LSPA', 3, 0, 0, 3, '68 : 123', -55, 0);

-- Dumping data for table virsliga.virslīga 22_23: ~27 rows (approximately)
INSERT INTO `virslīga 22_23` (`Spēle`, `Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1', '1.', 'ZRHK TENAX Dobele', 12, 12, 0, 0, '532 : 328', 204, 24),
	('1', '2.', 'ASK Zemessardze/LSPA', 12, 9, 0, 3, '394 : 350', 44, 18),
	('1', '3.', 'MSĢ', 12, 8, 0, 4, '406 : 356', 50, 16),
	('1', '4.', 'HK Ogre/HYDROX', 12, 7, 0, 5, '396 : 360', 36, 14),
	('1', '5.', 'HK Vaiņode', 12, 3, 0, 9, '332 : 418', -86, 6),
	('1', '6.', 'SK Latgols', 12, 3, 0, 9, '368 : 490', -122, 6),
	('1', '7.', 'Salaspils', 12, 0, 0, 12, '312 : 438', -126, 0),
	('1', '1.', 'ZRHK TENAX Dobele', 4, 4, 0, 0, '153 : 104', 49, 32),
	('1', '2.', 'MSĢ', 4, 2, 0, 2, '134 : 143', -9, 20),
	('1', '3.', 'ASK Zemessardze/LSPA', 4, 0, 0, 4, '104 : 144', -40, 18),
	('2', '1.', 'HK Ogre/HYDROX', 4, 4, 0, 0, '154 : 108', 46, 22),
	('3', '2.', 'SK Latgols', 4, 1, 0, 3, '126 : 145', -19, 8),
	('4', '3.', 'HK Vaiņode', 4, 1, 0, 3, '109 : 136', -27, 8),
	('5', '1.', 'ASK Zemessardze/LSPA', 2, 2, 0, 0, '68 : 42', 26, 4),
	('6', '2.', 'HK Vaiņode', 2, 0, 0, 2, '42 : 68', -26, 0),
	('7', '1.', 'HK Ogre/HYDROX', 2, 2, 0, 0, '76 : 55', 21, 4),
	('8', '2.', 'SK Latgols', 2, 0, 0, 2, '55 : 76', -21, 0),
	('9', '1.', 'MSĢ', 2, 2, 0, 0, '87 : 72', 15, 4),
	('10', '2.', 'Salaspils', 2, 0, 0, 2, '72 : 87', -15, 0),
	('11', '1.', 'MSĢ', 1, 1, 0, 0, '37 : 32', 5, 2),
	('12', '2.', 'HK Ogre/HYDROX', 1, 0, 0, 1, '32 : 37', -5, 0),
	('13', '1.', 'ZRHK TENAX Dobele', 1, 1, 0, 0, '32 : 22', 10, 2),
	('14', '2.', 'ASK Zemessardze/LSPA', 1, 0, 0, 1, '22 : 32', -10, 0),
	('15', '1.', 'HK Ogre/HYDROX', 1, 1, 0, 0, '29 : 24', 5, 2),
	('16', '2.', 'ASK Zemessardze/LSPA', 1, 0, 0, 1, '24 : 29', -5, 0),
	('17', '1.', 'ZRHK TENAX Dobele', 1, 1, 0, 0, '34 : 25', 9, 2),
	('18', '2.', 'MSĢ', 1, 0, 0, 1, '25 : 34', -9, 0);

-- Dumping data for table virsliga.virslīga 23_24: ~8 rows (approximately)
INSERT INTO `virslīga 23_24` (`Vieta`, `Komanda`, `Spēlēts`, `Uzvarēts`, `Neizšķirts`, `Zaudēts`, `Gūti vārti`, `+/-`, `Punkti`) VALUES
	('1.', 'ZRHK TENAX Dobele', 21, 21, 0, 0, '818 : 492', 326, 42),
	('2.', 'MSĢ', 21, 17, 0, 4, '783 : 586', 197, 34),
	('3.', 'ASK Zemessardze/LSPA', 21, 15, 0, 6, '694 : 589', 105, 30),
	('4.', 'HK Ogre/HYDROX', 21, 13, 0, 8, '768 : 624', 144, 26),
	('5.', 'Salaspils', 21, 6, 0, 15, '598 : 739', -141, 12),
	('6.', 'HK Vaiņode', 21, 5, 0, 16, '506 : 721', -215, 10),
	('7.', 'SK Latgols', 21, 5, 0, 16, '573 : 719', -146, 10),
	('8.', 'HK S&A', 21, 2, 0, 19, '505 : 775', -270, 4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
