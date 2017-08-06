-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.22-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица firsthwproject.basket
CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_price` double NOT NULL DEFAULT '0',
  `datetime_insert` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.basket: ~6 rows (приблизительно)
DELETE FROM `basket`;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` (`id`, `id_order`, `id_user`, `id_product`, `product_price`, `datetime_insert`) VALUES
	(3, 2, 1, 2, 250, '2017-07-03 21:24:33'),
	(74, 18, 1, 2, 250, '2017-07-29 18:34:57'),
	(75, 18, 1, 3, 250, '2017-07-29 18:37:07'),
	(76, 18, 1, 5, 200, '2017-07-29 18:37:12'),
	(77, 18, 1, 5, 200, '2017-07-29 18:37:18'),
	(83, 24, 1, 3, 250, '2017-07-29 20:06:09'),
	(84, 24, 1, 5, 200, '2017-07-29 20:06:20'),
	(87, 24, 1, 3, 250, '2017-07-29 20:21:53'),
	(88, 24, 1, 6, 200, '2017-07-29 20:23:14'),
	(89, 24, 1, 2, 250, '2017-07-29 20:24:54'),
	(90, 24, 1, 6, 200, '2017-07-29 20:25:50'),
	(91, 25, 1, 6, 200, '2017-07-29 20:27:11'),
	(92, 25, 1, 2, 250, '2017-07-29 20:27:16'),
	(94, 26, 1, 5, 200, '2017-07-29 20:31:02'),
	(96, 26, 1, 3, 250, '2017-07-29 20:32:02'),
	(101, 27, 1, 6, 200, '2017-07-29 20:49:06'),
	(102, 28, 1, 6, 200, '2017-07-29 21:08:12'),
	(103, 28, 1, 2, 250, '2017-07-29 21:08:18'),
	(104, 29, 1, 5, 200, '2017-07-29 21:12:34'),
	(105, 29, 1, 5, 200, '2017-07-29 21:12:38'),
	(106, 29, 1, 6, 200, '2017-07-29 21:12:42'),
	(108, 30, 2, 6, 200, '2017-07-29 21:14:53'),
	(109, 31, 2, 2, 250, '2017-07-29 21:21:42'),
	(112, 32, 2, 5, 200, '2017-07-29 21:31:55'),
	(116, 33, 2, 48, 100, '2017-08-03 20:37:43'),
	(117, 33, 2, 49, 100, '2017-08-03 20:37:51'),
	(119, 34, 1, 5, 200, '2017-08-04 20:51:35'),
	(120, 34, 1, 49, 100, '2017-08-04 21:06:25');
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '0',
  `id_parent_category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_parent_category` (`id_parent_category`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.categories: ~6 rows (приблизительно)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category_name`, `id_parent_category`) VALUES
	(1, 'Catalog', 0),
	(2, 'Shoes', 1),
	(3, 'Clothes', 1),
	(4, 'Accessories', 1),
	(5, 'Men shoes', 2),
	(6, 'Women shoes', 2),
	(7, 'Hats', 1),
	(8, 'Outerwear', 1),
	(9, 'Panties', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `datetime_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetime_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` double NOT NULL DEFAULT '0',
  `id_order_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.orders: ~13 rows (приблизительно)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `id_user`, `datetime_create`, `datetime_update`, `amount`, `id_order_status`) VALUES
	(2, 1, '2017-07-03 21:24:56', '2017-08-03 18:07:36', 250, 4),
	(18, 1, '2017-07-29 18:37:25', '2017-08-01 18:40:27', 900, 4),
	(24, 1, '2017-07-29 20:21:40', '2017-07-29 20:27:02', 1350, 5),
	(25, 1, '2017-07-29 20:27:19', '2017-07-29 20:28:18', 450, 5),
	(26, 1, '2017-07-29 20:31:04', '2017-07-29 20:42:45', 450, 5),
	(27, 1, '2017-07-29 20:43:10', '2017-07-29 20:57:13', 450, 5),
	(28, 1, '2017-07-29 21:08:31', '2017-07-29 21:12:20', 450, 5),
	(29, 1, '2017-07-29 21:13:07', '2017-08-04 21:06:40', 600, 3),
	(30, 2, '2017-07-29 21:14:21', '2017-07-29 21:21:25', 650, 5),
	(31, 2, '2017-07-29 21:21:53', '2017-07-29 21:31:40', 250, 5),
	(32, 2, '2017-07-29 21:31:57', '2017-08-01 18:24:11', 200, 4),
	(33, 2, '2017-07-29 21:32:25', '2017-08-03 20:38:18', 200, 3),
	(34, 1, '2017-07-29 21:40:47', '2017-08-04 21:06:34', 300, 2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.order_statuses
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.order_statuses: ~5 rows (приблизительно)
DELETE FROM `order_statuses`;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` (`id`, `status_name`) VALUES
	(1, 'Новый'),
	(2, 'Оформлен'),
	(3, 'Оплачен'),
	(4, 'Доставлен'),
	(5, 'Удалён');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL DEFAULT '',
  `product_sku` int(11) DEFAULT NULL,
  `id_parent_product` int(11) DEFAULT NULL,
  `product_price` double DEFAULT '0',
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_sku` (`product_sku`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.products: ~11 rows (приблизительно)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `product_name`, `product_sku`, `id_parent_product`, `product_price`, `deleted`) VALUES
	(1, 'Boots', 100000, NULL, 250, NULL),
	(2, 'Boots, size 42, black', 100000001, 1, 250, NULL),
	(3, 'Boots, size 43, black', 100000002, 1, 250, NULL),
	(4, 'Sneakers', 100001, NULL, 200, NULL),
	(5, 'Sneakers, size 41, white', 100001001, 4, 200, NULL),
	(6, 'Sneakers, size 42, blue', 100001002, 4, 200, NULL),
	(35, 'High boots', 100002, NULL, 111, '2017-08-03 20:30:45'),
	(46, 'Боты шмоты', 100000003, 1, 121, '2017-08-03 20:30:41'),
	(47, 'Gallows', 100003, NULL, 100, NULL),
	(48, 'галоша правая дырявая', 100003001, 47, 100, NULL),
	(49, 'галоша левая рваная', 100003002, 47, 100, NULL),
	(52, 'gymnastic shoes', 100004, NULL, 122, NULL),
	(53, 'T-short LaCost', 100005, NULL, 999, NULL),
	(54, 'Red Hat', 100006, NULL, 500, NULL),
	(55, 'Coat', 100007, NULL, 99500, NULL),
	(56, 'Belt', 100008, NULL, 200, NULL),
	(57, 'Square pants', 100009, NULL, 50, NULL),
	(58, 'Прибамбас', 100010, NULL, 10, NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.product_properties
CREATE TABLE IF NOT EXISTS `product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_property_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.product_properties: ~4 rows (приблизительно)
DELETE FROM `product_properties`;
/*!40000 ALTER TABLE `product_properties` DISABLE KEYS */;
INSERT INTO `product_properties` (`id`, `product_property_name`) VALUES
	(1, 'Photo'),
	(2, 'Size'),
	(3, 'Color'),
	(4, 'Categories');
/*!40000 ALTER TABLE `product_properties` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.product_properties_values
CREATE TABLE IF NOT EXISTS `product_properties_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `id_property` int(11) NOT NULL DEFAULT '0',
  `property_value` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_property` (`id_property`),
  KEY `property_value` (`property_value`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.product_properties_values: ~0 rows (приблизительно)
DELETE FROM `product_properties_values`;
/*!40000 ALTER TABLE `product_properties_values` DISABLE KEYS */;
INSERT INTO `product_properties_values` (`id`, `id_product`, `id_property`, `property_value`) VALUES
	(1, 1, 1, 'g1.png'),
	(2, 1, 1, 'picture2.png'),
	(3, 2, 1, 'g2.png'),
	(4, 2, 2, '42'),
	(5, 2, 3, '#000'),
	(6, 1, 4, '5'),
	(8, 4, 1, 'g3.png'),
	(9, 4, 4, '2'),
	(10, 2, 1, 'picture999.png'),
	(11, 5, 2, '41'),
	(12, 5, 3, 'white'),
	(13, 6, 3, 'blue'),
	(14, 6, 2, '42'),
	(15, 6, 1, 'g4.png'),
	(16, 6, 1, 'picture123.png'),
	(17, 5, 1, 'g5.png'),
	(18, 5, 1, 'picture125.png'),
	(37, 46, 1, 'g6.png'),
	(38, 46, 2, '12'),
	(39, 46, 3, 'крови'),
	(40, 48, 1, 'g7.png'),
	(41, 48, 2, '48'),
	(42, 48, 3, 'болотный'),
	(43, 49, 1, 'g8.png'),
	(44, 49, 2, '12'),
	(45, 49, 3, 'болотный'),
	(46, 51, 1, '1'),
	(47, 51, 2, '1'),
	(48, 51, 3, '1'),
	(49, 52, 4, ' 2  '),
	(50, 53, 4, ' 3  '),
	(51, 53, 1, 'g9.png'),
	(52, 54, 4, ' 7  '),
	(53, 54, 1, 'g10.png'),
	(54, 55, 4, ' 8  '),
	(55, 55, 1, 'g11.png'),
	(56, 56, 4, ' 4  '),
	(57, 56, 1, 'g12.png'),
	(58, 57, 4, ' 9  '),
	(59, 57, 1, 'g3.png'),
	(60, 58, 4, ' 4  '),
	(61, 58, 1, 'g4.png');
/*!40000 ALTER TABLE `product_properties_values` ENABLE KEYS */;

-- Дамп структуры для таблица firsthwproject.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `hash_pass` varchar(50) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы firsthwproject.users: ~0 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `email`, `hash_pass`, `is_admin`) VALUES
	(1, 'Admin', 'Admin', NULL, 'admin@gb.local', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1),
	(2, 'User', 'User', NULL, 'user@gb.local', 'd8578edf8458ce06fbc5bb76a58c5ca4', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
