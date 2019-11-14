-- MySQL dump 10.13  Distrib 5.6.17-ndb-7.3.5, for osx10.7 (i386)
--
-- Host: localhost    Database: deal
-- ------------------------------------------------------
-- Server version	5.6.17-ndb-7.3.5-cluster-gpl

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `deal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `deal` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `deal`;

--
-- Table structure for table `item`
--

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double(11, 2) NOT NULL DEFAULT 0.00,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT 0,
  `img_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (17, 'Air Jordan 1', 250.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc id cursus metus aliquam eleifend. Arcu vitae elementum curabitur vitae.', 269, 'https://sneakernews.com/wp-content/uploads/2019/08/air-jordan-1-mid-newspaper-852542-061-5.jpg');
INSERT INTO `item` VALUES (22, 'Air Jordan 11', 300.00, 'Lectus mauris ultrices eros in cursus. Neque egestas congue quisque egestas diam in arcu cursus euismod. At in tellus integer feugiat scelerisque varius morbi enim nunc. Turpis egestas maecenas pharetra convallis posuere morbi leo urna.', 262, 'https://stockx-360.imgix.net/Air-Jordan-11-Retro-Concord-2018/Images/Air-Jordan-11-Retro-Concord-2018/Lv2/img05.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1566585772');
INSERT INTO `item` VALUES (23, 'Zoom Kobe 4', 180.00, 'Congue eu consequat ac felis donec et odio pellentesque. Tortor consequat id porta nibh venenatis cras sed felis eget. Aliquet enim tortor at auctor urna nunc. Dictum varius duis at consectetur lorem donec massa. Nibh tellus molestie nunc non blandit massa.', 215, 'https://sneakernews.com/wp-content/uploads/2019/05/nike-zoom-kobe-4-protro-del-sol-AV6339_101-2.jpg');
INSERT INTO `item` VALUES (24, 'Yeezy Boost 350', 480.00, 'In fermentum posuere urna nec. Quam vulputate dignissim suspendisse in est ante in nibh mauris. Arcu felis bibendum ut tristique et egestas quis. Id semper risus in hendrerit gravida.', 208, 'https://stockx-360.imgix.net/Adidas-Yeezy-Boost-350-V2-Zebra/Images/Adidas-Yeezy-Boost-350-V2-Zebra/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1538080256');
INSERT INTO `item` VALUES (25, 'Adidas Superstar', 79.00, 'Quis blandit turpis cursus in hac habitasse platea dictumst quisque. In mollis nunc sed id. Volutpat sed cras ornare arcu dui vivamus arcu felis. Lectus quam id leo in.', 164, 'https://static.footshop.com/173124/31911.jpg');
INSERT INTO `item` VALUES (26, 'Air Force 1', 110.00, 'Ut tortor pretium viverra suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Etiam tempor orci eu lobortis elementum.', 132, 'https://www.withsneaker.com/wp-content/uploads/2018/05/Custom-Pauly-x-Vlone-Pop-Nike-Air-Force-1-Low-Graffiti-Harlem-White.jpg');
INSERT INTO `item` VALUES (27, 'Air Max 97', 170.00, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac. Tellus elementum sagittis vitae et leo duis. Pellentesque elit eget gravida cum sociis natoque penatibus et.', 112, 'https://hypebeast.com/image/2018/11/nike-air-max-97-plus-305-release-information-2.jpg');
INSERT INTO `item` VALUES (28, 'Ultraboost 4.0', 154.00, 'Id ornare arcu odio ut sem. Ipsum consequat nisl vel pretium lectus quam id leo in. In nibh mauris cursus mattis molestie a iaculis at.', 104, 'https://stockx-360.imgix.net/Adidas-Ultra-Boost-4-0-Running-White/Images/Adidas-Ultra-Boost-4-0-Running-White/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1538080256');
INSERT INTO `item` VALUES (29, 'NMD R1', 130.00, 'Sit amet volutpat consequat mauris nunc congue. Egestas sed sed risus pretium quam vulputate dignissim suspendisse in. Massa enim nec dui nunc mattis enim. Sed ullamcorper morbi tincidunt ornare massa eget.', 99, 'https://sneakernews.com/wp-content/uploads/2019/08/adidas-nmd-r1-white-black-gold-eg5662-2.jpg');
INSERT INTO `item` VALUES (30, 'Air FoamPosite', 230.00, 'Tincidunt praesent semper feugiat nibh. Ultrices tincidunt arcu non sodales neque sodales ut etiam sit. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Morbi tincidunt augue interdum velit euismod in.', 86, 'https://sneakernews.com/wp-content/uploads/2019/08/nike-air-foamposite-pro-purple-camo-624041-012-6.jpg');
INSERT INTO `item` VALUES (31, 'Air Jordan 12', 190.00, 'Diam donec adipiscing tristique risus nec feugiat in fermentum. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam.', 83, 'https://sneakernews.com/wp-content/uploads/2019/04/air-jordan-12-snakeskin-AO6068-007-1.jpg');
INSERT INTO `item` VALUES (32, 'Air Jordan 3', 190.00, 'Nisl suscipit adipiscing bibendum est ultricies integer. Sagittis vitae et leo duis. Vitae semper quis lectus nulla at volutpat diam. Arcu dui vivamus arcu felis bibendum ut tristique.', 147, 'https://stockx-360.imgix.net/Air-Jordan-3-Retro-Black-Cement-2018/Images/Air-Jordan-3-Retro-Black-Cement-2018/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1538080256');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (17, 386, 17);
INSERT INTO `item_stock` VALUES (22, 330, 22);
INSERT INTO `item_stock` VALUES (23, 185, 23);
INSERT INTO `item_stock` VALUES (24, 434, 24);
INSERT INTO `item_stock` VALUES (25, 259, 25);
INSERT INTO `item_stock` VALUES (26, 157, 26);
INSERT INTO `item_stock` VALUES (27, 201, 27);
INSERT INTO `item_stock` VALUES (28, 323, 28);
INSERT INTO `item_stock` VALUES (29, 175, 29);
INSERT INTO `item_stock` VALUES (30, 280, 30);
INSERT INTO `item_stock` VALUES (31, 143, 31);
INSERT INTO `item_stock` VALUES (32, 325, 32);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `item_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `amount` int(255) NOT NULL DEFAULT 0,
  `order_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `promo_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2019102500002000', 17, 30, 230.00, 1, 230.00, 0);
INSERT INTO `order_info` VALUES ('2019102500002100', 18, 24, 480.00, 1, 480.00, 0);
INSERT INTO `order_info` VALUES ('2019102500002200', 19, 17, 100.00, 1, 100.00, 1);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_id` int(11) NOT NULL DEFAULT 0,
  `promo_item_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES (1, 'AJ1 promotion', '2019-10-22 00:21:50', 17, 100.00, '2022-10-22 00:00:00');

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT 0,
  `step` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', 23, 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for men and 2 for women',
  `age` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '// by phone, wechat, email...',
  `third_party_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `phone_unique_index`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (17, 'John', 1, 37, '1234567890', 'byphone', '');
INSERT INTO `user_info` VALUES (18, 'Erick', 1, 15, '0987654321', 'byphone', '');
INSERT INTO `user_info` VALUES (19, 'Frank', 1, 28, '9876543210', 'byphone', '');

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES (12, 'MTIzNDU2', 17);
INSERT INTO `user_password` VALUES (13, 'MTIzNDU2', 18);
INSERT INTO `user_password` VALUES (14, 'MTIzNDU2', 19);

SET FOREIGN_KEY_CHECKS = 1;
