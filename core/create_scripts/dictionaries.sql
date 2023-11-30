-- --------------------------------------------------------
-- Хост:                         10.0.2.18
-- Версия сервера:               8.0.34-0ubuntu0.20.04.1 - (Ubuntu)
-- Операционная система:         Linux
-- HeidiSQL Версия:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп данных таблицы ordo.citizenship: ~0 rows (приблизительно)
INSERT INTO `citizenship` (`id`, `name`, `okms`) VALUES
	(1, 'РФ', '643');

-- Дамп данных таблицы ordo.educational_form: ~0 rows (приблизительно)
INSERT INTO `educational_form` (`id`, `name`) VALUES
	(2, 'Заочная'),
	(1, 'Очная');

-- Дамп данных таблицы ordo.faculty: ~0 rows (приблизительно)
INSERT INTO `faculty` (`id`, `name`, `full_name`) VALUES
	(1, 'ФФКиС', NULL),
	(2, 'ФЗО', NULL),
	(3, 'ФНПО', NULL),
	(4, 'ОА УНИД', NULL);

-- Дамп данных таблицы ordo.finance_form: ~0 rows (приблизительно)
INSERT INTO `finance_form` (`id`, `name`) VALUES
	(1, 'Бюджет'),
	(2, 'Контракт');

-- Дамп данных таблицы ordo.group: ~92 rows (приблизительно)
INSERT INTO `group` (`id`, `name`, `full_name`, `current_course`, `begin_year`, `end_year`, `issue_date`, `faculty_id`, `educational_form_id`) VALUES
	(1, '101 ППО(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(2, '201 П', NULL, 2, NULL, NULL, NULL, 1, 1),
	(3, '101 ФК(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(4, '201 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(5, '203 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(6, '204 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(7, '205 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(8, '207 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(9, '208 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(10, '209 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(11, '210 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(12, '211 ФКб', NULL, 2, NULL, NULL, NULL, 1, 1),
	(13, '301 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(14, '302 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(15, '303 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(16, '304 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(17, '305 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(18, '307 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(19, '308 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(20, '309 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(21, '310 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(22, '311 ФКб', NULL, 3, NULL, NULL, NULL, 1, 1),
	(23, '401 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(24, '403 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(25, '404 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(26, '405 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(27, '407 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(28, '408 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(29, '409 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(30, '410 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(31, '411 ФКб', NULL, 4, NULL, NULL, NULL, 1, 1),
	(32, '101 АФК(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(33, '201 А', NULL, 2, NULL, NULL, NULL, 1, 1),
	(34, '301 А', NULL, 3, NULL, NULL, NULL, 1, 1),
	(35, '401 А', NULL, 4, NULL, NULL, NULL, 1, 1),
	(36, '101 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(37, '102 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(38, '103 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(39, '104 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(40, '105 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(41, '106 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(42, '107 Спорт(б)', NULL, 1, NULL, NULL, NULL, 1, 1),
	(43, '101 ФК (м)', NULL, 1, NULL, NULL, NULL, 3, 1),
	(44, '102 ФК (м)', NULL, 1, NULL, NULL, NULL, 3, 1),
	(45, '201 ФК (м)', NULL, 2, NULL, NULL, NULL, 3, 1),
	(46, '202 ФК (м)', NULL, 2, NULL, NULL, NULL, 3, 1),
	(47, '101 АФК (м)', NULL, 1, NULL, NULL, NULL, 3, 1),
	(48, '201 АФК (м)', NULL, 2, NULL, NULL, NULL, 3, 1),
	(49, '101 Спорт (м)', NULL, 1, NULL, NULL, NULL, 3, 1),
	(50, '201 Спорт (м)', NULL, 2, NULL, NULL, NULL, 3, 1),
	(51, '201 ФКиС', NULL, 2, NULL, NULL, NULL, 4, 1),
	(52, '301 ФКиС', NULL, 3, NULL, NULL, NULL, 4, 1),
	(53, '101 ФГТ', NULL, 1, NULL, NULL, NULL, 4, 1),
	(54, '11 ППО(б)', NULL, 1, NULL, NULL, NULL, 2, 2),
	(55, '21 П', NULL, 2, NULL, NULL, NULL, 2, 2),
	(56, '31 П', NULL, 3, NULL, NULL, NULL, 2, 2),
	(57, '41 П', NULL, 4, NULL, NULL, NULL, 2, 2),
	(58, '51 П', NULL, 5, NULL, NULL, NULL, 2, 2),
	(59, '11 ФКб', NULL, 1, NULL, NULL, NULL, 2, 2),
	(60, '21 ФКб', NULL, 2, NULL, NULL, NULL, 2, 2),
	(61, '22 ФКб', NULL, 2, NULL, NULL, NULL, 2, 2),
	(62, '23 ФКб', NULL, 2, NULL, NULL, NULL, 2, 2),
	(63, '31 ФКб', NULL, 3, NULL, NULL, NULL, 2, 2),
	(64, '32 ФКб', NULL, 3, NULL, NULL, NULL, 2, 2),
	(65, '33 ФКб', NULL, 3, NULL, NULL, NULL, 2, 2),
	(66, '41 ФКб', NULL, 4, NULL, NULL, NULL, 2, 2),
	(67, '42 ФКб', NULL, 4, NULL, NULL, NULL, 2, 2),
	(68, '43 ФКб', NULL, 4, NULL, NULL, NULL, 2, 2),
	(69, '51 ФКб', NULL, 5, NULL, NULL, NULL, 2, 2),
	(70, '52 ФКб', NULL, 5, NULL, NULL, NULL, 2, 2),
	(71, '53 ФКб', NULL, 5, NULL, NULL, NULL, 2, 2),
	(72, '11 АФК(б)', NULL, 1, NULL, NULL, NULL, 2, 2),
	(73, '21 А', NULL, 2, NULL, NULL, NULL, 2, 2),
	(74, '31 А', NULL, 3, NULL, NULL, NULL, 2, 2),
	(75, '41 А', NULL, 4, NULL, NULL, NULL, 2, 2),
	(76, '51 А', NULL, 5, NULL, NULL, NULL, 2, 2),
	(77, '11 Спорт(б)', NULL, 1, NULL, NULL, NULL, 2, 2),
	(78, '12 Спорт(б)', NULL, 1, NULL, NULL, NULL, 2, 2),
	(79, '11 ФК (м)', NULL, 1, NULL, NULL, NULL, 3, 2),
	(80, '12 ФК (м)', NULL, 1, NULL, NULL, NULL, 3, 2),
	(81, '21 ФК (м)', NULL, 2, NULL, NULL, NULL, 3, 2),
	(82, '22 ФК (м)', NULL, 2, NULL, NULL, NULL, 3, 2),
	(83, '31 ФК (м)', NULL, 3, NULL, NULL, NULL, 3, 2),
	(84, '32 ФК (м)', NULL, 3, NULL, NULL, NULL, 3, 2),
	(85, '11 АФК (м)', NULL, 1, NULL, NULL, NULL, 3, 2),
	(86, '21 АФК (м)', NULL, 2, NULL, NULL, NULL, 3, 2),
	(87, '31 АФК (м)', NULL, 3, NULL, NULL, NULL, 3, 2),
	(88, '11 Спорт (м)', NULL, 1, NULL, NULL, NULL, 3, 2),
	(89, '21 Спорт (м)', NULL, 2, NULL, NULL, NULL, 3, 2),
	(90, '31 Спорт (м)', NULL, 3, NULL, NULL, NULL, 3, 2),
	(91, '21 ФКиС', NULL, 2, NULL, NULL, NULL, 4, 2),
	(92, '31 ФКиС', NULL, 3, NULL, NULL, NULL, 4, 2);

-- Дамп данных таблицы ordo.log_event_log: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.log_event_type: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.scos_student: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.sport_type: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.student: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.student_group: ~0 rows (приблизительно)

-- Дамп данных таблицы ordo.user: ~0 rows (приблизительно)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
