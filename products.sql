/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50712
 Source Host           : localhost:3306
 Source Schema         : shoes_shop

 Target Server Type    : MySQL
 Target Server Version : 50712
 File Encoding         : 65001

 Date: 29/12/2020 20:18:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Nike Air Force', 200.00, 'Giày đẹp', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/i1-5f28151e-5039-40b1-9ec0-cf11e3a8a6e0/air-force-1-mid-07-shoe-3NRN8C.jpg');
INSERT INTO `products` VALUES (2, 'Adidas Tubular', 120.00, 'Giày đẹp', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/459ff194c35e45ea91b1a8ba00fc4876_9366/NMD_R1_Shoes_Black_B42200_01_standard.jpg');
INSERT INTO `products` VALUES (3, 'Bitis Hunter', 50.00, 'Giày đẹp', 'https://product.hstatic.net/1000230642/product/dsmh01000trg__2__3ef6143719cc4d7ea5360e4a304269fb.jpg');
INSERT INTO `products` VALUES (4, 'Acisc', 100.00, 'Giày đẹp', 'https://cdn.runrepeat.com/i/asics/31773/asics-gel-lyte-mt-gtx-c1a3-600.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
