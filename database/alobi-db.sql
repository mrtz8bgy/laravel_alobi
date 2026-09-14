/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100411 (10.4.11-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : alobi-db

 Target Server Type    : MySQL
 Target Server Version : 100411 (10.4.11-MariaDB)
 File Encoding         : 65001

 Date: 14/09/2026 15:48:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addons
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `unique_identifier` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `activated` int NOT NULL DEFAULT 1,
  `image` varchar(1000) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf32 COLLATE = utf32_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of addons
-- ----------------------------

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `set_default` int NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES (1, 8, 'سیدخندان پلاک 40', 'Iran (Islamic Republic of)', 'تهران', '1476822666', '09126769825', 1, '2020-07-11 10:16:53', '2020-07-24 06:39:45');
INSERT INTO `addresses` VALUES (3, 3, 'ولیعصر پاساژ رضا پلاک 1234', 'Iran (Islamic Republic of)', 'تهران', '1476822666', '9121112233', 1, '2020-07-12 07:47:28', '2020-07-12 07:47:36');
INSERT INTO `addresses` VALUES (4, 8, 'ورامین میدان رازی', 'Iran (Islamic Republic of)', 'ورامین', '3371745768', '02136725581', 0, '2025-12-22 12:16:32', '2025-12-22 12:16:32');
INSERT INTO `addresses` VALUES (5, 12, 'ورامین میدان رازی', 'Iran (Islamic Republic of)', 'ورامین', '3371745768', '+989306060331', 0, '2026-01-01 09:45:41', '2026-01-01 09:45:41');
INSERT INTO `addresses` VALUES (6, 29, 'ورامین میدان رازی', 'Iran (Islamic Republic of)', 'ورامین', '3371745768', '+989306060331', 0, '2026-01-01 23:27:24', '2026-01-01 23:27:24');

-- ----------------------------
-- Table structure for app_settings
-- ----------------------------
DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE `app_settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency_id` int NULL DEFAULT NULL,
  `currency_format` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `google_plus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_settings
-- ----------------------------
INSERT INTO `app_settings` VALUES (1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 20:09:15', '2019-08-04 20:09:18');

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf32 COLLATE = utf32_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attributes
-- ----------------------------
INSERT INTO `attributes` VALUES (1, 'کد شناسایی محصول', '2020-02-24 09:25:07', '2025-12-31 14:26:13');
INSERT INTO `attributes` VALUES (2, 'مدل', '2020-02-24 09:25:13', '2025-12-28 18:53:38');
INSERT INTO `attributes` VALUES (3, 'عیار', '2025-12-28 18:51:29', '2025-12-28 18:51:29');
INSERT INTO `attributes` VALUES (4, 'رنگ', '2025-12-28 18:51:52', '2025-12-28 18:51:52');
INSERT INTO `attributes` VALUES (5, 'جنس', '2025-12-28 18:52:12', '2025-12-28 18:52:12');
INSERT INTO `attributes` VALUES (6, 'نوع', '2025-12-28 18:52:44', '2025-12-28 18:52:44');
INSERT INTO `attributes` VALUES (7, 'جنسیت', '2025-12-28 18:53:09', '2025-12-28 18:53:09');
INSERT INTO `attributes` VALUES (8, 'وزن', '2025-12-28 18:53:22', '2025-12-28 18:53:22');
INSERT INTO `attributes` VALUES (9, 'سال ساخت', '2025-12-28 18:53:50', '2025-12-28 18:53:50');
INSERT INTO `attributes` VALUES (10, 'سایز', '2025-12-31 14:25:28', '2025-12-31 14:25:48');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `position` int NOT NULL DEFAULT 1,
  `published` int NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (4, 'uploads/banners/gz5xZsK2IcwXKzx8BIpybd0zflho4C1QeMsEiMWr.jpeg', '#', 1, 1, '2019-03-12 09:28:23', '2020-07-22 02:53:33');
INSERT INTO `banners` VALUES (5, 'uploads/banners/dBfaGAeRI34g1Rpb8piCwJSpdeZ9dhrkYEVIkoFe.jpeg', '#', 1, 1, '2019-03-12 09:28:41', '2020-07-22 02:53:52');
INSERT INTO `banners` VALUES (6, 'uploads/banners/u4jYHOJH3h2NgYB4ai4fjKBjINRyccoTvN41FVVi.jpg', '#', 2, 1, '2019-03-12 09:28:52', '2026-01-01 11:12:16');
INSERT INTO `banners` VALUES (7, 'uploads/banners/I9hTaD9y6gXGDzrKX3atAYDlUhV0rPPHONe1OVeY.jpg', '#', 2, 1, '2019-05-26 08:46:38', '2026-01-01 11:13:45');
INSERT INTO `banners` VALUES (9, 'uploads/banners/yLyzoGfMgZHtf8XfQ706SDV7cm420qdv4wRU3DVy.jpeg', '#', 1, 1, '2019-06-11 08:30:15', '2020-07-22 02:54:09');
INSERT INTO `banners` VALUES (10, 'uploads/banners/0WFjYCatbBevDobv52ePJyj5ZkHmnjurMBbrJCIh.jpeg', '#', 1, 1, '2019-06-11 08:30:24', '2020-07-22 02:54:23');

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `top` int NOT NULL DEFAULT 0,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'سامسونگ', NULL, 1, 'samsung', 'سامسونگ', 'برند سامسونگ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (2, 'اپل', NULL, 1, 'apple', 'اپل', 'برند اپل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (3, 'شیائومی', NULL, 1, 'xiaomi', 'شیائومی', 'برند شیائومی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (4, 'هواوی', NULL, 1, 'huawei', 'هواوی', 'برند هواوی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (5, 'نوکیا', NULL, 0, 'nokia', 'نوکیا', 'برند نوکیا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (6, 'آنر', NULL, 0, 'honor', 'آنر', 'برند آنر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (7, 'ریلمی', NULL, 0, 'realme', 'ریلمی', 'برند ریلمی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (8, 'وان‌پلاس', NULL, 0, 'oneplus', 'وان‌پلاس', 'برند وان‌پلاس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (9, 'ارد', NULL, 0, 'ord', 'ارد', 'برند ارد', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (10, 'نمو', NULL, 0, 'nemo', 'نمو', 'برند نمو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (11, 'ایسوس', NULL, 1, 'asus', 'ایسوس', 'برند ایسوس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (12, 'لنوو', NULL, 1, 'lenovo', 'لنوو', 'برند لنوو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (13, 'دل', NULL, 1, 'dell', 'دل', 'برند دل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (14, 'اچ‌پی', NULL, 1, 'hp', 'اچ‌پی', 'برند اچ‌پی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (15, 'ایسر', NULL, 0, 'acer', 'ایسر', 'برند ایسر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (16, 'ام‌اس‌آی', NULL, 1, 'msi', 'ام‌اس‌آی', 'برند ام‌اس‌آی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (17, 'گیگابایت', NULL, 0, 'gigabyte', 'گیگابایت', 'برند گیگابایت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (18, 'کورسیر', NULL, 0, 'corsair', 'کورسیر', 'برند کورسیر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (19, 'لاجیتک', NULL, 1, 'logitech', 'لاجیتک', 'برند لاجیتک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (20, 'ریزر', NULL, 1, 'razer', 'ریزر', 'برند ریزر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (21, 'اینتل', NULL, 0, 'intel', 'اینتل', 'برند اینتل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (22, 'ای‌ام‌دی', NULL, 0, 'amd', 'ای‌ام‌دی', 'برند ای‌ام‌دی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (23, 'انویدیا', NULL, 0, 'nvidia', 'انویدیا', 'برند انویدیا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (24, 'وسترن دیجیتال', NULL, 0, 'western-digital', 'وسترن دیجیتال', 'برند وسترن دیجیتال', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (25, 'سی‌گیت', NULL, 0, 'seagate', 'سی‌گیت', 'برند سی‌گیت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (26, 'ال‌جی', NULL, 1, 'lg', 'ال‌جی', 'برند ال‌جی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (27, 'سونی', NULL, 1, 'sony', 'سونی', 'برند سونی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (28, 'پاناسونیک', NULL, 0, 'panasonic', 'پاناسونیک', 'برند پاناسونیک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (29, 'بوش', NULL, 1, 'bosch', 'بوش', 'برند بوش', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (30, 'فیلیپس', NULL, 1, 'philips', 'فیلیپس', 'برند فیلیپس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (31, 'دوو', NULL, 0, 'daewoo', 'دوو', 'برند دوو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (32, 'اسنوا', NULL, 1, 'snowa', 'اسنوا', 'برند اسنوا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (33, 'امرسان', NULL, 0, 'emersun', 'امرسان', 'برند امرسان', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (34, 'پارس‌خزر', NULL, 0, 'parskhazar', 'پارس‌خزر', 'برند پارس‌خزر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (35, 'تفال', NULL, 0, 'tefal', 'تفال', 'برند تفال', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (36, 'کنوود', NULL, 0, 'kenwood', 'کنوود', 'برند کنوود', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (37, 'دی‌سام', NULL, 0, 'dsam', 'دی‌سام', 'برند دی‌سام', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (38, 'تک‌وین', NULL, 0, 'techwin', 'تک‌وین', 'برند تک‌وین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (39, 'کوئین', NULL, 0, 'queen', 'کوئین', 'برند کوئین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (40, 'پارس‌استیل', NULL, 0, 'pars-steel', 'پارس‌استیل', 'برند پارس‌استیل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (41, 'ناسا الکتریک', NULL, 0, 'nasa-electric', 'ناسا الکتریک', 'برند ناسا الکتریک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (42, 'آرچلیک', NULL, 0, 'arcelik', 'آرچلیک', 'برند آرچلیک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (43, 'بکو', NULL, 0, 'beko', 'بکو', 'برند بکو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (44, 'ایندزیت', NULL, 0, 'indesit', 'ایندزیت', 'برند ایندزیت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (45, 'ویرپول', NULL, 0, 'whirlpool', 'ویرپول', 'برند ویرپول', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (46, 'رولکس', NULL, 1, 'rolex', 'رولکس', 'برند رولکس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (47, 'آویان کو', NULL, 1, 'avianne-co', 'آویان کو', 'برند آویان کو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (48, 'اُمگا', NULL, 1, 'omega', 'اُمگا', 'برند اُمگا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (49, 'سیکو', NULL, 1, 'seiko', 'سیکو', 'برند سیکو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (50, 'کاسیو', NULL, 1, 'casio', 'کاسیو', 'برند کاسیو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (51, 'تیسوت', NULL, 1, 'tissot', 'تیسوت', 'برند تیسوت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (52, 'فسیل', NULL, 1, 'fossil', 'فسیل', 'برند فسیل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (53, 'دنیل ولینگتون', NULL, 1, 'daniel-wellington', 'دنیل ولینگتون', 'برند دنیل ولینگتون', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (54, 'سواچ', NULL, 0, 'swatch', 'سواچ', 'برند سواچ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (55, 'مایکل کورس', NULL, 0, 'michael-kors', 'مایکل کورس', 'برند مایکل کورس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (56, 'لانگین', NULL, 0, 'longines', 'لانگین', 'برند لانگین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (57, 'رادو', NULL, 0, 'rado', 'رادو', 'برند رادو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (58, 'بریتلینگ', NULL, 0, 'breitling', 'بریتلینگ', 'برند بریتلینگ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (59, 'هامیلتون', NULL, 0, 'hamilton', 'هامیلتون', 'برند هامیلتون', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (60, 'اورینت', NULL, 0, 'orient', 'اورینت', 'برند اورینت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (61, 'رمیو', NULL, 0, 'remio', 'رمیو', 'برند رمیو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (62, 'میسویک', NULL, 0, 'misvik', 'میسویک', 'برند میسویک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (63, 'ژیلت', NULL, 1, 'gillette', 'ژیلت', 'برند ژیلت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (64, 'لورآل', NULL, 1, 'loreal', 'لورآل', 'برند لورآل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (65, 'میبلین', NULL, 1, 'maybelline', 'میبلین', 'برند میبلین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (66, 'نیوآ', NULL, 1, 'nivea', 'نیوآ', 'برند نیوآ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (67, 'گارنیر', NULL, 1, 'garnier', 'گارنیر', 'برند گارنیر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (68, 'وازلین', NULL, 0, 'vaseline', 'وازلین', 'برند وازلین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (69, 'اسنس', NULL, 0, 'essence', 'اسنس', 'برند اسنس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (70, 'لافارر', NULL, 0, 'lafarrerr', 'لافارر', 'برند لافارر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (71, 'سینره', NULL, 1, 'cinere', 'سینره', 'برند سینره', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (72, 'حاوی', NULL, 0, 'havi', 'حاوی', 'برند حاوی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (73, 'مای', NULL, 1, 'my', 'مای', 'برند مای', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (74, 'فیروز', NULL, 1, 'firooz', 'فیروز', 'برند فیروز', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (75, 'گلرنگ', NULL, 1, 'golrang', 'گلرنگ', 'برند گلرنگ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (76, 'پاکسان', NULL, 0, 'paksan', 'پاکسان', 'برند پاکسان', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (77, 'کلینیک', NULL, 1, 'clinique', 'کلینیک', 'برند کلینیک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (78, 'استی لادر', NULL, 0, 'estee-lauder', 'استی لادر', 'برند استی لادر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (79, 'داو', NULL, 0, 'dove', 'داو', 'برند داو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (80, 'هد اند شولدرز', NULL, 0, 'head-shoulders', 'هد اند شولدرز', 'برند هد اند شولدرز', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (81, 'بورگ وارنر', NULL, 0, 'borgwarner', 'بورگ وارنر', 'برند بورگ وارنر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (82, 'ایساکو', NULL, 1, 'isaco', 'ایساکو', 'برند ایساکو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (83, 'سایپا یدک', NULL, 1, 'saipa-yadak', 'سایپا یدک', 'برند سایپا یدک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (84, 'کروز', NULL, 1, 'crouse', 'کروز', 'برند کروز', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (85, 'واریان', NULL, 0, 'varian', 'واریان', 'برند واریان', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (86, 'ایران‌خودرو', NULL, 1, 'ikco', 'ایران‌خودرو', 'برند ایران‌خودرو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (87, 'سرام', NULL, 0, 'seram', 'سرام', 'برند سرام', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (88, 'تکستار', NULL, 0, 'textar', 'تکستار', 'برند تکستار', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (89, 'دنسو', NULL, 0, 'denso', 'دنسو', 'برند دنسو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (90, 'ان‌جی‌کی', NULL, 0, 'ngk', 'ان‌جی‌کی', 'برند ان‌جی‌کی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (91, 'والئو', NULL, 0, 'valeo', 'والئو', 'برند والئو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (92, 'مگاموتور', NULL, 0, 'megamotor', 'مگاموتور', 'برند مگاموتور', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (93, 'سپهر', NULL, 0, 'sepehr', 'سپهر', 'برند سپهر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (94, 'آرین', NULL, 0, 'arian', 'آرین', 'برند آرین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (95, 'کوشش', NULL, 0, 'kooshesh', 'کوشش', 'برند کوشش', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (96, 'هایک ویژن', NULL, 1, 'hikvision', 'هایک ویژن', 'برند هایک ویژن', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (97, 'داهوا', NULL, 1, 'dahua', 'داهوا', 'برند داهوا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (98, 'یونی‌ویو', NULL, 1, 'uniview', 'یونی‌ویو', 'برند یونی‌ویو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (99, 'تک‌وین سی‌سی‌تی‌وی', NULL, 0, 'techwin-cctv', 'تک‌وین', 'برند تک‌وین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (100, 'پارس‌کام', NULL, 0, 'parskam', 'پارس‌کام', 'برند پارس‌کام', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (101, 'آی‌پی‌کم', NULL, 0, 'ipcam', 'آی‌پی‌کم', 'برند آی‌پی‌کم', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (102, 'وینتک', NULL, 0, 'wintech', 'وینتک', 'برند وینتک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (103, 'میلوک', NULL, 0, 'milok', 'میلوک', 'برند میلوک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (104, 'آلباتروس', NULL, 0, 'albatross', 'آلباتروس', 'برند آلباتروس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (105, 'دی‌لینک', NULL, 0, 'dlink', 'دی‌لینک', 'برند دی‌لینک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (106, 'ماکیتا', NULL, 1, 'makita', 'ماکیتا', 'برند ماکیتا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (107, 'دیوالت', NULL, 1, 'dewalt', 'دیوالت', 'برند دیوالت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (108, 'بوش ابزار', NULL, 1, 'bosch-tools', 'بوش', 'برند بوش', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (109, 'توسن', NULL, 1, 'tosan', 'توسن', 'برند توسن', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (110, 'رونیکس', NULL, 1, 'ronix', 'رونیکس', 'برند رونیکس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (111, 'هیوندای ابزار', NULL, 0, 'hyundai-tools', 'هیوندای', 'برند هیوندای', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (112, 'اینگکو', NULL, 0, 'ingco', 'اینگکو', 'برند اینگکو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (113, 'کرون', NULL, 0, 'crown', 'کرون', 'برند کرون', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (114, 'استنلی', NULL, 0, 'stanley', 'استنلی', 'برند استنلی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (115, 'مک‌تک', NULL, 0, 'mactech', 'مک‌تک', 'برند مک‌تک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (116, 'سونی پلی‌استیشن', NULL, 1, 'sony-playstation', 'سونی پلی‌استیشن', 'برند سونی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (117, 'مایکروسافت ایکس‌باکس', NULL, 1, 'microsoft-xbox', 'مایکروسافت ایکس‌باکس', 'برند مایکروسافت', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (118, 'نینتندو', NULL, 0, 'nintendo', 'نینتندو', 'برند نینتندو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (119, 'ریزر گیمینگ', NULL, 0, 'razer-gaming', 'ریزر', 'برند ریزر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (120, 'لاجیتک جی', NULL, 0, 'logitech-g', 'لاجیتک جی', 'برند لاجیتک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (121, 'زرین ایران', NULL, 0, 'zarin-iran', 'زرین ایران', 'برند زرین ایران', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (122, 'پارس‌پلاست', NULL, 0, 'pars-plast', 'پارس‌پلاست', 'برند پارس‌پلاست', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (123, 'چینی زرین', NULL, 1, 'zarin-china', 'چینی زرین', 'برند چینی زرین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (124, 'آرکوپال', NULL, 0, 'arcopal', 'آرکوپال', 'برند آرکوپال', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (125, 'پیرکس', NULL, 0, 'pyrex', 'پیرکس', 'برند پیرکس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (126, 'نچرال', NULL, 0, 'natural', 'نچرال', 'برند نچرال', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (127, 'دسینی', NULL, 0, 'dessini', 'دسینی', 'برند دسینی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (128, 'میران', NULL, 0, 'miran', 'میران', 'برند میران', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (129, 'نیکل', NULL, 0, 'nickel', 'نیکل', 'برند نیکل', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (130, 'توفالو', NULL, 0, 'tofalo', 'توفالو', 'برند توفالو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (131, 'نایک', NULL, 1, 'nike', 'نایک', 'برند نایک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (132, 'آدیداس', NULL, 1, 'adidas', 'آدیداس', 'برند آدیداس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (133, 'پوما', NULL, 1, 'puma', 'پوما', 'برند پوما', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (134, 'ریبوک', NULL, 0, 'reebok', 'ریبوک', 'برند ریبوک', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (135, 'اسکچرز', NULL, 0, 'skechers', 'اسکچرز', 'برند اسکچرز', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (136, 'نیوبالانس', NULL, 0, 'new-balance', 'نیوبالانس', 'برند نیوبالانس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (137, 'آندر آرمور', NULL, 0, 'under-armour', 'آندر آرمور', 'برند آندر آرمور', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (138, 'کلمبیا', NULL, 0, 'columbia', 'کلمبیا', 'برند کلمبیا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (139, 'نورث فیس', NULL, 0, 'north-face', 'نورث فیس', 'برند نورث فیس', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (140, 'کتو', NULL, 0, 'keto', 'کتو', 'برند کتو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (141, 'زارا', NULL, 1, 'zara', 'زارا', 'برند زارا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (142, 'اچ اند ام', NULL, 1, 'hm', 'اچ اند ام', 'برند اچ اند ام', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (143, 'مانگو', NULL, 1, 'mango', 'مانگو', 'برند مانگو', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (144, 'برشکا', NULL, 0, 'bershka', 'برشکا', 'برند برشکا', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (145, 'لیوایز', NULL, 1, 'levis', 'لیوایز', 'برند لیوایز', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (146, 'لی', NULL, 0, 'lee', 'لی', 'برند لی', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (147, 'تامی هیلفیگر', NULL, 0, 'tommy-hilfiger', 'تامی هیلفیگر', 'برند تامی هیلفیگر', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (148, 'کلوین کلاین', NULL, 0, 'calvin-klein', 'کلوین کلاین', 'برند کلوین کلاین', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (149, 'لاکوست', NULL, 0, 'lacoste', 'لاکوست', 'برند لاکوست', '2026-09-14 14:26:37', '2026-09-14 14:26:37');
INSERT INTO `brands` VALUES (150, 'گپ', NULL, 0, 'gap', 'گپ', 'برند گپ', '2026-09-14 14:26:37', '2026-09-14 14:26:37');

-- ----------------------------
-- Table structure for business_settings
-- ----------------------------
DROP TABLE IF EXISTS `business_settings`;
CREATE TABLE `business_settings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business_settings
-- ----------------------------
INSERT INTO `business_settings` VALUES (1, 'home_default_currency', '1', '2018-10-16 05:05:52', '2019-01-28 04:56:53');
INSERT INTO `business_settings` VALUES (2, 'system_default_currency', '1', '2018-10-16 05:06:58', '2020-01-26 07:52:13');
INSERT INTO `business_settings` VALUES (3, 'currency_format', '1', '2018-10-17 06:31:59', '2018-10-17 06:31:59');
INSERT INTO `business_settings` VALUES (4, 'symbol_format', '2', '2018-10-17 06:31:59', '2020-07-06 07:49:34');
INSERT INTO `business_settings` VALUES (5, 'no_of_decimals', '0', '2018-10-17 06:31:59', '2020-06-30 03:33:23');
INSERT INTO `business_settings` VALUES (6, 'product_activation', '1', '2018-10-28 05:08:37', '2019-02-04 04:41:41');
INSERT INTO `business_settings` VALUES (7, 'vendor_system_activation', '1', '2018-10-28 11:14:16', '2019-02-04 04:41:38');
INSERT INTO `business_settings` VALUES (8, 'show_vendors', '1', '2018-10-28 11:14:47', '2019-02-04 04:41:13');
INSERT INTO `business_settings` VALUES (9, 'paypal_payment', '0', '2018-10-28 11:15:16', '2019-01-31 08:39:10');
INSERT INTO `business_settings` VALUES (10, 'stripe_payment', '0', '2018-10-28 11:15:47', '2018-11-14 05:21:51');
INSERT INTO `business_settings` VALUES (11, 'cash_payment', '1', '2018-10-28 11:16:05', '2019-01-24 07:10:18');
INSERT INTO `business_settings` VALUES (12, 'payumoney_payment', '0', '2018-10-28 11:16:27', '2019-03-05 09:11:36');
INSERT INTO `business_settings` VALUES (13, 'best_selling', '1', '2018-12-24 11:43:44', '2019-02-14 08:59:13');
INSERT INTO `business_settings` VALUES (14, 'paypal_sandbox', '0', '2019-01-16 16:14:18', '2019-01-16 16:14:18');
INSERT INTO `business_settings` VALUES (15, 'sslcommerz_sandbox', '1', '2019-01-16 16:14:18', '2019-03-14 03:37:26');
INSERT INTO `business_settings` VALUES (16, 'sslcommerz_payment', '0', '2019-01-24 13:09:07', '2019-01-29 09:43:46');
INSERT INTO `business_settings` VALUES (17, 'vendor_commission', '80', '2019-01-31 09:48:04', '2020-07-13 06:56:13');
INSERT INTO `business_settings` VALUES (18, 'verification_form', '[{\"type\":\"text\",\"label\":\"\\u0646\\u0627\\u0645 \\u0648 \\u0646\\u0627\\u0645 \\u062e\\u0627\\u0646\\u0648\\u0627\\u062f\\u06af\\u06cc\"},{\"type\":\"text\",\"label\":\"\\u0646\\u0627\\u0645 \\u067e\\u062f\\u0631\"},{\"type\":\"text\",\"label\":\"\\u0634\\u0645\\u0627\\u0631\\u0647 \\u0634\\u0646\\u0627\\u0633\\u0646\\u0627\\u0645\\u0647\"},{\"type\":\"text\",\"label\":\"\\u06a9\\u062f\\u0645\\u0644\\u06cc\"},{\"type\":\"text\",\"label\":\"\\u0634\\u0645\\u0627\\u0631\\u0647 \\u067e\\u0631\\u0648\\u0627\\u0646\\u0647 \\u06a9\\u0633\\u0628\"},{\"type\":\"text\",\"label\":\"\\u0634\\u0645\\u0627\\u0631\\u0647 \\u062a\\u0644\\u0641\\u0646 \\u0647\\u0645\\u0631\\u0627\\u0647\"},{\"type\":\"text\",\"label\":\"\\u0634\\u0645\\u0627\\u0631\\u0647 \\u062a\\u0644\\u0641\\u0646 \\u062b\\u0627\\u0628\\u062a\"},{\"type\":\"text\",\"label\":\"\\u0622\\u062f\\u0631\\u0633\"},{\"type\":\"file\",\"label\":\"\\u0645\\u062f\\u0627\\u0631\\u06a9 \\u0634\\u0646\\u0627\\u0633\\u0627\\u06cc\\u06cc\"},{\"type\":\"file\",\"label\":\"\\u0645\\u062f\\u0627\\u0631\\u06a9 \\u06a9\\u0633\\u0628 \\u0648 \\u06a9\\u0627\\u0631\"}]', '2019-02-03 15:06:58', '2025-12-31 14:06:10');
INSERT INTO `business_settings` VALUES (19, 'google_analytics', '0', '2019-02-06 15:52:35', '2019-02-06 15:52:35');
INSERT INTO `business_settings` VALUES (20, 'facebook_login', '0', '2019-02-07 16:21:59', '2019-02-08 23:11:15');
INSERT INTO `business_settings` VALUES (21, 'google_login', '0', '2019-02-07 16:22:10', '2019-02-08 23:11:14');
INSERT INTO `business_settings` VALUES (22, 'twitter_login', '0', '2019-02-07 16:22:20', '2019-02-08 06:02:56');
INSERT INTO `business_settings` VALUES (23, 'payumoney_payment', '1', '2019-03-05 15:08:17', '2019-03-05 15:08:17');
INSERT INTO `business_settings` VALUES (24, 'payumoney_sandbox', '1', '2019-03-05 15:08:17', '2019-03-05 09:09:18');
INSERT INTO `business_settings` VALUES (36, 'facebook_chat', '0', '2019-04-15 15:15:04', '2019-04-15 15:15:04');
INSERT INTO `business_settings` VALUES (37, 'email_verification', '0', '2019-04-30 11:00:07', '2019-04-30 11:00:07');
INSERT INTO `business_settings` VALUES (38, 'wallet_system', '0', '2019-05-19 11:35:44', '2020-08-05 03:51:08');
INSERT INTO `business_settings` VALUES (39, 'coupon_system', '0', '2019-06-11 13:16:18', '2019-06-11 13:16:18');
INSERT INTO `business_settings` VALUES (40, 'current_version', '2.9', '2019-06-11 13:16:18', '2019-06-11 13:16:18');
INSERT INTO `business_settings` VALUES (41, 'instamojo_payment', '0', '2019-07-06 13:28:03', '2019-07-06 13:28:03');
INSERT INTO `business_settings` VALUES (42, 'instamojo_sandbox', '1', '2019-07-06 13:28:43', '2019-07-06 13:28:43');
INSERT INTO `business_settings` VALUES (43, 'razorpay', '0', '2019-07-06 13:28:43', '2019-07-06 13:28:43');
INSERT INTO `business_settings` VALUES (44, 'paystack', '0', '2019-07-21 16:30:38', '2019-07-21 16:30:38');
INSERT INTO `business_settings` VALUES (45, 'pickup_point', '1', '2019-10-17 15:20:39', '2020-07-14 12:04:45');
INSERT INTO `business_settings` VALUES (46, 'maintenance_mode', '0', '2019-10-17 15:21:04', '2020-08-04 05:08:59');
INSERT INTO `business_settings` VALUES (47, 'voguepay', '0', '2019-10-17 15:21:24', '2019-10-17 15:21:24');
INSERT INTO `business_settings` VALUES (48, 'voguepay_sandbox', '0', '2019-10-17 15:21:38', '2019-10-17 15:21:38');
INSERT INTO `business_settings` VALUES (50, 'category_wise_commission', '0', '2020-01-21 10:52:47', '2020-01-21 10:52:47');
INSERT INTO `business_settings` VALUES (51, 'conversation_system', '1', '2020-01-21 10:53:21', '2020-01-21 10:53:21');
INSERT INTO `business_settings` VALUES (52, 'guest_checkout_active', '1', '2020-01-22 11:06:38', '2020-01-22 11:06:38');
INSERT INTO `business_settings` VALUES (53, 'facebook_pixel', '0', '2020-01-22 15:13:58', '2020-01-22 15:13:58');
INSERT INTO `business_settings` VALUES (55, 'classified_product', '0', '2020-05-13 16:31:05', '2020-08-05 03:44:49');
INSERT INTO `business_settings` VALUES (56, 'pos_activation_for_seller', '1', '2020-06-11 13:15:02', '2020-06-11 13:15:02');
INSERT INTO `business_settings` VALUES (57, 'shipping_type', 'product_wise_shipping', '2020-07-04 10:32:57', '2020-07-04 10:32:57');
INSERT INTO `business_settings` VALUES (58, 'flat_rate_shipping_cost', '0', '2020-07-04 10:32:57', '2020-07-04 10:32:57');
INSERT INTO `business_settings` VALUES (59, 'shipping_cost_admin', '0', '2020-07-04 10:32:57', '2020-07-04 10:32:57');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `variation` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `price` double(8, 2) NULL DEFAULT NULL,
  `tax` double(8, 2) NULL DEFAULT NULL,
  `shipping_cost` double(8, 2) NULL DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8, 2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `featured` int NOT NULL DEFAULT 0,
  `top` int NOT NULL DEFAULT 0,
  `digital` int NOT NULL DEFAULT 0,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (100, 'آرایشی بهداشتی', 0.00, NULL, 'uploads/categories/icon/beauty-health.webp', 0, 1, 0, 'beauty-health', 'آرایشی و بهداشتی', 'خرید لوازم آرایشی و بهداشتی', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (101, 'ابزار آلات و تجهیزات', 0.00, NULL, 'uploads/categories/icon/tools-equipment.webp', 0, 1, 0, 'tools-equipment', 'ابزار آلات و تجهیزات', 'خرید ابزار و تجهیزات', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (102, 'خانه و آشپزخانه', 0.00, NULL, 'uploads/categories/icon/home-kitchen.webp', 0, 1, 0, 'home-kitchen', 'خانه و آشپزخانه', 'خرید لوازم خانه و آشپزخانه', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (103, 'کالای دیجیتال', 0.00, NULL, 'uploads/categories/icon/digital-goods.webp', 0, 1, 0, 'digital-goods', 'کالای دیجیتال', 'خرید انواع کالای دیجیتال', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (104, 'مد و پوشاک', 0.00, NULL, 'uploads/categories/icon/fashion.webp', 0, 1, 0, 'fashion', 'مد و پوشاک', 'خرید انواع پوشاک', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (105, 'ورزش و سفر', 0.00, NULL, 'uploads/categories/icon/sport-travel.webp', 0, 1, 0, 'sport-travel', 'ورزش و سفر', 'لوازم ورزشی و سفر', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (106, 'کتاب و لوازم تحریر و هنر', 0.00, NULL, 'uploads/categories/icon/books-art.webp', 0, 1, 0, 'books-stationery-art', 'کتاب و لوازم تحریر و هنر', 'خرید کتاب و لوازم هنری', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (107, 'کودک و نوزاد', 0.00, NULL, 'uploads/categories/icon/baby-kids.webp', 0, 1, 0, 'baby-kids', 'کودک و نوزاد', 'لوازم کودک و نوزاد', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (108, 'لوازم خانگی و برقی', 0.00, NULL, 'uploads/categories/icon/home-appliances.webp', 0, 1, 0, 'home-appliances', 'لوازم خانگی و برقی', 'خرید لوازم خانگی و برقی', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (109, 'موبایل', 0.00, NULL, 'uploads/categories/icon/mobile.webp', 0, 1, 0, 'mobile', 'گوشی موبایل', 'خرید انواع گوشی موبایل', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (110, 'لپ‌تاپ', 0.00, NULL, 'uploads/categories/icon/laptop.webp', 0, 1, 0, 'laptop', 'لپ تاپ', 'خرید انواع لپ تاپ', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (111, 'تجهیزات پزشکی', 0.00, NULL, 'uploads/categories/icon/medical-equipment.webp', 0, 1, 0, 'medical-equipment', 'تجهیزات پزشکی', 'خرید تجهیزات پزشکی', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (112, 'موتور سیکلت', 0.00, NULL, 'uploads/categories/icon/motorcycle.webp', 0, 1, 0, 'motorcycle', 'موتور سیکلت', 'خرید موتور سیکلت و لوازم یدکی', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (113, 'طلا و نقره', 0.00, NULL, 'uploads/categories/icon/gold-silver.webp', 0, 1, 0, 'gold-silver', 'طلا و نقره', 'خرید طلا، نقره و جواهرات', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (114, 'پت شاپ', 0.00, NULL, 'uploads/categories/icon/petshop.webp', 0, 1, 0, 'pet-shop', 'پت شاپ', 'لوازم حیوانات خانگی', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (115, 'محصولات سنتی و بومی', 0.00, NULL, 'uploads/categories/icon/traditional.webp', 0, 1, 0, 'traditional-products', 'محصولات سنتی و بومی', 'محصولات سنتی و بومی ایران', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (116, 'لوازم یدکی خودرو', 0.00, NULL, 'uploads/categories/icon/car-parts.webp', 0, 1, 0, 'car-parts', 'لوازم یدکی خودرو', 'خرید لوازم یدکی خودرو', '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `categories` VALUES (117, 'ساعت‌های لوکس', 0.00, NULL, NULL, 0, 1, 0, 'luxury-watches', 'ساعت‌های لوکس', 'خرید ساعت‌های لوکس و برند', '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `categories` VALUES (118, 'دوربین مداربسته و امنیتی', 0.00, NULL, NULL, 0, 1, 0, 'security-cameras', 'دوربین مداربسته', 'خرید دوربین مداربسته و تجهیزات امنیتی', '2026-09-14 14:22:26', '2026-09-14 14:22:26');

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES (1, 'IndianRed', '#CD5C5C', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (2, 'LightCoral', '#F08080', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (3, 'Salmon', '#FA8072', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (4, 'DarkSalmon', '#E9967A', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (5, 'LightSalmon', '#FFA07A', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (6, 'Crimson', '#DC143C', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (7, 'Red', '#FF0000', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (8, 'FireBrick', '#B22222', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (9, 'DarkRed', '#8B0000', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (10, 'Pink', '#FFC0CB', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (11, 'LightPink', '#FFB6C1', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (12, 'HotPink', '#FF69B4', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (13, 'DeepPink', '#FF1493', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (14, 'MediumVioletRed', '#C71585', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (15, 'PaleVioletRed', '#DB7093', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (16, 'LightSalmon', '#FFA07A', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (17, 'Coral', '#FF7F50', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (18, 'Tomato', '#FF6347', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (19, 'OrangeRed', '#FF4500', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (20, 'DarkOrange', '#FF8C00', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (21, 'Orange', '#FFA500', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (22, 'Gold', '#FFD700', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (23, 'Yellow', '#FFFF00', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (24, 'LightYellow', '#FFFFE0', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (25, 'LemonChiffon', '#FFFACD', '2018-11-05 05:42:26', '2018-11-05 05:42:26');
INSERT INTO `colors` VALUES (26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (27, 'PapayaWhip', '#FFEFD5', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (28, 'Moccasin', '#FFE4B5', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (29, 'PeachPuff', '#FFDAB9', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (31, 'Khaki', '#F0E68C', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (32, 'DarkKhaki', '#BDB76B', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (33, 'Lavender', '#E6E6FA', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (34, 'Thistle', '#D8BFD8', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (35, 'Plum', '#DDA0DD', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (36, 'Violet', '#EE82EE', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (37, 'Orchid', '#DA70D6', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (38, 'Fuchsia', '#FF00FF', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (39, 'Magenta', '#FF00FF', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (40, 'MediumOrchid', '#BA55D3', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (41, 'MediumPurple', '#9370DB', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (42, 'Amethyst', '#9966CC', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (43, 'BlueViolet', '#8A2BE2', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (44, 'DarkViolet', '#9400D3', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (45, 'DarkOrchid', '#9932CC', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (46, 'DarkMagenta', '#8B008B', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (47, 'Purple', '#800080', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (48, 'Indigo', '#4B0082', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (49, 'SlateBlue', '#6A5ACD', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (50, 'DarkSlateBlue', '#483D8B', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (52, 'GreenYellow', '#ADFF2F', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (53, 'Chartreuse', '#7FFF00', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (54, 'LawnGreen', '#7CFC00', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (55, 'Lime', '#00FF00', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (56, 'LimeGreen', '#32CD32', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (57, 'PaleGreen', '#98FB98', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (58, 'LightGreen', '#90EE90', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (60, 'SpringGreen', '#00FF7F', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (61, 'MediumSeaGreen', '#3CB371', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (62, 'SeaGreen', '#2E8B57', '2018-11-05 05:42:27', '2018-11-05 05:42:27');
INSERT INTO `colors` VALUES (63, 'ForestGreen', '#228B22', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (64, 'Green', '#008000', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (65, 'DarkGreen', '#006400', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (66, 'YellowGreen', '#9ACD32', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (67, 'OliveDrab', '#6B8E23', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (68, 'Olive', '#808000', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (69, 'DarkOliveGreen', '#556B2F', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (70, 'MediumAquamarine', '#66CDAA', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (72, 'LightSeaGreen', '#20B2AA', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (73, 'DarkCyan', '#008B8B', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (74, 'Teal', '#008080', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (75, 'Aqua', '#00FFFF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (76, 'Cyan', '#00FFFF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (77, 'LightCyan', '#E0FFFF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (79, 'Aquamarine', '#7FFFD4', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (80, 'Turquoise', '#40E0D0', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (81, 'MediumTurquoise', '#48D1CC', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (82, 'DarkTurquoise', '#00CED1', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (83, 'CadetBlue', '#5F9EA0', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (84, 'SteelBlue', '#4682B4', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (86, 'PowderBlue', '#B0E0E6', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (87, 'LightBlue', '#ADD8E6', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (88, 'SkyBlue', '#87CEEB', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (89, 'LightSkyBlue', '#87CEFA', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (91, 'DodgerBlue', '#1E90FF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (92, 'CornflowerBlue', '#6495ED', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (94, 'RoyalBlue', '#4169E1', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (95, 'Blue', '#0000FF', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (96, 'MediumBlue', '#0000CD', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (97, 'DarkBlue', '#00008B', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (98, 'Navy', '#000080', '2018-11-05 05:42:28', '2018-11-05 05:42:28');
INSERT INTO `colors` VALUES (99, 'MidnightBlue', '#191970', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (100, 'Cornsilk', '#FFF8DC', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (102, 'Bisque', '#FFE4C4', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (103, 'NavajoWhite', '#FFDEAD', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (104, 'Wheat', '#F5DEB3', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (105, 'BurlyWood', '#DEB887', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (106, 'Tan', '#D2B48C', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (107, 'RosyBrown', '#BC8F8F', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (108, 'SandyBrown', '#F4A460', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (109, 'Goldenrod', '#DAA520', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (110, 'DarkGoldenrod', '#B8860B', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (111, 'Peru', '#CD853F', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (112, 'Chocolate', '#D2691E', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (113, 'SaddleBrown', '#8B4513', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (114, 'Sienna', '#A0522D', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (115, 'Brown', '#A52A2A', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (116, 'Maroon', '#800000', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (117, 'White', '#FFFFFF', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (118, 'Snow', '#FFFAFA', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (119, 'Honeydew', '#F0FFF0', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (120, 'MintCream', '#F5FFFA', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (121, 'Azure', '#F0FFFF', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (122, 'AliceBlue', '#F0F8FF', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (123, 'GhostWhite', '#F8F8FF', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (125, 'Seashell', '#FFF5EE', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (126, 'Beige', '#F5F5DC', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (127, 'OldLace', '#FDF5E6', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (128, 'FloralWhite', '#FFFAF0', '2018-11-05 05:42:29', '2018-11-05 05:42:29');
INSERT INTO `colors` VALUES (129, 'Ivory', '#FFFFF0', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (131, 'Linen', '#FAF0E6', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (132, 'LavenderBlush', '#FFF0F5', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (133, 'MistyRose', '#FFE4E1', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (134, 'Gainsboro', '#DCDCDC', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (135, 'LightGrey', '#D3D3D3', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (136, 'Silver', '#C0C0C0', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (137, 'DarkGray', '#A9A9A9', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (138, 'Gray', '#808080', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (139, 'DimGray', '#696969', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (140, 'LightSlateGray', '#778899', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (141, 'SlateGray', '#708090', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 05:42:30', '2018-11-05 05:42:30');
INSERT INTO `colors` VALUES (143, 'Black', '#000000', '2018-11-05 05:42:30', '2018-11-05 05:42:30');

-- ----------------------------
-- Table structure for conversations
-- ----------------------------
DROP TABLE IF EXISTS `conversations`;
CREATE TABLE `conversations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf32 COLLATE utf32_unicode_ci NULL DEFAULT NULL,
  `sender_viewed` int NOT NULL DEFAULT 1,
  `receiver_viewed` int NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf32 COLLATE = utf32_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conversations
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 297 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'AF', 'Afghanistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (2, 'AL', 'Albania', 1, NULL, NULL);
INSERT INTO `countries` VALUES (3, 'DZ', 'Algeria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (4, 'DS', 'American Samoa', 1, NULL, NULL);
INSERT INTO `countries` VALUES (5, 'AD', 'Andorra', 1, NULL, NULL);
INSERT INTO `countries` VALUES (6, 'AO', 'Angola', 1, NULL, NULL);
INSERT INTO `countries` VALUES (7, 'AI', 'Anguilla', 1, NULL, NULL);
INSERT INTO `countries` VALUES (8, 'AQ', 'Antarctica', 1, NULL, NULL);
INSERT INTO `countries` VALUES (9, 'AG', 'Antigua and Barbuda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (10, 'AR', 'Argentina', 1, NULL, NULL);
INSERT INTO `countries` VALUES (11, 'AM', 'Armenia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (12, 'AW', 'Aruba', 1, NULL, NULL);
INSERT INTO `countries` VALUES (13, 'AU', 'Australia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (14, 'AT', 'Austria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (15, 'AZ', 'Azerbaijan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (16, 'BS', 'Bahamas', 1, NULL, NULL);
INSERT INTO `countries` VALUES (17, 'BH', 'Bahrain', 1, NULL, NULL);
INSERT INTO `countries` VALUES (18, 'BD', 'Bangladesh', 1, NULL, NULL);
INSERT INTO `countries` VALUES (19, 'BB', 'Barbados', 1, NULL, NULL);
INSERT INTO `countries` VALUES (20, 'BY', 'Belarus', 1, NULL, NULL);
INSERT INTO `countries` VALUES (21, 'BE', 'Belgium', 1, NULL, NULL);
INSERT INTO `countries` VALUES (22, 'BZ', 'Belize', 1, NULL, NULL);
INSERT INTO `countries` VALUES (23, 'BJ', 'Benin', 1, NULL, NULL);
INSERT INTO `countries` VALUES (24, 'BM', 'Bermuda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (25, 'BT', 'Bhutan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (26, 'BO', 'Bolivia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (27, 'BA', 'Bosnia and Herzegovina', 1, NULL, NULL);
INSERT INTO `countries` VALUES (28, 'BW', 'Botswana', 1, NULL, NULL);
INSERT INTO `countries` VALUES (29, 'BV', 'Bouvet Island', 1, NULL, NULL);
INSERT INTO `countries` VALUES (30, 'BR', 'Brazil', 1, NULL, NULL);
INSERT INTO `countries` VALUES (31, 'IO', 'British Indian Ocean Territory', 1, NULL, NULL);
INSERT INTO `countries` VALUES (32, 'BN', 'Brunei Darussalam', 1, NULL, NULL);
INSERT INTO `countries` VALUES (33, 'BG', 'Bulgaria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (34, 'BF', 'Burkina Faso', 1, NULL, NULL);
INSERT INTO `countries` VALUES (35, 'BI', 'Burundi', 1, NULL, NULL);
INSERT INTO `countries` VALUES (36, 'KH', 'Cambodia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (37, 'CM', 'Cameroon', 1, NULL, NULL);
INSERT INTO `countries` VALUES (38, 'CA', 'Canada', 1, NULL, NULL);
INSERT INTO `countries` VALUES (39, 'CV', 'Cape Verde', 1, NULL, NULL);
INSERT INTO `countries` VALUES (40, 'KY', 'Cayman Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (41, 'CF', 'Central African Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (42, 'TD', 'Chad', 1, NULL, NULL);
INSERT INTO `countries` VALUES (43, 'CL', 'Chile', 1, NULL, NULL);
INSERT INTO `countries` VALUES (44, 'CN', 'China', 1, NULL, NULL);
INSERT INTO `countries` VALUES (45, 'CX', 'Christmas Island', 1, NULL, NULL);
INSERT INTO `countries` VALUES (46, 'CC', 'Cocos (Keeling) Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (47, 'CO', 'Colombia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (48, 'KM', 'Comoros', 1, NULL, NULL);
INSERT INTO `countries` VALUES (49, 'CG', 'Congo', 1, NULL, NULL);
INSERT INTO `countries` VALUES (50, 'CK', 'Cook Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (51, 'CR', 'Costa Rica', 1, NULL, NULL);
INSERT INTO `countries` VALUES (52, 'HR', 'Croatia (Hrvatska)', 1, NULL, NULL);
INSERT INTO `countries` VALUES (53, 'CU', 'Cuba', 1, NULL, NULL);
INSERT INTO `countries` VALUES (54, 'CY', 'Cyprus', 1, NULL, NULL);
INSERT INTO `countries` VALUES (55, 'CZ', 'Czech Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (56, 'DK', 'Denmark', 1, NULL, NULL);
INSERT INTO `countries` VALUES (57, 'DJ', 'Djibouti', 1, NULL, NULL);
INSERT INTO `countries` VALUES (58, 'DM', 'Dominica', 1, NULL, NULL);
INSERT INTO `countries` VALUES (59, 'DO', 'Dominican Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (60, 'TP', 'East Timor', 1, NULL, NULL);
INSERT INTO `countries` VALUES (61, 'EC', 'Ecuador', 1, NULL, NULL);
INSERT INTO `countries` VALUES (62, 'EG', 'Egypt', 1, NULL, NULL);
INSERT INTO `countries` VALUES (63, 'SV', 'El Salvador', 1, NULL, NULL);
INSERT INTO `countries` VALUES (64, 'GQ', 'Equatorial Guinea', 1, NULL, NULL);
INSERT INTO `countries` VALUES (65, 'ER', 'Eritrea', 1, NULL, NULL);
INSERT INTO `countries` VALUES (66, 'EE', 'Estonia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (67, 'ET', 'Ethiopia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (68, 'FK', 'Falkland Islands (Malvinas)', 1, NULL, NULL);
INSERT INTO `countries` VALUES (69, 'FO', 'Faroe Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (70, 'FJ', 'Fiji', 1, NULL, NULL);
INSERT INTO `countries` VALUES (71, 'FI', 'Finland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (72, 'FR', 'France', 1, NULL, NULL);
INSERT INTO `countries` VALUES (73, 'FX', 'France, Metropolitan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (74, 'GF', 'French Guiana', 1, NULL, NULL);
INSERT INTO `countries` VALUES (75, 'PF', 'French Polynesia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (76, 'TF', 'French Southern Territories', 1, NULL, NULL);
INSERT INTO `countries` VALUES (77, 'GA', 'Gabon', 1, NULL, NULL);
INSERT INTO `countries` VALUES (78, 'GM', 'Gambia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (79, 'GE', 'Georgia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (80, 'DE', 'Germany', 1, NULL, NULL);
INSERT INTO `countries` VALUES (81, 'GH', 'Ghana', 1, NULL, NULL);
INSERT INTO `countries` VALUES (82, 'GI', 'Gibraltar', 1, NULL, NULL);
INSERT INTO `countries` VALUES (83, 'GK', 'Guernsey', 1, NULL, NULL);
INSERT INTO `countries` VALUES (84, 'GR', 'Greece', 1, NULL, NULL);
INSERT INTO `countries` VALUES (85, 'GL', 'Greenland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (86, 'GD', 'Grenada', 1, NULL, NULL);
INSERT INTO `countries` VALUES (87, 'GP', 'Guadeloupe', 1, NULL, NULL);
INSERT INTO `countries` VALUES (88, 'GU', 'Guam', 1, NULL, NULL);
INSERT INTO `countries` VALUES (89, 'GT', 'Guatemala', 1, NULL, NULL);
INSERT INTO `countries` VALUES (90, 'GN', 'Guinea', 1, NULL, NULL);
INSERT INTO `countries` VALUES (91, 'GW', 'Guinea-Bissau', 1, NULL, NULL);
INSERT INTO `countries` VALUES (92, 'GY', 'Guyana', 1, NULL, NULL);
INSERT INTO `countries` VALUES (93, 'HT', 'Haiti', 1, NULL, NULL);
INSERT INTO `countries` VALUES (94, 'HM', 'Heard and Mc Donald Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (95, 'HN', 'Honduras', 1, NULL, NULL);
INSERT INTO `countries` VALUES (96, 'HK', 'Hong Kong', 1, NULL, NULL);
INSERT INTO `countries` VALUES (97, 'HU', 'Hungary', 1, NULL, NULL);
INSERT INTO `countries` VALUES (98, 'IS', 'Iceland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (99, 'IN', 'India', 1, NULL, NULL);
INSERT INTO `countries` VALUES (100, 'IM', 'Isle of Man', 1, NULL, NULL);
INSERT INTO `countries` VALUES (101, 'ID', 'Indonesia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (102, 'IR', 'Iran (Islamic Republic of)', 1, NULL, NULL);
INSERT INTO `countries` VALUES (103, 'IQ', 'Iraq', 1, NULL, NULL);
INSERT INTO `countries` VALUES (104, 'IE', 'Ireland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (105, 'IL', 'Israel', 1, NULL, NULL);
INSERT INTO `countries` VALUES (106, 'IT', 'Italy', 1, NULL, NULL);
INSERT INTO `countries` VALUES (107, 'CI', 'Ivory Coast', 1, NULL, NULL);
INSERT INTO `countries` VALUES (108, 'JE', 'Jersey', 1, NULL, NULL);
INSERT INTO `countries` VALUES (109, 'JM', 'Jamaica', 1, NULL, NULL);
INSERT INTO `countries` VALUES (110, 'JP', 'Japan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (111, 'JO', 'Jordan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (112, 'KZ', 'Kazakhstan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (113, 'KE', 'Kenya', 1, NULL, NULL);
INSERT INTO `countries` VALUES (114, 'KI', 'Kiribati', 1, NULL, NULL);
INSERT INTO `countries` VALUES (115, 'KP', 'Korea, Democratic People\'s Republic of', 1, NULL, NULL);
INSERT INTO `countries` VALUES (116, 'KR', 'Korea, Republic of', 1, NULL, NULL);
INSERT INTO `countries` VALUES (117, 'XK', 'Kosovo', 1, NULL, NULL);
INSERT INTO `countries` VALUES (118, 'KW', 'Kuwait', 1, NULL, NULL);
INSERT INTO `countries` VALUES (119, 'KG', 'Kyrgyzstan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (120, 'LA', 'Lao People\'s Democratic Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (121, 'LV', 'Latvia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (122, 'LB', 'Lebanon', 1, NULL, NULL);
INSERT INTO `countries` VALUES (123, 'LS', 'Lesotho', 1, NULL, NULL);
INSERT INTO `countries` VALUES (124, 'LR', 'Liberia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (125, 'LY', 'Libyan Arab Jamahiriya', 1, NULL, NULL);
INSERT INTO `countries` VALUES (126, 'LI', 'Liechtenstein', 1, NULL, NULL);
INSERT INTO `countries` VALUES (127, 'LT', 'Lithuania', 1, NULL, NULL);
INSERT INTO `countries` VALUES (128, 'LU', 'Luxembourg', 1, NULL, NULL);
INSERT INTO `countries` VALUES (129, 'MO', 'Macau', 1, NULL, NULL);
INSERT INTO `countries` VALUES (130, 'MK', 'Macedonia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (131, 'MG', 'Madagascar', 1, NULL, NULL);
INSERT INTO `countries` VALUES (132, 'MW', 'Malawi', 1, NULL, NULL);
INSERT INTO `countries` VALUES (133, 'MY', 'Malaysia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (134, 'MV', 'Maldives', 1, NULL, NULL);
INSERT INTO `countries` VALUES (135, 'ML', 'Mali', 1, NULL, NULL);
INSERT INTO `countries` VALUES (136, 'MT', 'Malta', 1, NULL, NULL);
INSERT INTO `countries` VALUES (137, 'MH', 'Marshall Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (138, 'MQ', 'Martinique', 1, NULL, NULL);
INSERT INTO `countries` VALUES (139, 'MR', 'Mauritania', 1, NULL, NULL);
INSERT INTO `countries` VALUES (140, 'MU', 'Mauritius', 1, NULL, NULL);
INSERT INTO `countries` VALUES (141, 'TY', 'Mayotte', 1, NULL, NULL);
INSERT INTO `countries` VALUES (142, 'MX', 'Mexico', 1, NULL, NULL);
INSERT INTO `countries` VALUES (143, 'FM', 'Micronesia, Federated States of', 1, NULL, NULL);
INSERT INTO `countries` VALUES (144, 'MD', 'Moldova, Republic of', 1, NULL, NULL);
INSERT INTO `countries` VALUES (145, 'MC', 'Monaco', 1, NULL, NULL);
INSERT INTO `countries` VALUES (146, 'MN', 'Mongolia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (147, 'ME', 'Montenegro', 1, NULL, NULL);
INSERT INTO `countries` VALUES (148, 'MS', 'Montserrat', 1, NULL, NULL);
INSERT INTO `countries` VALUES (149, 'MA', 'Morocco', 1, NULL, NULL);
INSERT INTO `countries` VALUES (150, 'MZ', 'Mozambique', 1, NULL, NULL);
INSERT INTO `countries` VALUES (151, 'MM', 'Myanmar', 1, NULL, NULL);
INSERT INTO `countries` VALUES (152, 'NA', 'Namibia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (153, 'NR', 'Nauru', 1, NULL, NULL);
INSERT INTO `countries` VALUES (154, 'NP', 'Nepal', 1, NULL, NULL);
INSERT INTO `countries` VALUES (155, 'NL', 'Netherlands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (156, 'AN', 'Netherlands Antilles', 1, NULL, NULL);
INSERT INTO `countries` VALUES (157, 'NC', 'New Caledonia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (158, 'NZ', 'New Zealand', 1, NULL, NULL);
INSERT INTO `countries` VALUES (159, 'NI', 'Nicaragua', 1, NULL, NULL);
INSERT INTO `countries` VALUES (160, 'NE', 'Niger', 1, NULL, NULL);
INSERT INTO `countries` VALUES (161, 'NG', 'Nigeria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (162, 'NU', 'Niue', 1, NULL, NULL);
INSERT INTO `countries` VALUES (163, 'NF', 'Norfolk Island', 1, NULL, NULL);
INSERT INTO `countries` VALUES (164, 'MP', 'Northern Mariana Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (165, 'NO', 'Norway', 1, NULL, NULL);
INSERT INTO `countries` VALUES (166, 'OM', 'Oman', 1, NULL, NULL);
INSERT INTO `countries` VALUES (167, 'PK', 'Pakistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (168, 'PW', 'Palau', 1, NULL, NULL);
INSERT INTO `countries` VALUES (169, 'PS', 'Palestine', 1, NULL, NULL);
INSERT INTO `countries` VALUES (170, 'PA', 'Panama', 1, NULL, NULL);
INSERT INTO `countries` VALUES (171, 'PG', 'Papua New Guinea', 1, NULL, NULL);
INSERT INTO `countries` VALUES (172, 'PY', 'Paraguay', 1, NULL, NULL);
INSERT INTO `countries` VALUES (173, 'PE', 'Peru', 1, NULL, NULL);
INSERT INTO `countries` VALUES (174, 'PH', 'Philippines', 1, NULL, NULL);
INSERT INTO `countries` VALUES (175, 'PN', 'Pitcairn', 1, NULL, NULL);
INSERT INTO `countries` VALUES (176, 'PL', 'Poland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (177, 'PT', 'Portugal', 1, NULL, NULL);
INSERT INTO `countries` VALUES (178, 'PR', 'Puerto Rico', 1, NULL, NULL);
INSERT INTO `countries` VALUES (179, 'QA', 'Qatar', 1, NULL, NULL);
INSERT INTO `countries` VALUES (180, 'RE', 'Reunion', 1, NULL, NULL);
INSERT INTO `countries` VALUES (181, 'RO', 'Romania', 1, NULL, NULL);
INSERT INTO `countries` VALUES (182, 'RU', 'Russian Federation', 1, NULL, NULL);
INSERT INTO `countries` VALUES (183, 'RW', 'Rwanda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (184, 'KN', 'Saint Kitts and Nevis', 1, NULL, NULL);
INSERT INTO `countries` VALUES (185, 'LC', 'Saint Lucia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (186, 'VC', 'Saint Vincent and the Grenadines', 1, NULL, NULL);
INSERT INTO `countries` VALUES (187, 'WS', 'Samoa', 1, NULL, NULL);
INSERT INTO `countries` VALUES (188, 'SM', 'San Marino', 1, NULL, NULL);
INSERT INTO `countries` VALUES (189, 'ST', 'Sao Tome and Principe', 1, NULL, NULL);
INSERT INTO `countries` VALUES (190, 'SA', 'Saudi Arabia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (191, 'SN', 'Senegal', 1, NULL, NULL);
INSERT INTO `countries` VALUES (192, 'RS', 'Serbia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (193, 'SC', 'Seychelles', 1, NULL, NULL);
INSERT INTO `countries` VALUES (194, 'SL', 'Sierra Leone', 1, NULL, NULL);
INSERT INTO `countries` VALUES (195, 'SG', 'Singapore', 1, NULL, NULL);
INSERT INTO `countries` VALUES (196, 'SK', 'Slovakia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (197, 'SI', 'Slovenia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (198, 'SB', 'Solomon Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (199, 'SO', 'Somalia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (200, 'ZA', 'South Africa', 1, NULL, NULL);
INSERT INTO `countries` VALUES (201, 'GS', 'South Georgia South Sandwich Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (202, 'SS', 'South Sudan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (203, 'ES', 'Spain', 1, NULL, NULL);
INSERT INTO `countries` VALUES (204, 'LK', 'Sri Lanka', 1, NULL, NULL);
INSERT INTO `countries` VALUES (205, 'SH', 'St. Helena', 1, NULL, NULL);
INSERT INTO `countries` VALUES (206, 'PM', 'St. Pierre and Miquelon', 1, NULL, NULL);
INSERT INTO `countries` VALUES (207, 'SD', 'Sudan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (208, 'SR', 'Suriname', 1, NULL, NULL);
INSERT INTO `countries` VALUES (209, 'SJ', 'Svalbard and Jan Mayen Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (210, 'SZ', 'Swaziland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (211, 'SE', 'Sweden', 1, NULL, NULL);
INSERT INTO `countries` VALUES (212, 'CH', 'Switzerland', 1, NULL, NULL);
INSERT INTO `countries` VALUES (213, 'SY', 'Syrian Arab Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (214, 'TW', 'Taiwan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (215, 'TJ', 'Tajikistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (216, 'TZ', 'Tanzania, United Republic of', 1, NULL, NULL);
INSERT INTO `countries` VALUES (217, 'TH', 'Thailand', 1, NULL, NULL);
INSERT INTO `countries` VALUES (218, 'TG', 'Togo', 1, NULL, NULL);
INSERT INTO `countries` VALUES (219, 'TK', 'Tokelau', 1, NULL, NULL);
INSERT INTO `countries` VALUES (220, 'TO', 'Tonga', 1, NULL, NULL);
INSERT INTO `countries` VALUES (221, 'TT', 'Trinidad and Tobago', 1, NULL, NULL);
INSERT INTO `countries` VALUES (222, 'TN', 'Tunisia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (223, 'TR', 'Turkey', 1, NULL, NULL);
INSERT INTO `countries` VALUES (224, 'TM', 'Turkmenistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (225, 'TC', 'Turks and Caicos Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (226, 'TV', 'Tuvalu', 1, NULL, NULL);
INSERT INTO `countries` VALUES (227, 'UG', 'Uganda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (228, 'UA', 'Ukraine', 1, NULL, NULL);
INSERT INTO `countries` VALUES (229, 'AE', 'United Arab Emirates', 1, NULL, NULL);
INSERT INTO `countries` VALUES (230, 'GB', 'United Kingdom', 1, NULL, NULL);
INSERT INTO `countries` VALUES (231, 'US', 'United States', 1, NULL, NULL);
INSERT INTO `countries` VALUES (232, 'UM', 'United States minor outlying islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (233, 'UY', 'Uruguay', 1, NULL, NULL);
INSERT INTO `countries` VALUES (234, 'UZ', 'Uzbekistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (235, 'VU', 'Vanuatu', 1, NULL, NULL);
INSERT INTO `countries` VALUES (236, 'VA', 'Vatican City State', 1, NULL, NULL);
INSERT INTO `countries` VALUES (237, 'VE', 'Venezuela', 1, NULL, NULL);
INSERT INTO `countries` VALUES (238, 'VN', 'Vietnam', 1, NULL, NULL);
INSERT INTO `countries` VALUES (239, 'VG', 'Virgin Islands (British)', 1, NULL, NULL);
INSERT INTO `countries` VALUES (240, 'VI', 'Virgin Islands (U.S.)', 1, NULL, NULL);
INSERT INTO `countries` VALUES (241, 'WF', 'Wallis and Futuna Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (242, 'EH', 'Western Sahara', 1, NULL, NULL);
INSERT INTO `countries` VALUES (243, 'YE', 'Yemen', 1, NULL, NULL);
INSERT INTO `countries` VALUES (244, 'ZR', 'Zaire', 1, NULL, NULL);
INSERT INTO `countries` VALUES (245, 'ZM', 'Zambia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (246, 'ZW', 'Zimbabwe', 1, NULL, NULL);
INSERT INTO `countries` VALUES (247, 'AF', 'Afghanistan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (248, 'AL', 'Albania', 1, NULL, NULL);
INSERT INTO `countries` VALUES (249, 'DZ', 'Algeria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (250, 'DS', 'American Samoa', 1, NULL, NULL);
INSERT INTO `countries` VALUES (251, 'AD', 'Andorra', 1, NULL, NULL);
INSERT INTO `countries` VALUES (252, 'AO', 'Angola', 1, NULL, NULL);
INSERT INTO `countries` VALUES (253, 'AI', 'Anguilla', 1, NULL, NULL);
INSERT INTO `countries` VALUES (254, 'AQ', 'Antarctica', 1, NULL, NULL);
INSERT INTO `countries` VALUES (255, 'AG', 'Antigua and Barbuda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (256, 'AR', 'Argentina', 1, NULL, NULL);
INSERT INTO `countries` VALUES (257, 'AM', 'Armenia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (258, 'AW', 'Aruba', 1, NULL, NULL);
INSERT INTO `countries` VALUES (259, 'AU', 'Australia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (260, 'AT', 'Austria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (261, 'AZ', 'Azerbaijan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (262, 'BS', 'Bahamas', 1, NULL, NULL);
INSERT INTO `countries` VALUES (263, 'BH', 'Bahrain', 1, NULL, NULL);
INSERT INTO `countries` VALUES (264, 'BD', 'Bangladesh', 1, NULL, NULL);
INSERT INTO `countries` VALUES (265, 'BB', 'Barbados', 1, NULL, NULL);
INSERT INTO `countries` VALUES (266, 'BY', 'Belarus', 1, NULL, NULL);
INSERT INTO `countries` VALUES (267, 'BE', 'Belgium', 1, NULL, NULL);
INSERT INTO `countries` VALUES (268, 'BZ', 'Belize', 1, NULL, NULL);
INSERT INTO `countries` VALUES (269, 'BJ', 'Benin', 1, NULL, NULL);
INSERT INTO `countries` VALUES (270, 'BM', 'Bermuda', 1, NULL, NULL);
INSERT INTO `countries` VALUES (271, 'BT', 'Bhutan', 1, NULL, NULL);
INSERT INTO `countries` VALUES (272, 'BO', 'Bolivia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (273, 'BA', 'Bosnia and Herzegovina', 1, NULL, NULL);
INSERT INTO `countries` VALUES (274, 'BW', 'Botswana', 1, NULL, NULL);
INSERT INTO `countries` VALUES (275, 'BV', 'Bouvet Island', 1, NULL, NULL);
INSERT INTO `countries` VALUES (276, 'BR', 'Brazil', 1, NULL, NULL);
INSERT INTO `countries` VALUES (277, 'IO', 'British Indian Ocean Territory', 1, NULL, NULL);
INSERT INTO `countries` VALUES (278, 'BN', 'Brunei Darussalam', 1, NULL, NULL);
INSERT INTO `countries` VALUES (279, 'BG', 'Bulgaria', 1, NULL, NULL);
INSERT INTO `countries` VALUES (280, 'BF', 'Burkina Faso', 1, NULL, NULL);
INSERT INTO `countries` VALUES (281, 'BI', 'Burundi', 1, NULL, NULL);
INSERT INTO `countries` VALUES (282, 'KH', 'Cambodia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (283, 'CM', 'Cameroon', 1, NULL, NULL);
INSERT INTO `countries` VALUES (284, 'CA', 'Canada', 1, NULL, NULL);
INSERT INTO `countries` VALUES (285, 'CV', 'Cape Verde', 1, NULL, NULL);
INSERT INTO `countries` VALUES (286, 'KY', 'Cayman Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (287, 'CF', 'Central African Republic', 1, NULL, NULL);
INSERT INTO `countries` VALUES (288, 'TD', 'Chad', 1, NULL, NULL);
INSERT INTO `countries` VALUES (289, 'CL', 'Chile', 1, NULL, NULL);
INSERT INTO `countries` VALUES (290, 'CN', 'China', 1, NULL, NULL);
INSERT INTO `countries` VALUES (291, 'CX', 'Christmas Island', 1, NULL, NULL);
INSERT INTO `countries` VALUES (292, 'CC', 'Cocos (Keeling) Islands', 1, NULL, NULL);
INSERT INTO `countries` VALUES (293, 'CO', 'Colombia', 1, NULL, NULL);
INSERT INTO `countries` VALUES (294, 'KM', 'Comoros', 1, NULL, NULL);
INSERT INTO `countries` VALUES (295, 'CG', 'Congo', 1, NULL, NULL);
INSERT INTO `countries` VALUES (296, 'CK', 'Cook Islands', 1, NULL, NULL);

-- ----------------------------
-- Table structure for coupon_usages
-- ----------------------------
DROP TABLE IF EXISTS `coupon_usages`;
CREATE TABLE `coupon_usages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupon_usages
-- ----------------------------

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8, 2) NOT NULL,
  `discount_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int NOT NULL,
  `end_date` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupons
-- ----------------------------

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10, 5) NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of currencies
-- ----------------------------
INSERT INTO `currencies` VALUES (1, 'تومان', 'تومان', 1.00000, 1, 'IRR', '2020-07-06 05:48:24', '2020-07-06 05:48:52');

-- ----------------------------
-- Table structure for customer_packages
-- ----------------------------
DROP TABLE IF EXISTS `customer_packages`;
CREATE TABLE `customer_packages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `amount` double(28, 2) NULL DEFAULT NULL,
  `product_upload` int NULL DEFAULT NULL,
  `logo` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer_packages
-- ----------------------------

-- ----------------------------
-- Table structure for customer_products
-- ----------------------------
DROP TABLE IF EXISTS `customer_products`;
CREATE TABLE `customer_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `published` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `added_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `subcategory_id` int NULL DEFAULT NULL,
  `subsubcategory_id` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `photos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thumbnail_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `conditon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `video_provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `video_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `unit_price` double(28, 2) NULL DEFAULT 0.00,
  `meta_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pdf` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer_products
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (4, 8, '2019-08-01 14:05:09', '2019-08-01 14:05:09');
INSERT INTO `customers` VALUES (10, 23, '2026-01-01 21:52:16', '2026-01-01 21:52:16');
INSERT INTO `customers` VALUES (17, 30, '2026-01-01 23:35:30', '2026-01-01 23:35:30');
INSERT INTO `customers` VALUES (18, 31, '2026-01-06 19:02:06', '2026-01-06 19:02:06');

-- ----------------------------
-- Table structure for flash_deal_products
-- ----------------------------
DROP TABLE IF EXISTS `flash_deal_products`;
CREATE TABLE `flash_deal_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `flash_deal_id` int NOT NULL,
  `product_id` int NOT NULL,
  `discount` double(8, 2) NULL DEFAULT 0.00,
  `discount_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of flash_deal_products
-- ----------------------------
INSERT INTO `flash_deal_products` VALUES (41, 8, 1, 0.00, 'amount', '2020-07-20 03:44:44', '2020-07-20 03:44:44');
INSERT INTO `flash_deal_products` VALUES (42, 8, 2, 0.00, 'amount', '2020-07-20 03:44:44', '2020-07-20 03:44:44');
INSERT INTO `flash_deal_products` VALUES (51, 7, 1, 90000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (52, 7, 6, 6000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (53, 7, 9, 12000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (54, 7, 13, 49000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (55, 7, 15, 300000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (56, 7, 17, 50000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (57, 7, 21, 10000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');
INSERT INTO `flash_deal_products` VALUES (58, 7, 23, 200000.00, 'amount', '2020-08-01 13:32:33', '2020-08-01 13:32:33');

-- ----------------------------
-- Table structure for flash_deals
-- ----------------------------
DROP TABLE IF EXISTS `flash_deals`;
CREATE TABLE `flash_deals`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `start_date` int NULL DEFAULT NULL,
  `end_date` int NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `featured` int NOT NULL DEFAULT 0,
  `background_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of flash_deals
-- ----------------------------
INSERT INTO `flash_deals` VALUES (7, 'پیشنهاد شگفت انگیز', 1595376000, 1597968000, 1, 1, '#FFFFFF', 'dark', 'uploads/offers/banner/t4uuiqxx8KUq1bRFZuyXLfQraUdEEpTu5PV97h5V.jpeg', 'پۜشنهاد-شگفت-انگۜز-djzvw', '2020-07-22 06:35:16', '2020-08-01 13:32:33');
INSERT INTO `flash_deals` VALUES (8, 'تست', 1595236114, 1595322529, 0, 0, '#fff', 'dark', 'uploads/offers/banner/fwrjKaUqlS7kJlQdxy3gUznU3RIxL51ZcfjqkCB0.jpeg', 'تست-jxqbv', '2020-07-20 03:44:44', '2020-07-20 03:44:44');

-- ----------------------------
-- Table structure for general_settings
-- ----------------------------
DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE `general_settings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `frontend_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_login_background` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_login_sidebar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `site_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `youtube` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `google_plus` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of general_settings
-- ----------------------------
INSERT INTO `general_settings` VALUES (1, '2', 'uploads/logo/pfdIuiMeXGkDAIpPEUrvUCbQrOHu484nbGfz77zB.png', 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/uHdGidSaRVzvPgDj6JFtntMqzJkwDk9659233jrb.png', 'پلتفرم اختصاصی طلا و جواهرات', 'تهران خیابان جمهوری', 'کلیه حقوق محفوظ و متعلق به سامانه دریک سرویس میباشد', '09104927131', 'edeban.almas@gmail.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2025-12-22 15:33:35', '2025-12-22 12:03:35');

-- ----------------------------
-- Table structure for home_categories
-- ----------------------------
DROP TABLE IF EXISTS `home_categories`;
CREATE TABLE `home_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `subsubcategories` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of home_categories
-- ----------------------------
INSERT INTO `home_categories` VALUES (3, 7, 'null', 1, '2020-08-01 16:29:17', '2020-08-01 16:29:17');

-- ----------------------------
-- Table structure for jewelry_certificates
-- ----------------------------
DROP TABLE IF EXISTS `jewelry_certificates`;
CREATE TABLE `jewelry_certificates`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_id` int UNSIGNED NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight` decimal(10, 2) NULL DEFAULT NULL,
  `stone_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `serial_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NULL DEFAULT NULL,
  `certificate_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_verified` tinyint(1) NULL DEFAULT 0,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `serial_number`(`serial_number` ASC) USING BTREE,
  INDEX `owner_id`(`owner_id` ASC) USING BTREE,
  CONSTRAINT `jewelry_certificates_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `jewelry_owners` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jewelry_certificates
-- ----------------------------
INSERT INTO `jewelry_certificates` VALUES (1, 4, 'انگشتر طلای مصری', 'طلا', '18', 100.00, NULL, '202020', '2026-02-02', 'jewelry-certificates/hX14111HOQ24K6MF3q0p4DGCRjHg8qnBD5v7SXCp.jpg', NULL, 0, NULL, '2026-02-02 19:45:33', '2026-02-04 23:12:28');
INSERT INTO `jewelry_certificates` VALUES (2, 5, 'دستبند پلاتین', 'پلاتین', '26', 40.00, 'سایر', '202210', '2026-02-02', 'jewelry-certificates/pCZppsVdq5XoLlqe18qNFtadREogR3uN7CQHvI5B.jpg', 'این یک دستبند عتیقه هست', 0, NULL, '2026-02-02 20:11:22', '2026-02-04 23:36:38');
INSERT INTO `jewelry_certificates` VALUES (3, 3, 'گردنبند پلاتین نقره ای زنانه', 'پلاتین', '26', 10.00, 'الماس', '042101010', '2026-02-04', 'jewelry-certificates/hTiFsHoN8yhoSB7vB7CRYHvMPDobLeRcuz8gZ1TK.jpg', 'این گردنبند عتیقه هست', 0, NULL, '2026-02-04 23:17:10', '2026-02-04 23:17:10');
INSERT INTO `jewelry_certificates` VALUES (4, 1, 'انگشتر طلا', 'طلا', '18', 7.00, 'عقیق', '2679427981', '2026-09-10', 'jewelry-certificates/kSpgT0S1dyt8KLQwK4jjuibthyQObrGiUSdJEEaG.jpg', 'کلاسیک 21*25 میلیمتر - نوع گوهر عقیق قیمت 140 میلیون تومان -', 0, NULL, '2026-09-10 09:19:24', '2026-09-10 09:19:24');

-- ----------------------------
-- Table structure for jewelry_owners
-- ----------------------------
DROP TABLE IF EXISTS `jewelry_owners`;
CREATE TABLE `jewelry_owners`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jewelry_owners_user_id_national_id_unique`(`user_id` ASC, `national_id` ASC) USING BTREE,
  INDEX `jewelry_owners_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jewelry_owners
-- ----------------------------
INSERT INTO `jewelry_owners` VALUES (1, 4, 'مریم رونقی', '2679427981', '09306225854', 'تهران میدان فردوسی دروازه دولت کوچه میرجانی پلاک 17 واحد 2', 'maryam@gmail.com', '2026-09-10 09:11:42', '2026-09-10 09:11:42');
INSERT INTO `jewelry_owners` VALUES (2, 4, 'مریم بنی عباسی', '0066406811', '09359390912', 'تهران صادقیه خسرو شمالی پلاک 46 طبقه 9 واحد 6', 'maryambaniabbasi@gmail.com', '2026-09-10 09:15:05', '2026-09-10 09:15:05');

-- ----------------------------
-- Table structure for jewelry_transfers
-- ----------------------------
DROP TABLE IF EXISTS `jewelry_transfers`;
CREATE TABLE `jewelry_transfers`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `certificate_id` int UNSIGNED NOT NULL,
  `from_owner_id` int UNSIGNED NOT NULL,
  `to_owner_id` int UNSIGNED NOT NULL,
  `transfer_date` date NULL DEFAULT NULL,
  `transfer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jewelry_transfers
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (1, 'فارسی', 'ir', 1, '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `languages` VALUES (2, 'English', 'en', 0, '2026-08-22 21:38:12', '2026-08-22 21:38:12');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of links
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2026_09_07_100001_create_drikana_core_ecommerce_tables', 1);
INSERT INTO `migrations` VALUES (2, '2026_09_07_100002_align_seo_settings_columns', 2);
INSERT INTO `migrations` VALUES (3, '2014_10_12_000000_create_users_table', 3);
INSERT INTO `migrations` VALUES (4, '2026_02_16_151319_create_missing_reports_table', 3);
INSERT INTO `migrations` VALUES (5, '2026_02_16_165127_create_repair_status_histories_table', 3);
INSERT INTO `migrations` VALUES (6, '2026_02_16_165329_create_repair_orders_table', 3);
INSERT INTO `migrations` VALUES (7, '2026_02_16_171033_add_role_to_users_table', 3);
INSERT INTO `migrations` VALUES (8, '2026_02_16_183253_fix_repair_status_histories_foreign_keys', 3);
INSERT INTO `migrations` VALUES (9, '2026_02_16_202821_create_repair_technicians_table', 3);
INSERT INTO `migrations` VALUES (10, '2026_09_07_100000_add_ecommerce_fields_to_users_table', 3);
INSERT INTO `migrations` VALUES (11, '2014_10_12_100000_create_password_resets_table', 4);
INSERT INTO `migrations` VALUES (12, '2016_06_01_000001_create_oauth_auth_codes_table', 4);
INSERT INTO `migrations` VALUES (13, '2016_06_01_000002_create_oauth_access_tokens_table', 4);
INSERT INTO `migrations` VALUES (14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4);
INSERT INTO `migrations` VALUES (15, '2016_06_01_000004_create_oauth_clients_table', 4);
INSERT INTO `migrations` VALUES (16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4);
INSERT INTO `migrations` VALUES (17, '2026_09_07_100003_create_jewelry_owners_table', 5);

-- ----------------------------
-- Table structure for missing_reports
-- ----------------------------
DROP TABLE IF EXISTS `missing_reports`;
CREATE TABLE `missing_reports`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `jewelry_id` bigint UNSIGNED NOT NULL,
  `type` enum('theft','lost') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'سرقت یا مفقودی',
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('pending','found') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of missing_reports
-- ----------------------------
INSERT INTO `missing_reports` VALUES (1, 4, 4, 'theft', 'ورامین میدان رازی خ دانشگاه', 'یک ادم سیاه پوش به من حمله کرد و انگشتر من را ربود', 'found', '2026-09-10 09:23:00', '2026-09-10 09:49:12');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED NOT NULL,
  `seller_id` int UNSIGNED NULL DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `variation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `price` double(20, 2) NOT NULL DEFAULT 0.00,
  `tax` double(20, 2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20, 2) NOT NULL DEFAULT 0.00,
  `quantity` int NOT NULL DEFAULT 1,
  `delivery_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_details
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `seller_id` int UNSIGNED NULL DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_status` tinyint NOT NULL DEFAULT 0,
  `payment_status_string` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipping_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home_delivery',
  `grand_total` double(20, 2) NOT NULL DEFAULT 0.00,
  `coupon_discount` double(20, 2) NOT NULL DEFAULT 0.00,
  `shipping_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pickup_point_id` int NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `viewed` int NOT NULL DEFAULT 0,
  `delivery_viewed` int NOT NULL DEFAULT 0,
  `payment_status_viewed` int NOT NULL DEFAULT 0,
  `commission_calculated` tinyint NOT NULL DEFAULT 0,
  `trx_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int NULL DEFAULT NULL,
  `amount` double(20, 2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due',
  `payment_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `txn_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for policies
-- ----------------------------
DROP TABLE IF EXISTS `policies`;
CREATE TABLE `policies`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of policies
-- ----------------------------

-- ----------------------------
-- Table structure for product_stocks
-- ----------------------------
DROP TABLE IF EXISTS `product_stocks`;
CREATE TABLE `product_stocks`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double(20, 2) NOT NULL DEFAULT 0.00,
  `qty` int NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_stocks
-- ----------------------------
INSERT INTO `product_stocks` VALUES (1, 6, 'White', NULL, 18500000.00, 15, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (2, 7, 'Black', NULL, 12500000.00, 10, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (3, 7, 'Blue', NULL, 12500000.00, 10, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (4, 8, 'Black', NULL, 14500000.00, 12, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (5, 8, 'White', NULL, 14500000.00, 12, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (6, 9, 'Black', NULL, 6500000.00, 15, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (7, 9, 'Silver', NULL, 6500000.00, 15, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (8, 10, 'Black', NULL, 5500000.00, 20, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (9, 10, 'Gold', NULL, 5500000.00, 20, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (10, 11, 'White', NULL, 350000.00, 100, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (11, 11, 'Black', NULL, 350000.00, 100, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (12, 12, 'Black', NULL, 85000000.00, 5, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (13, 12, 'Red', NULL, 85000000.00, 5, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (14, 12, 'White', NULL, 85000000.00, 5, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (15, 13, 'Red', NULL, 850000.00, 50, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (16, 13, 'Blue', NULL, 850000.00, 50, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (17, 13, 'Black', NULL, 850000.00, 50, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (18, 15, 'Black', NULL, 5500000.00, 30, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (19, 15, 'Silver', NULL, 5500000.00, 30, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `product_stocks` VALUES (100, 16, 'LightPink', NULL, 850000000.00, 2, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (101, 16, 'White', NULL, 850000000.00, 2, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (102, 17, 'Silver', NULL, 120000000.00, 5, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (103, 17, 'White', NULL, 120000000.00, 5, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (104, 18, 'Silver', NULL, 38000000.00, 6, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (105, 18, 'White', NULL, 38000000.00, 6, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (106, 19, 'White', NULL, 42000000.00, 5, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (107, 20, 'Black', NULL, 28000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (108, 20, 'Silver', NULL, 28000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (109, 20, 'LightPink', NULL, 28000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (110, 21, 'Silver', NULL, 85000000.00, 5, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (111, 21, 'Black', NULL, 85000000.00, 5, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (112, 22, 'White', NULL, 45000000.00, 8, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (113, 22, 'Silver', NULL, 45000000.00, 8, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (114, 23, 'Black', NULL, 22000000.00, 12, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (115, 23, 'White', NULL, 22000000.00, 12, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (116, 24, 'Silver', NULL, 18000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (117, 24, 'Black', NULL, 18000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (118, 25, 'Black', NULL, 55000000.00, 6, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (119, 28, 'Red', NULL, 950000.00, 50, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (120, 28, 'Blue', NULL, 950000.00, 50, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (121, 28, 'Black', NULL, 950000.00, 50, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (122, 29, 'White', NULL, 3500000.00, 30, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (123, 30, 'White', NULL, 2800000.00, 40, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (124, 33, 'White', NULL, 850000.00, 80, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (125, 33, 'Black', NULL, 850000.00, 80, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (126, 34, 'Black', NULL, 2200000.00, 45, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (127, 34, 'White', NULL, 2200000.00, 45, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (128, 34, 'Blue', NULL, 2200000.00, 45, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (129, 36, 'Black', NULL, 3500000.00, 25, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (130, 36, 'White', NULL, 3500000.00, 25, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (131, 37, 'Black', NULL, 1800000.00, 30, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (132, 37, 'White', NULL, 1800000.00, 30, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (133, 38, 'Black', NULL, 8500000.00, 15, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (134, 39, 'Black', NULL, 4800000.00, 20, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (135, 39, 'Silver', NULL, 4800000.00, 20, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (136, 42, 'Red', NULL, 450000.00, 100, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (137, 42, 'LightPink', NULL, 450000.00, 100, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (138, 42, 'SaddleBrown', NULL, 450000.00, 100, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (139, 45, 'Black', NULL, 45000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (140, 45, 'Silver', NULL, 45000000.00, 10, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (141, 46, 'Black', NULL, 32000000.00, 12, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `product_stocks` VALUES (142, 46, 'Silver', NULL, 32000000.00, 12, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `subsubcategory_id` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `photos` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thumbnail_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `featured_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `flash_deal_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `video_provider` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `video_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tags` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `unit_price` double(12, 0) NOT NULL,
  `purchase_price` double(12, 0) NOT NULL,
  `variant_product` int NOT NULL DEFAULT 0,
  `attributes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `colors` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `variations` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `todays_deal` int NOT NULL DEFAULT 0,
  `published` int NOT NULL DEFAULT 1,
  `featured` int NOT NULL DEFAULT 0,
  `current_stock` int NOT NULL DEFAULT 0,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `discount` double(8, 2) NULL DEFAULT NULL,
  `discount_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tax` double(8, 2) NULL DEFAULT NULL,
  `tax_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'flat_rate',
  `shipping_cost` double(8, 2) NULL DEFAULT 0.00,
  `num_of_sale` int NOT NULL DEFAULT 0,
  `meta_title` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `meta_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `meta_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `slug` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8, 2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `digital` int NOT NULL DEFAULT 0,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'تلویزیون ۳۲ اینچ دی‌سام', 'admin', 12, 108, 1021, 213, 37, NULL, NULL, NULL, NULL, 'youtube', NULL, 'تلویزیون, دی‌سام, ۳۲ اینچ, لوازم خانگی', 'تلویزیون ۳۲ اینچ دی‌سام با کیفیت HD، طراحی مدرن و مصرف انرژی بهینه. مناسب برای اتاق خواب و نشیمن.', 15000000, 12000000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 20, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'تلویزیون ۳۲ اینچ دی‌سام', 'خرید تلویزیون ۳۲ اینچ دی‌سام با کیفیت HD', NULL, NULL, 'tv-dsam-32-inch', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (2, 'سشوار رمیو مدل 5080', 'admin', 12, 100, 1005, 195, 61, NULL, NULL, NULL, NULL, 'youtube', NULL, 'سشوار, رمیو, 5080, آرایشی', 'سشوار رمیو مدل 5080 با توان ۲۰۰۰ وات، طراحی ارگونومیک و سیستم یونیزه‌کننده برای محافظت از مو.', 2500000, 1800000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 30, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'سشوار رمیو مدل 5080', 'خرید سشوار رمیو مدل 5080 با توان ۲۰۰۰ وات', NULL, NULL, 'sashvar-remio-5080', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (3, 'ماشین اصلاح مو صورت شارژی مدل 9741', 'admin', 12, 100, 1005, 195, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'ماشین اصلاح, شارژی, 9741, آرایشی', 'ماشین اصلاح مو و صورت شارژی مدل 9741 با تیغه استیل ضدزنگ، باتری قابل شارژ و طراحی ارگونومیک.', 3500000, 2500000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 25, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'ماشین اصلاح مو صورت شارژی مدل 9741', 'خرید ماشین اصلاح شارژی مدل 9741', NULL, NULL, 'mashin-eslah-9741', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (4, 'خمیر دندان میسویک مدل X13', 'admin', 12, 100, 1003, 187, 62, NULL, NULL, NULL, NULL, 'youtube', NULL, 'خمیر دندان, میسویک, X13, بهداشتی', 'خمیر دندان میسویک مدل X13 با فرمول پیشرفته برای سفیدی دندان و محافظت از لثه. حجم ۱۰۰ میلی‌لیتر.', 450000, 320000, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 50, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 50000.00, 0, 'خمیر دندان میسویک مدل X13', 'خرید خمیر دندان میسویک مدل X13', NULL, NULL, 'khamir-dandan-misvik-x13', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (5, 'هدفون بلوتوثی انکر', 'admin', 12, 103, 1034, 241, 3, NULL, NULL, NULL, NULL, 'youtube', NULL, 'هدفون, انکر, بلوتوثی, دیجیتال', 'هدفون بلوتوثی انکر با کیفیت صدای عالی، باتری طولانی‌مدت و طراحی راحت برای استفاده روزمره.', 4500000, 3500000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 40, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'هدفون بلوتوثی انکر', 'خرید هدفون بلوتوثی انکر', NULL, NULL, 'headphone-anker-bluetooth', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (6, 'هدفون بلوتوثی اپل مدل AirPods Pro 3', 'admin', 12, 103, 1034, 244, 2, NULL, NULL, NULL, NULL, 'youtube', NULL, 'هدفون, اپل, AirPods Pro 3, دیجیتال', 'هدفون بلوتوثی اپل AirPods Pro 3 با حذف نویز فعال (ANC)، کیفیت صدای Spatial Audio و باتری طولانی‌مدت.', 18500000, 15000000, 1, '[]', '[]', '[\"#FFFFFF\"]', NULL, 1, 1, 1, 15, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 150000.00, 0, 'هدفون اپل AirPods Pro 3', 'خرید هدفون بلوتوثی اپل AirPods Pro 3', NULL, NULL, 'headphone-apple-airpods-pro-3', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (7, 'گوشی موبایل سامسونگ مدل A57', 'admin', 12, 109, 1150, 222, 1, NULL, NULL, NULL, NULL, 'youtube', NULL, 'گوشی, سامسونگ, A57, موبایل', 'گوشی موبایل سامسونگ مدل A57 با صفحه نمایش Super AMOLED، دوربین سه‌گانه و باتری پرظرفیت.', 12500000, 10500000, 1, '[]', '[]', '[\"#000000\",\"#0000FF\"]', NULL, 0, 1, 1, 10, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'گوشی سامسونگ A57', 'خرید گوشی موبایل سامسونگ مدل A57', NULL, NULL, 'mobile-samsung-a57', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (8, 'گوشی موبایل شیائومی مدل X8 Pro', 'admin', 12, 109, 1150, 224, 3, NULL, NULL, NULL, NULL, 'youtube', NULL, 'گوشی, شیائومی, X8 Pro, موبایل', 'گوشی موبایل شیائومی مدل X8 Pro با پردازنده قدرتمند، دوربین ۱۰۸ مگاپیکسل و شارژ سریع.', 14500000, 12000000, 1, '[]', '[]', '[\"#000000\",\"#FFFFFF\"]', NULL, 0, 1, 1, 12, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'گوشی شیائومی X8 Pro', 'خرید گوشی موبایل شیائومی مدل X8 Pro', NULL, NULL, 'mobile-xiaomi-x8-pro', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (9, 'گوشی موبایل ارد مدل F200', 'admin', 12, 109, 1150, 222, 9, NULL, NULL, NULL, NULL, 'youtube', NULL, 'گوشی, ارد, F200, موبایل', 'گوشی موبایل ارد مدل F200 با طراحی شیک، دوربین مناسب و باتری با ظرفیت بالا.', 6500000, 5200000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\"]', NULL, 0, 1, 0, 15, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'گوشی ارد F200', 'خرید گوشی موبایل ارد مدل F200', NULL, NULL, 'mobile-ord-f200', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (10, 'گوشی موبایل نمو مدل N36', 'admin', 12, 109, 1150, 222, 10, NULL, NULL, NULL, NULL, 'youtube', NULL, 'گوشی, نمو, N36, موبایل', 'گوشی موبایل نمو مدل N36 با صفحه نمایش بزرگ، دوربین دوگانه و سیستم عامل اندروید.', 5500000, 4200000, 1, '[]', '[]', '[\"#000000\",\"#FFD700\"]', NULL, 0, 1, 0, 20, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'گوشی نمو N36', 'خرید گوشی موبایل نمو مدل N36', NULL, NULL, 'mobile-nemo-n36', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (11, 'کاور گارد گوشی موبایل', 'admin', 12, 109, 1152, 236, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'کاور, گارد, گوشی, موبایل', 'کاور گارد گوشی موبایل با طراحی شفاف، محافظت از گوشی در برابر ضربه و خط و خش.', 350000, 220000, 1, '[]', '[]', '[\"#FFFFFF\",\"#000000\"]', NULL, 0, 1, 0, 100, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 50000.00, 0, 'کاور گارد گوشی موبایل', 'خرید کاور گارد گوشی موبایل', NULL, NULL, 'cover-guard-mobile', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (12, 'موتور سیکلت طرح هوندا کلیک', 'admin', 12, 112, 1090, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'موتور سیکلت, هوندا, کلیک, موتور', 'موتور سیکلت طرح هوندا کلیک با موتور ۱۲۵ سی‌سی، طراحی اسپرت و مصرف سوخت بهینه.', 85000000, 72000000, 1, '[]', '[]', '[\"#000000\",\"#FF0000\",\"#FFFFFF\"]', NULL, 1, 1, 1, 5, 'دستگاه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 999999.99, 0, 'موتور سیکلت طرح هوندا کلیک', 'خرید موتور سیکلت طرح هوندا کلیک', NULL, NULL, 'motorcycle-honda-click', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (13, 'بکسل بند تزئینی', 'admin', 12, 116, 1135, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'بکسل بند, تزئینی, خودرو, لوازم یدکی', 'بکسل بند تزئینی با طراحی زیبا و جنس مقاوم، مناسب برای خودروهای سواری.', 850000, 600000, 1, '[]', '[]', '[\"#FF0000\",\"#0000FF\",\"#000000\"]', NULL, 0, 1, 0, 50, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'بکسل بند تزئینی خودرو', 'خرید بکسل بند تزئینی خودرو', NULL, NULL, 'beksel-band-tazini', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (14, 'دفتر مشق مدل ایفل', 'admin', 12, 106, 1062, 282, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'دفتر, مشق, ایفل, لوازم تحریر', 'دفتر مشق مدل ایفل با جلد سخت، طراحی زیبا و کاغذ با کیفیت. مناسب برای دانش‌آموزان و دانشجویان.', 120000, 85000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 200, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 40000.00, 0, 'دفتر مشق مدل ایفل', 'خرید دفتر مشق مدل ایفل', NULL, NULL, 'daftar-mashgh-eiffel', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (15, 'اس اس دی اکسترنال', 'admin', 12, 103, 1032, 235, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'اس اس دی, اکسترنال, حافظه, دیجیتال', 'اس اس دی اکسترنال با ظرفیت بالا، سرعت انتقال داده سریع و طراحی قابل حمل.', 5500000, 4200000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\"]', NULL, 0, 1, 0, 30, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'اس اس دی اکسترنال', 'خرید اس اس دی اکسترنال با ظرفیت بالا', NULL, NULL, 'ssd-external', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:16:40', '2026-09-14 14:16:40');
INSERT INTO `products` VALUES (16, 'ساعت مچی رولکس اسکای‌دولر رزگلد | مدل 326935', 'admin', 12, 117, 1190, NULL, 46, NULL, NULL, NULL, NULL, 'youtube', NULL, 'رولکس, اسکای‌دولر, رزگلد, ساعت لوکس', 'ساعت مچی رولکس اسکای‌دولر با قاب طلای رزگلد ۱۸ عیار و صفحه سفید. مجهز به کالیبر ۹۰۰۱ با نمایش دو منطقه زمانی. ضدآب تا ۱۰۰ متر.', 850000000, 750000000, 1, '[]', '[]', '[\"#FFB6C1\",\"#FFFFFF\"]', NULL, 1, 1, 1, 2, 'دستگاه', 0.00, 'amount', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'ساعت رولکس اسکای‌دولر رزگلد', 'خرید ساعت رولکس اسکای‌دولر رزگلد مدل 326935', NULL, NULL, 'watch-rolex-skydweller-326935', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (17, 'ساعت مچی رولکس دی‌جاست ۳۶ استیل | مدل 116234', 'admin', 12, 117, 1190, NULL, 46, NULL, NULL, NULL, NULL, 'youtube', NULL, 'رولکس, دی‌جاست, استیل, ساعت لوکس', 'ساعت مچی رولکس دی‌جاست ۳۶ میلی‌متری با قاب استیل ضدزنگ ۹۰۴L و بند جوبیلی. صفحه سفید با نشان‌های طلایی و کریستال یاقوت.', 120000000, 95000000, 1, '[]', '[]', '[\"#C0C0C0\",\"#FFFFFF\"]', NULL, 0, 1, 1, 5, 'دستگاه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'ساعت رولکس دی‌جاست ۳۶ استیل', 'خرید ساعت رولکس دی‌جاست ۳۶ مدل 116234', NULL, NULL, 'watch-rolex-datejust-116234', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (18, 'ساعت مچی آویان کو اسنس زنانه الماس | مدل 1183276565', 'admin', 12, 117, 1191, NULL, 47, NULL, NULL, NULL, NULL, 'youtube', NULL, 'آویان کو, اسنس, ساعت زنانه, الماس', 'ساعت مچی زنانه آویان کو اسنس با ۱۶.۶۳ قیراط الماس برلیان دور صفحه. صفحه مرواریدی با نشان‌های طلایی. بند استیل.', 38000000, 29000000, 1, '[]', '[]', '[\"#C0C0C0\",\"#FFFFFF\"]', NULL, 1, 1, 0, 6, 'دستگاه', 12.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'ساعت آویان کو اسنس زنانه الماس', 'خرید ساعت آویان کو اسنس زنانه مدل 1183276565', NULL, NULL, 'watch-avianne-essence-1183276565', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (19, 'ساعت مچی آویان کو سرامیک سفید الماس | مدل W108D', 'admin', 12, 117, 1190, NULL, 47, NULL, NULL, NULL, NULL, 'youtube', NULL, 'آویان کو, سرامیک, سفید, الماس', 'ساعت مچی با قاب سرامیک سفید و الماس‌های دور صفحه. بند سرامیک سفید با قفل ایمن. موتور کوارتز سوئیسی.', 42000000, 32000000, 1, '[]', '[]', '[\"#FFFFFF\"]', NULL, 0, 1, 0, 5, 'دستگاه', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'ساعت آویان کو سرامیک سفید الماس', 'خرید ساعت آویان کو سرامیک سفید مدل W108D', NULL, NULL, 'watch-avianne-ceramic-w108d', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (20, 'ساعت هوشمند اپل واچ سری ۹', 'admin', 12, 117, 1192, NULL, 2, NULL, NULL, NULL, NULL, 'youtube', NULL, 'اپل واچ, ساعت هوشمند, سری ۹', 'ساعت هوشمند اپل واچ سری ۹ با صفحه نمایش Retina، پایش سلامت و باتری طولانی‌مدت.', 28000000, 23000000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\",\"#FFB6C1\"]', NULL, 1, 1, 1, 10, 'دستگاه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 300000.00, 0, 'ساعت هوشمند اپل واچ سری ۹', 'خرید ساعت هوشمند اپل واچ سری ۹', NULL, NULL, 'apple-watch-series-9', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (21, 'یخچال فریزر ساید بای ساید سامسونگ', 'admin', 12, 108, 1021, 213, 1, NULL, NULL, NULL, NULL, 'youtube', NULL, 'یخچال, ساید بای ساید, سامسونگ, لوازم خانگی', 'یخچال فریزر ساید بای ساید سامسونگ با فناوری No Frost، آبسردکن و فیلتر ضدباکتری.', 85000000, 72000000, 1, '[]', '[]', '[\"#C0C0C0\",\"#000000\"]', NULL, 1, 1, 1, 5, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 999999.99, 0, 'یخچال فریزر ساید بای ساید سامسونگ', 'خرید یخچال فریزر ساید بای ساید سامسونگ', NULL, NULL, 'refrigerator-samsung-side', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (22, 'ماشین لباسشویی ۸ کیلویی ال‌جی', 'admin', 12, 108, 1021, 214, 26, NULL, NULL, NULL, NULL, 'youtube', NULL, 'ماشین لباسشویی, ال‌جی, ۸ کیلو, لوازم خانگی', 'ماشین لباسشویی ۸ کیلویی ال‌جی با موتور اینورتر مستقیم، ۱۴ برنامه شستشو و فناوری Steam.', 45000000, 38000000, 1, '[]', '[]', '[\"#FFFFFF\",\"#C0C0C0\"]', NULL, 1, 1, 1, 8, 'دستگاه', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 999999.99, 0, 'ماشین لباسشویی ۸ کیلویی ال‌جی', 'خرید ماشین لباسشویی ۸ کیلویی ال‌جی', NULL, NULL, 'washing-machine-lg-8kg', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (23, 'جاروبرقی رباتیک هوشمند', 'admin', 12, 108, 1021, 215, 23, NULL, NULL, NULL, NULL, 'youtube', NULL, 'جاروبرقی, رباتیک, هوشمند, لوازم خانگی', 'جاروبرقی رباتیک هوشمند با قابلیت نظافت خودکار، اپلیکیشن موبایل و سنسورهای تشخیص مانع.', 22000000, 18000000, 1, '[]', '[]', '[\"#000000\",\"#FFFFFF\"]', NULL, 1, 1, 1, 12, 'دستگاه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'جاروبرقی رباتیک هوشمند', 'خرید جاروبرقی رباتیک هوشمند', NULL, NULL, 'robot-vacuum-cleaner', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (24, 'مایکروویو ۳۰ لیتری سامسونگ', 'admin', 12, 108, 1021, 216, 1, NULL, NULL, NULL, NULL, 'youtube', NULL, 'مایکروویو, سامسونگ, ۳۰ لیتر, لوازم خانگی', 'مایکروویو ۳۰ لیتری سامسونگ با قابلیت گریل، یخ‌زدایی سریع و صفحه دیجیتال.', 18000000, 14500000, 1, '[]', '[]', '[\"#C0C0C0\",\"#000000\"]', NULL, 0, 1, 0, 10, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'مایکروویو ۳۰ لیتری سامسونگ', 'خرید مایکروویو ۳۰ لیتری سامسونگ', NULL, NULL, 'microwave-samsung-30l', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (25, 'تلویزیون ۵۵ اینچ ۴K سامسونگ', 'admin', 12, 108, 1083, NULL, 1, NULL, NULL, NULL, NULL, 'youtube', NULL, 'تلویزیون, سامسونگ, ۵۵ اینچ, ۴K', 'تلویزیون ۵۵ اینچ سامسونگ با کیفیت ۴K، سیستم Smart TV و طراحی بدون حاشیه.', 55000000, 46000000, 1, '[]', '[]', '[\"#000000\"]', NULL, 1, 1, 1, 6, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 999999.99, 0, 'تلویزیون ۵۵ اینچ ۴K سامسونگ', 'خرید تلویزیون ۵۵ اینچ ۴K سامسونگ', NULL, NULL, 'tv-samsung-55-4k', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (26, 'ذغال خودرو بورگ وارنر', 'admin', 12, 116, 1131, NULL, 81, NULL, NULL, NULL, NULL, 'youtube', NULL, 'ذغال, خودرو, بورگ وارنر, یدکی', 'ذغال خودرو بورگ وارنر با کیفیت بالا و عمر طولانی. مناسب برای انواع خودروهای سواری.', 2500000, 1800000, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 40, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'ذغال خودرو بورگ وارنر', 'خرید ذغال خودرو بورگ وارنر', NULL, NULL, 'car-carbon-borgwarner', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (27, 'لنت ترمز جلو خودرو', 'admin', 12, 116, 1131, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'لنت ترمز, خودرو, یدکی, ترمز', 'لنت ترمز جلو خودرو با کیفیت عالی و ترمزگیری مطمئن. مناسب برای انواع خودروهای ایرانی.', 1800000, 1300000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 60, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'لنت ترمز جلو خودرو', 'خرید لنت ترمز جلو خودرو', NULL, NULL, 'brake-pad-front', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (28, 'بکسل بند خودرو', 'admin', 12, 116, 1136, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'بکسل بند, خودرو, یدکی, یدک‌کش', 'بکسل بند خودرو با جنس مقاوم و طراحی زیبا. مناسب برای یدک‌کش و تزئین خودرو.', 950000, 700000, 1, '[]', '[]', '[\"#FF0000\",\"#0000FF\",\"#000000\"]', NULL, 0, 1, 1, 50, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'بکسل بند خودرو', 'خرید بکسل بند خودرو', NULL, NULL, 'tow-strap-car', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (29, 'دوربین مداربسته بی‌سیم WiFi', 'admin', 12, 118, 1180, NULL, 96, NULL, NULL, NULL, NULL, 'youtube', NULL, 'دوربین مداربسته, بی‌سیم, WiFi, امنیتی', 'دوربین مداربسته بی‌سیم WiFi با کیفیت Full HD، دید در شب و قابلیت مشاهده از راه دور.', 3500000, 2700000, 1, '[]', '[]', '[\"#FFFFFF\"]', NULL, 1, 1, 1, 30, 'دستگاه', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 150000.00, 0, 'دوربین مداربسته بی‌سیم WiFi', 'خرید دوربین مداربسته بی‌سیم WiFi', NULL, NULL, 'cctv-wireless-wifi', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (30, 'دوربین مداربسته دام ۵ مگاپیکسل', 'admin', 12, 118, 1180, NULL, 96, NULL, NULL, NULL, NULL, 'youtube', NULL, 'دوربین مداربسته, دام, ۵ مگاپیکسل, امنیتی', 'دوربین مداربسته دام ۵ مگاپیکسل با لنز ۳.۶ میلی‌متر، دید در شب رنگی و بدنه ضدآب.', 2800000, 2100000, 1, '[]', '[]', '[\"#FFFFFF\"]', NULL, 0, 1, 1, 40, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 150000.00, 0, 'دوربین مداربسته دام ۵ مگاپیکسل', 'خرید دوربین مداربسته دام ۵ مگاپیکسل', NULL, NULL, 'cctv-dome-5mp', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (31, 'دستگاه ضبط DVR ۸ کانال', 'admin', 12, 118, 1181, NULL, 96, NULL, NULL, NULL, NULL, 'youtube', NULL, 'DVR, ضبط, ۸ کانال, دوربین مداربسته', 'دستگاه ضبط DVR ۸ کانال با پشتیبانی از هارد تا ۴ ترابایت، اپلیکیشن موبایل و خروجی HDMI.', 4500000, 3500000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 20, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 200000.00, 0, 'دستگاه ضبط DVR ۸ کانال', 'خرید دستگاه ضبط DVR ۸ کانال', NULL, NULL, 'dvr-8channel', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (32, 'کابل دوربین مداربسته ۱۰۰ متری', 'admin', 12, 118, 1182, NULL, 97, NULL, NULL, NULL, NULL, 'youtube', NULL, 'کابل, دوربین مداربسته, ۱۰۰ متر, لوازم جانبی', 'کابل دوربین مداربسته ۱۰۰ متری با کیفیت بالا و انتقال سیگنال پایدار. مناسب برای نصب دوربین‌های آنالوگ.', 1200000, 850000, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 35, 'حلقه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'کابل دوربین مداربسته ۱۰۰ متری', 'خرید کابل دوربین مداربسته ۱۰۰ متری', NULL, NULL, 'cctv-cable-100m', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (33, 'شارژر سریع ۶۵ وات', 'admin', 12, 109, 1153, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'شارژر, سریع, ۶۵ وات, موبایل', 'شارژر سریع ۶۵ وات با پورت Type-C و پشتیبانی از تکنولوژی‌های Quick Charge و PD.', 850000, 600000, 1, '[]', '[]', '[\"#FFFFFF\",\"#000000\"]', NULL, 1, 1, 1, 80, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 50000.00, 0, 'شارژر سریع ۶۵ وات', 'خرید شارژر سریع ۶۵ وات', NULL, NULL, 'charger-fast-65w', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (34, 'پاوربانک ۲۰۰۰۰ میلی‌آمپر', 'admin', 12, 109, 1154, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'پاوربانک, ۲۰۰۰۰, شارژر همراه, موبایل', 'پاوربانک ۲۰۰۰۰ میلی‌آمپری با دو پورت USB و پشتیبانی از شارژ سریع. نمایشگر دیجیتال درصد شارژ.', 2200000, 1700000, 1, '[]', '[]', '[\"#000000\",\"#FFFFFF\",\"#0000FF\"]', NULL, 1, 1, 1, 45, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'پاوربانک ۲۰۰۰۰ میلی‌آمپر', 'خرید پاوربانک ۲۰۰۰۰ میلی‌آمپر', NULL, NULL, 'powerbank-20000', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (35, 'هندزفری سیمی با میکروفون', 'admin', 12, 109, 1155, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'هندزفری, سیمی, میکروفون, موبایل', 'هندزفری سیمی با میکروفون و کنترل صدا. کیفیت صدای عالی و طراحی ارگونومیک.', 450000, 320000, 0, '[]', '[]', '[\"#FFFFFF\",\"#000000\"]', NULL, 0, 1, 0, 100, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 40000.00, 0, 'هندزفری سیمی با میکروفون', 'خرید هندزفری سیمی با میکروفون', NULL, NULL, 'earphone-wired-mic', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (36, 'کیبورد مکانیکال گیمینگ RGB', 'admin', 12, 110, 1163, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'کیبورد, مکانیکال, گیمینگ, RGB', 'کیبورد مکانیکال گیمینگ با نور RGB، سوییچ آبی و بدنه فلزی مقاوم. مناسب برای بازی و تایپ حرفه‌ای.', 3500000, 2700000, 1, '[]', '[]', '[\"#000000\",\"#FFFFFF\"]', NULL, 0, 1, 1, 25, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'کیبورد مکانیکال گیمینگ RGB', 'خرید کیبورد مکانیکال گیمینگ RGB', NULL, NULL, 'keyboard-mechanical-rgb', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (37, 'ماوس گیمینگ ۱۶۰۰۰ DPI', 'admin', 12, 110, 1163, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'ماوس, گیمینگ, DPI, کامپیوتر', 'ماوس گیمینگ با سنسور ۱۶۰۰۰ DPI، ۸ دکمه قابل برنامه‌ریزی و نور RGB.', 1800000, 1300000, 1, '[]', '[]', '[\"#000000\",\"#FFFFFF\"]', NULL, 0, 1, 1, 30, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'ماوس گیمینگ ۱۶۰۰۰ DPI', 'خرید ماوس گیمینگ ۱۶۰۰۰ DPI', NULL, NULL, 'mouse-gaming-16000dpi', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (38, 'مانیتور ۲۴ اینچ Full HD', 'admin', 12, 110, 1164, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'مانیتور, ۲۴ اینچ, Full HD, کامپیوتر', 'مانیتور ۲۴ اینچ با رزولوشن Full HD، پنل IPS و زمان پاسخ‌دهی ۵ میلی‌ثانیه. مناسب کار و بازی.', 8500000, 6800000, 1, '[]', '[]', '[\"#000000\"]', NULL, 0, 1, 1, 15, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 300000.00, 0, 'مانیتور ۲۴ اینچ Full HD', 'خرید مانیتور ۲۴ اینچ Full HD', NULL, NULL, 'monitor-24-fhd', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (39, 'هارد اکسترنال ۲ ترابایت', 'admin', 12, 110, 1165, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'هارد, اکسترنال, ۲ ترابایت, کامپیوتر', 'هارد اکسترنال ۲ ترابایت با رابط USB 3.0 و سرعت انتقال بالا. مناسب برای ذخیره‌سازی اطلاعات.', 4800000, 3800000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\"]', NULL, 0, 1, 1, 20, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 100000.00, 0, 'هارد اکسترنال ۲ ترابایت', 'خرید هارد اکسترنال ۲ ترابایت', NULL, NULL, 'hdd-external-2tb', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (40, 'SSD اینترنال ۵۱۲ گیگابایت', 'admin', 12, 110, 1165, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'SSD, اینترنال, ۵۱۲ گیگ, کامپیوتر', 'SSD اینترنال ۵۱۲ گیگابایت با سرعت خواندن ۵۵۰ مگابایت بر ثانیه. مناسب برای ارتقاء سرعت سیستم.', 3200000, 2500000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 30, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 80000.00, 0, 'SSD اینترنال ۵۱۲ گیگابایت', 'خرید SSD اینترنال ۵۱۲ گیگابایت', NULL, NULL, 'ssd-internal-512gb', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (41, 'کرم ضد آفتاب SPF50', 'admin', 12, 100, 1003, 183, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'ضد آفتاب, SPF50, کرم, آرایشی', 'کرم ضد آفتاب SPF50 با محافظت بالا در برابر اشعه UVA و UVB. مناسب برای انواع پوست.', 680000, 500000, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 60, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 50000.00, 0, 'کرم ضد آفتاب SPF50', 'خرید کرم ضد آفتاب SPF50', NULL, NULL, 'sunscreen-spf50', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (42, 'رژ لب مات', 'admin', 12, 100, 1002, 179, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'رژ لب, مات, آرایشی, لب', 'رژ لب مات با ماندگاری بالا و پوشش کامل. حاوی ویتامین E برای مراقبت از لب.', 450000, 320000, 1, '[]', '[]', '[\"#FF0000\",\"#FFB6C1\",\"#8B4513\"]', NULL, 0, 1, 1, 100, 'عدد', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 40000.00, 0, 'رژ لب مات', 'خرید رژ لب مات با ماندگاری بالا', NULL, NULL, 'lipstick-matte', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (43, 'شامپو تقویت‌کننده مو', 'admin', 12, 100, 1006, NULL, NULL, NULL, NULL, NULL, NULL, 'youtube', NULL, 'شامپو, تقویت‌کننده, مو, آرایشی', 'شامپو تقویت‌کننده مو با فرمول ویژه ضد ریزش و حاوی عصاره گیاهان طبیعی. مناسب انواع مو.', 520000, 380000, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 80, 'عدد', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 50000.00, 0, 'شامپو تقویت‌کننده مو', 'خرید شامپو تقویت‌کننده مو', NULL, NULL, 'shampoo-hair-strengthening', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (44, 'تیغ اصلاح صورت ژیلت', 'admin', 12, 100, 1007, NULL, 63, NULL, NULL, NULL, NULL, 'youtube', NULL, 'تیغ, اصلاح, ژیلت, آرایشی', 'تیغ اصلاح صورت ژیلت با ۵ تیغه و نوار مرطوب‌کننده. اصلاح نرم و بدون تحریک پوست.', 280000, 200000, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 150, 'عدد', 10.00, 'percent', 0.00, 'amount', 'flat_rate', 40000.00, 0, 'تیغ اصلاح صورت ژیلت', 'خرید تیغ اصلاح صورت ژیلت', NULL, NULL, 'razor-gillette', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (45, 'لپ تاپ ایسوس ۱۵ اینچ Core i7', 'admin', 12, 110, 1160, 231, 11, NULL, NULL, NULL, NULL, 'youtube', NULL, 'لپ تاپ, ایسوس, Core i7, کامپیوتر', 'لپ تاپ ایسوس ۱۵ اینچ با پردازنده Core i7، رم ۱۶ گیگ و SSD ۵۱۲ گیگ. مناسب کارهای حرفه‌ای.', 45000000, 38000000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\"]', NULL, 1, 1, 1, 10, 'دستگاه', 5.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'لپ تاپ ایسوس ۱۵ اینچ Core i7', 'خرید لپ تاپ ایسوس ۱۵ اینچ Core i7', NULL, NULL, 'laptop-asus-15-i7', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `products` VALUES (46, 'لپ تاپ لنوو آیدیاپد', 'admin', 12, 110, 1160, 232, 12, NULL, NULL, NULL, NULL, 'youtube', NULL, 'لپ تاپ, لنوو, آیدیاپد, کامپیوتر', 'لپ تاپ لنوو آیدیاپد با پردازنده Core i5، رم ۸ گیگ و هارد ۱ ترابایت. مناسب کارهای روزمره.', 32000000, 27000000, 1, '[]', '[]', '[\"#000000\",\"#C0C0C0\"]', NULL, 0, 1, 1, 12, 'دستگاه', 8.00, 'percent', 0.00, 'amount', 'flat_rate', 500000.00, 0, 'لپ تاپ لنوو آیدیاپد', 'خرید لپ تاپ لنوو آیدیاپد', NULL, NULL, 'laptop-lenovo-ideapad', 0.00, NULL, 0, NULL, NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');

-- ----------------------------
-- Table structure for repair_orders
-- ----------------------------
DROP TABLE IF EXISTS `repair_orders`;
CREATE TABLE `repair_orders`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `jewelry_certificate_id` int UNSIGNED NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `repair_type` enum('cleaning','restoration','resizing','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `location` enum('workshop','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'workshop',
  `scheduled_date` date NULL DEFAULT NULL,
  `estimated_delivery_date` date NULL DEFAULT NULL,
  `estimated_cost` decimal(15, 2) NULL DEFAULT NULL,
  `final_cost` decimal(15, 2) NULL DEFAULT NULL,
  `assigned_to` int UNSIGNED NULL DEFAULT NULL,
  `priority` enum('normal','urgent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal',
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('pending','in_progress','completed','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'pending',
  `completion_date` date NULL DEFAULT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `repair_orders_order_number_unique`(`order_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repair_orders
-- ----------------------------

-- ----------------------------
-- Table structure for repair_status_histories
-- ----------------------------
DROP TABLE IF EXISTS `repair_status_histories`;
CREATE TABLE `repair_status_histories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `repair_order_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','in_progress','completed','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `updated_by` bigint UNSIGNED NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repair_status_histories
-- ----------------------------

-- ----------------------------
-- Table structure for repair_technicians
-- ----------------------------
DROP TABLE IF EXISTS `repair_technicians`;
CREATE TABLE `repair_technicians`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `experience_years` int NULL DEFAULT NULL,
  `certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `repair_technicians_user_id_unique`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repair_technicians
-- ----------------------------
INSERT INTO `repair_technicians` VALUES (1, 2, 'طلاسازی', 5, NULL, 1, '2026-08-22 21:38:12', '2026-08-22 21:38:12');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `rating` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 1,
  `viewed` tinyint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for searches
-- ----------------------------
DROP TABLE IF EXISTS `searches`;
CREATE TABLE `searches`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of searches
-- ----------------------------

-- ----------------------------
-- Table structure for sellers
-- ----------------------------
DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `verification_status` tinyint(1) NOT NULL DEFAULT 0,
  `verification_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cash_on_delivery_status` tinyint(1) NOT NULL DEFAULT 0,
  `sslcommerz_status` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_status` tinyint(1) NOT NULL DEFAULT 0,
  `paypal_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paypal_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ssl_store_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ssl_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instamojo_status` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instamojo_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `razorpay_status` tinyint(1) NOT NULL DEFAULT 0,
  `razorpay_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `razorpay_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT 0,
  `admin_to_pay` double(20, 2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sellers
-- ----------------------------

-- ----------------------------
-- Table structure for seo_settings
-- ----------------------------
DROP TABLE IF EXISTS `seo_settings`;
CREATE TABLE `seo_settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `og_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `og_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `og_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `twitter_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `twitter_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `revisit` int UNSIGNED NOT NULL DEFAULT 7,
  `sitemap_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of seo_settings
-- ----------------------------
INSERT INTO `seo_settings` VALUES (1, 'پلتفرم اختصاصی طلا و جواهرات', 'پلتفرم اختصاصی طلا و جواهرات', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-07 09:06:26', '2026-09-07 09:06:26', '', 'پلتفرم اختصاصی طلا و جواهرات', 7, NULL, 'پلتفرم اختصاصی طلا و جواهرات');

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sliders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `google` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `delivery_pickup_latitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `delivery_pickup_longitude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shops_slug_unique`(`slug` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shops
-- ----------------------------

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `published` int NOT NULL DEFAULT 1,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES (1, 'uploads/sliders/slider-1.jpg', 1, '#', '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `sliders` VALUES (2, 'uploads/sliders/slider-2.jpg', 1, '#', '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `sliders` VALUES (3, 'uploads/sliders/slider-3.jpg', 1, '#', '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `sliders` VALUES (4, 'uploads/sliders/slider-4.jpg', 1, '#', '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `sliders` VALUES (5, 'uploads/sliders/slider-5.jpg', 1, '#', '2026-08-22 21:38:12', '2026-08-22 21:38:12');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for sub_categories
-- ----------------------------
DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE `sub_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_category_id`(`category_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1194 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_categories
-- ----------------------------
INSERT INTO `sub_categories` VALUES (1000, 'آرایشی صورت', 100, 'face-makeup', 'آرایشی صورت', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1001, 'آرایشی چشم', 100, 'eye-makeup', 'آرایشی چشم', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1002, 'آرایشی لب', 100, 'lip-makeup', 'آرایشی لب', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1003, 'بهداشت پوست', 100, 'skin-care', 'بهداشت پوست', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1004, 'عطر و ادکلن', 100, 'perfume-cologne', 'عطر و ادکلن', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1005, 'لوازم جانبی آرایش', 100, 'makeup-tools', 'لوازم جانبی آرایش', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1006, 'مراقبت از مو', 100, 'hair-care', 'مراقبت از مو', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1007, 'اصلاح و پیرایش', 100, 'shaving-grooming', 'اصلاح و پیرایش', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1010, 'ابزار برقی', 101, 'power-tools', 'ابزار برقی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1011, 'ابزار دستی', 101, 'hand-tools', 'ابزار دستی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1012, 'یراق آلات ساختمانی', 101, 'building-hardware', 'یراق آلات ساختمانی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1013, 'ابزار باغبانی', 101, 'gardening-tools', 'ابزار باغبانی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1014, 'تجهیزات ایمنی', 101, 'safety-equipment', 'تجهیزات ایمنی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1020, 'لوازم آشپزخانه', 102, 'kitchen-appliances', 'لوازم آشپزخانه', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1021, 'لوازم برقی خانگی', 102, 'home-electrical', 'لوازم برقی خانگی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1022, 'دکوراسیون منزل', 102, 'home-decor', 'دکوراسیون منزل', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1023, 'مبلمان و سرویس خواب', 102, 'furniture-bedroom', 'مبلمان و سرویس خواب', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1024, 'نورپردازی', 102, 'lighting', 'نورپردازی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1030, 'گوشی موبایل', 103, 'mobile-phones', 'گوشی موبایل', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1031, 'تبلت', 103, 'tablets', 'تبلت', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1032, 'لپ تاپ و کامپیوتر', 103, 'laptop-computer', 'لپ تاپ و کامپیوتر', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1033, 'لوازم جانبی موبایل', 103, 'mobile-accessories', 'لوازم جانبی موبایل', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1034, 'هدفون و هدست', 103, 'headphones-headsets', 'هدفون و هدست', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1035, 'ساعت هوشمند', 103, 'smart-watches', 'ساعت هوشمند', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1040, 'پوشاک مردانه', 104, 'mens-clothing', 'پوشاک مردانه', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1041, 'پوشاک زنانه', 104, 'womens-clothing', 'پوشاک زنانه', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1042, 'کفش و کیف', 104, 'shoes-bags', 'کفش و کیف', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1043, 'اکسسوری', 104, 'accessories', 'اکسسوری', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1050, 'تجهیزات ورزشی', 105, 'sports-equipment', 'تجهیزات ورزشی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1051, 'لباس ورزشی', 105, 'sportswear', 'لباس ورزشی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1052, 'لوازم سفر', 105, 'travel-gear', 'لوازم سفر', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1053, 'کوله پشتی و چمدان', 105, 'backpacks-luggage', 'کوله پشتی و چمدان', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1060, 'کتاب فارسی', 106, 'persian-books', 'کتاب فارسی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1061, 'کتاب خارجی', 106, 'foreign-books', 'کتاب خارجی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1062, 'لوازم تحریر', 106, 'stationery', 'لوازم تحریر', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1063, 'نوشت افزار', 106, 'writing-tools', 'نوشت افزار', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1070, 'اسباب بازی فکری', 107, 'educational-toys', 'اسباب بازی فکری', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1071, 'عروسک و حیوانات', 107, 'dolls-animals', 'عروسک و حیوانات', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1072, 'بازی های رومیزی', 107, 'board-games', 'بازی های رومیزی', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1080, 'لوازم بارداری', 108, 'pregnancy-supplies', 'لوازم بارداری', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1081, 'لوازم نوزاد', 108, 'baby-supplies', 'لوازم نوزاد', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1082, 'پوشاک کودک', 108, 'kids-clothing', 'پوشاک کودک', NULL, '2026-05-15 13:33:17', '2026-05-15 13:33:17');
INSERT INTO `sub_categories` VALUES (1083, 'تلویزیون و صوتی تصویری', 108, 'tv-audio-video', 'تلویزیون و صوتی تصویری', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1084, 'لوازم برقی شخصی', 108, 'personal-care-appliances', 'لوازم برقی شخصی', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1090, 'موتور سیکلت', 112, 'motorcycles', 'موتور سیکلت', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1091, 'لوازم یدکی موتور', 112, 'motorcycle-parts', 'لوازم یدکی موتور', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1092, 'کلاه کاسکت', 112, 'motorcycle-helmet', 'کلاه کاسکت', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1093, 'لوازم جانبی موتور', 112, 'motorcycle-accessories', 'لوازم جانبی موتور', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1100, 'طلا و سکه', 113, 'gold-coin', 'طلا و سکه', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1101, 'جواهرات', 113, 'jewelry', 'جواهرات', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1102, 'سنگ‌های قیمتی', 113, 'gemstones', 'سنگ‌های قیمتی', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1103, 'نقره', 113, 'silver', 'نقره', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1104, 'ساعت لوکس', 113, 'luxury-watch', 'ساعت لوکس', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1105, 'اکسسوری طلا و جواهر', 113, 'gold-jewelry-accessories', 'اکسسوری طلا و جواهر', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1110, 'غذای حیوانات', 114, 'pet-food', 'غذای حیوانات', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1111, 'لوازم بهداشتی پت', 114, 'pet-grooming', 'لوازم بهداشتی پت', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1112, 'اسباب بازی پت', 114, 'pet-toys', 'اسباب بازی پت', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1113, 'لوازم نگهداری پت', 114, 'pet-cages', 'لوازم نگهداری پت', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1120, 'صنایع دستی', 115, 'handicrafts', 'صنایع دستی', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1121, 'فرش و گلیم', 115, 'carpets', 'فرش و گلیم', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1122, 'خشکبار و ادویه', 115, 'nuts-spices', 'خشکبار و ادویه', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1123, 'عسل و محصولات طبیعی', 115, 'honey-natural', 'عسل و محصولات طبیعی', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1130, 'قطعات موتور', 116, 'engine-parts', 'قطعات موتور', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1131, 'قطعات بدنه', 116, 'body-parts', 'قطعات بدنه', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1132, 'لوازم برقی خودرو', 116, 'car-electrical', 'لوازم برقی خودرو', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1133, 'روغن و فیلتر', 116, 'oil-filter', 'روغن و فیلتر', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1134, 'تایر و رینگ', 116, 'tire-rim', 'تایر و رینگ', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1135, 'لوازم جانبی خودرو', 116, 'car-accessories', 'لوازم جانبی خودرو', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1136, 'بکسل و یدک‌کش', 116, 'tow-strap', 'بکسل و یدک‌کش', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1137, 'لوازم تزئینی خودرو', 116, 'car-decoration', 'لوازم تزئینی خودرو', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1140, 'تجهیزات بیمارستانی', 111, 'hospital-equipment', 'تجهیزات بیمارستانی', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1141, 'لوازم بهداشتی پزشکی', 111, 'medical-hygiene', 'لوازم بهداشتی پزشکی', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1142, 'دستگاه‌های اندازه‌گیری', 111, 'measuring-devices', 'دستگاه‌های اندازه‌گیری', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1150, 'گوشی موبایل', 109, 'mobile-phones-main', 'گوشی موبایل', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1151, 'لوازم جانبی موبایل', 109, 'mobile-accessories-main', 'لوازم جانبی موبایل', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1152, 'قاب و کاور', 109, 'phone-case-main', 'قاب و کاور', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1153, 'شارژر و کابل', 109, 'charger-cable-main', 'شارژر و کابل', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1154, 'پاوربانک', 109, 'powerbank-main', 'پاوربانک', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1155, 'هندزفری و هدفون', 109, 'earphone-headphone', 'هندزفری و هدفون', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1160, 'لپ تاپ', 110, 'laptops', 'لپ تاپ', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1161, 'کیس و کامپیوتر', 110, 'desktop-pc', 'کیس و کامپیوتر', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1162, 'قطعات کامپیوتر', 110, 'pc-parts', 'قطعات کامپیوتر', NULL, '2026-09-14 14:07:09', '2026-09-14 14:07:09');
INSERT INTO `sub_categories` VALUES (1163, 'کیبورد و ماوس', 110, 'keyboard-mouse', 'کیبورد و ماوس', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1164, 'مانیتور', 110, 'monitor', 'مانیتور', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1165, 'هارد و SSD', 110, 'hdd-ssd', 'هارد و SSD', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1180, 'دوربین مداربسته', 118, 'cctv-camera', 'دوربین مداربسته', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1181, 'دستگاه ضبط DVR/NVR', 118, 'dvr-nvr', 'دستگاه ضبط DVR/NVR', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1182, 'لوازم جانبی دوربین', 118, 'cctv-accessories', 'لوازم جانبی دوربین', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1190, 'ساعت مردانه', 117, 'mens-watch', 'ساعت مردانه', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1191, 'ساعت زنانه', 117, 'womens-watch', 'ساعت زنانه', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1192, 'ساعت هوشمند', 117, 'smart-watch', 'ساعت هوشمند', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');
INSERT INTO `sub_categories` VALUES (1193, 'لوازم جانبی ساعت', 117, 'watch-accessories', 'لوازم جانبی ساعت', NULL, '2026-09-14 14:22:26', '2026-09-14 14:22:26');

-- ----------------------------
-- Table structure for sub_sub_categories
-- ----------------------------
DROP TABLE IF EXISTS `sub_sub_categories`;
CREATE TABLE `sub_sub_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_category_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_sub_category_id`(`sub_category_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 284 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_sub_categories
-- ----------------------------
INSERT INTO `sub_sub_categories` VALUES (170, 1000, 'کرم پودر', 'foundation', 'کرم پودر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (171, 1000, 'کانسیلر', 'concealer', 'کانسیلر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (172, 1000, 'پنکیک', 'pancake', 'پنکیک', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (173, 1000, 'پودر فیکس', 'setting-powder', 'پودر فیکس', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (174, 1001, 'سایه چشم', 'eyeshadow', 'سایه چشم', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (175, 1001, 'خط چشم', 'eyeliner', 'خط چشم', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (176, 1001, 'مژه مصنوعی', 'false-lashes', 'مژه مصنوعی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (177, 1001, 'ریمل', 'mascara', 'ریمل', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (178, 1001, 'مداد چشم', 'eyebrow-pencil', 'مداد چشم', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (179, 1002, 'رژ لب', 'lipstick', 'رژ لب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (180, 1002, 'گلاس لب', 'lip-gloss', 'گلاس لب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (181, 1002, 'خط لب', 'lip-liner', 'خط لب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (182, 1002, 'بالم لب', 'lip-balm', 'بالم لب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (183, 1003, 'ضد آفتاب', 'sunscreen', 'ضد آفتاب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (184, 1003, 'مرطوب کننده', 'moisturizer', 'مرطوب کننده', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (185, 1003, 'تونر', 'toner', 'تونر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (186, 1003, 'ماسک صورت', 'face-mask', 'ماسک صورت', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (187, 1003, 'پاک کننده صورت', 'facial-cleanser', 'پاک کننده صورت', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (188, 1004, 'عطر مردانه', 'mens-perfume', 'عطر مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (189, 1004, 'عطر زنانه', 'womens-perfume', 'عطر زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (190, 1004, 'ادکلن', 'cologne', 'ادکلن', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (191, 1004, 'اسپری بدن', 'body-spray', 'اسپری بدن', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (192, 1005, 'براش آرایشی', 'makeup-brush', 'براش آرایشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (193, 1005, 'اسفنج آرایشی', 'makeup-sponge', 'اسفنج آرایشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (194, 1005, 'کیف آرایش', 'makeup-bag', 'کیف آرایش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (195, 1005, 'دستگاه بخور صورت', 'facial-steamer', 'دستگاه بخور صورت', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (196, 1010, 'دریل و پیچ گوشتی', 'drill-screwdriver', 'دریل و پیچ گوشتی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (197, 1010, 'اره برقی', 'electric-saw', 'اره برقی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (198, 1010, 'سنگ سنباده', 'sander', 'سنگ سنباده', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (199, 1010, 'فرز نجاری', 'router', 'فرز نجاری', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (200, 1011, 'آچار و انبردست', 'wrench-pliers', 'آچار و انبردست', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (201, 1011, 'پیچ گوشتی', 'screwdriver', 'پیچ گوشتی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (202, 1011, 'چکش', 'hammer', 'چکش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (203, 1011, 'آچار آلن', 'allen-key', 'آچار آلن', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (204, 1012, 'دستگیره درب', 'door-handle', 'دستگیره درب', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (205, 1012, 'قفل و کلید', 'lock-key', 'قفل و کلید', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (206, 1012, 'لولا', 'hinge', 'لولا', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (207, 1012, 'پیچ و رولپلاک', 'screw-anchor', 'پیچ و رولپلاک', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (208, 1020, 'قابلمه و تابه', 'pots-pans', 'قابلمه و تابه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (209, 1020, 'ظروف سرویس', 'dinnerware', 'ظروف سرویس', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (210, 1020, 'چاقو و وسایل برش', 'knives-cutlery', 'چاقو و وسایل برش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (211, 1020, 'لوازم شیرینی پزی', 'baking-supplies', 'لوازم شیرینی پزی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (212, 1020, 'سرویس قاشق و چنگال', 'cutlery-set', 'سرویس قاشق و چنگال', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (213, 1021, 'یخچال و فریزر', 'refrigerator', 'یخچال و فریزر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (214, 1021, 'ماشین لباسشویی', 'washing-machine', 'ماشین لباسشویی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (215, 1021, 'جاروبرقی', 'vacuum-cleaner', 'جاروبرقی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (216, 1021, 'مایکروویو', 'microwave', 'مایکروویو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (217, 1021, 'مخلوط کن و غذاساز', 'blender-food-processor', 'مخلوط کن و غذاساز', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (218, 1022, 'تابلو و قاب عکس', 'painting-photoframe', 'تابلو و قاب عکس', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (219, 1022, 'گلدان و گل مصنوعی', 'vase-artificial-flower', 'گلدان و گل مصنوعی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (220, 1022, 'ساعت دیواری', 'wall-clock', 'ساعت دیواری', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (221, 1022, 'شمع و لوازم تزئینی', 'candle-decoration', 'شمع و لوازم تزئینی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (222, 1030, 'گوشی سامسونگ', 'samsung-phone', 'گوشی سامسونگ', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (223, 1030, 'گوشی اپل', 'apple-iphone', 'گوشی اپل', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (224, 1030, 'گوشی شیائومی', 'xiaomi-phone', 'گوشی شیائومی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (225, 1030, 'گوشی هوآوی', 'huawei-phone', 'گوشی هوآوی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (226, 1030, 'گوشی نوکیا', 'nokia-phone', 'گوشی نوکیا', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (227, 1031, 'تبلت سامسونگ', 'samsung-tablet', 'تبلت سامسونگ', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (228, 1031, 'تبلت اپل آیپد', 'apple-ipad', 'تبلت اپل آیپد', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (229, 1031, 'تبلت لنوو', 'lenovo-tablet', 'تبلت لنوو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (230, 1031, 'تبلت هواوی', 'huawei-tablet', 'تبلت هواوی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (231, 1032, 'لپ تاپ ایسوس', 'asus-laptop', 'لپ تاپ ایسوس', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (232, 1032, 'لپ تاپ لنوو', 'lenovo-laptop', 'لپ تاپ لنوو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (233, 1032, 'لپ تاپ اچ پی', 'hp-laptop', 'لپ تاپ اچ پی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (234, 1032, 'لپ تاپ دل', 'dell-laptop', 'لپ تاپ دل', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (235, 1032, 'کیس و قطعات کامپیوتر', 'computer-pc-parts', 'کیس و قطعات کامپیوتر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (236, 1033, 'قاب و کاور موبایل', 'phone-case', 'قاب و کاور موبایل', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (237, 1033, 'محافظ صفحه نمایش', 'screen-protector', 'محافظ صفحه نمایش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (238, 1033, 'پاوربانک', 'powerbank', 'پاوربانک', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (239, 1033, 'شارژر و کابل', 'charger-cable', 'شارژر و کابل', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (240, 1033, 'هولدر و پایه خودرو', 'car-holder', 'هولدر و پایه خودرو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (241, 1034, 'هدفون بی سیم', 'wireless-headphone', 'هدفون بی سیم', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (242, 1034, 'هدفون سیمی', 'wired-headphone', 'هدفون سیمی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (243, 1034, 'هدست گیمینگ', 'gaming-headset', 'هدست گیمینگ', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (244, 1034, 'هدفون True Wireless', 'tw-headphone', 'هدفون True Wireless', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (245, 1040, 'تیشرت و پولوشرت مردانه', 'mens-tshirt-polo', 'تیشرت و پولوشرت مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (246, 1040, 'پیراهن مردانه', 'mens-shirt', 'پیراهن مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (247, 1040, 'شلوار مردانه', 'mens-pants', 'شلوار مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (248, 1040, 'کت و شلوار', 'suit-blazer', 'کت و شلوار', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (249, 1040, 'ژاکت و هودی', 'hoodie-sweater', 'ژاکت و هودی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (250, 1040, 'کت و پالتو', 'coat-jacket', 'کت و پالتو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (251, 1041, 'بلوز و تاپ زنانه', 'womens-blouse-top', 'بلوز و تاپ زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (252, 1041, 'شلوار زنانه', 'womens-pants', 'شلوار زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (253, 1041, 'لباس و مانتو', 'dress-manteau', 'لباس و مانتو', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (254, 1041, 'دامن', 'skirt', 'دامن', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (255, 1041, 'کت و جلیقه', 'jacket-vest', 'کت و جلیقه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (256, 1041, 'شومیز', 'shirt-blouse', 'شومیز', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (257, 1042, 'کفش مردانه', 'mens-shoes', 'کفش مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (258, 1042, 'کفش زنانه', 'womens-shoes', 'کفش زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (259, 1042, 'کفش ورزشی', 'sports-shoes', 'کفش ورزشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (260, 1042, 'کیف مردانه', 'mens-bag', 'کیف مردانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (261, 1042, 'کیف زنانه', 'womens-bag', 'کیف زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (262, 1042, 'کوله پشتی', 'backpack', 'کوله پشتی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (263, 1043, 'عینک آفتابی', 'sunglasses', 'عینک آفتابی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (264, 1043, 'کلاه', 'hat-cap', 'کلاه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (265, 1043, 'شال و روسری', 'scarf-shawl', 'شال و روسری', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (266, 1043, 'کمربند', 'belt', 'کمربند', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (267, 1050, 'لوازم بدنسازی', 'fitness-equipment', 'لوازم بدنسازی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (268, 1050, 'لوازم فوتبال', 'football-gear', 'لوازم فوتبال', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (269, 1050, 'لوازم شنا', 'swimming-gear', 'لوازم شنا', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (270, 1050, 'لوازم کوهنوردی', 'mountaineering-gear', 'لوازم کوهنوردی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (271, 1051, 'تیشرت ورزشی', 'sports-tshirt', 'تیشرت ورزشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (272, 1051, 'شلوار ورزشی', 'sports-pants', 'شلوار ورزشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (273, 1051, 'کفش ورزشی', 'sports-shoes', 'کفش ورزشی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (274, 1051, 'لباس ورزشی زنانه', 'womens-sportswear', 'لباس ورزشی زنانه', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (275, 1052, 'چمدان و ساک', 'suitcase-bag', 'چمدان و ساک', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (276, 1052, 'کیف مسافرتی', 'travel-bag', 'کیف مسافرتی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (277, 1052, 'لوازم بهداشتی سفر', 'travel-toiletries', 'لوازم بهداشتی سفر', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (278, 1052, 'بالش و پتو مسافرتی', 'travel-pillow-blanket', 'بالش و پتو مسافرتی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (279, 1062, 'خودکار و روان نویس', 'pen-rollerball', 'خودکار و روان نویس', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (280, 1062, 'مداد و تراش', 'pencil-sharpener', 'مداد و تراش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (281, 1062, 'پاک کن و خط کش', 'eraser-ruler', 'پاک کن و خط کش', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (282, 1062, 'دفتر و یادداشت', 'notebook-notepad', 'دفتر و یادداشت', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');
INSERT INTO `sub_sub_categories` VALUES (283, 1062, 'کیف و جامدادی', 'pencil-case-bag', 'کیف و جامدادی', NULL, '2026-05-15 13:38:06', '2026-05-15 13:38:06');

-- ----------------------------
-- Table structure for subscribers
-- ----------------------------
DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE `subscribers`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `subscribers_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subscribers
-- ----------------------------

-- ----------------------------
-- Table structure for ticket_replies
-- ----------------------------
DROP TABLE IF EXISTS `ticket_replies`;
CREATE TABLE `ticket_replies`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `viewed` tinyint NOT NULL DEFAULT 0,
  `client_viewed` tinyint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ticket_replies
-- ----------------------------

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `order_id` int NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `viewed` tinyint NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 0,
  `client_viewed` tinyint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tickets_code_unique`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tickets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `referred_by` int NULL DEFAULT NULL,
  `provider_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `role` enum('admin','technician','customer') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'customer',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar_original` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `balance` double(8, 2) NOT NULL DEFAULT 0.00,
  `referral_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_package_id` int NULL DEFAULT NULL,
  `remaining_uploads` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, NULL, NULL, 'admin', 'مدیر سیستم', 'admin@example.com', 'admin', NULL, '$2y$10$vyiEytr3RPcwh.VE/DrqQOcHwi9lJr/0wc0eoIowXfDgPxkMZdYCG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `users` VALUES (2, NULL, NULL, 'customer', 'تکنسین نمونه', 'tech@example.com', 'technician', NULL, '$2y$10$vyiEytr3RPcwh.VE/DrqQOcHwi9lJr/0wc0eoIowXfDgPxkMZdYCG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `users` VALUES (3, NULL, NULL, 'customer', 'مشتری نمونه', 'customer@example.com', 'customer', NULL, '$2y$10$vyiEytr3RPcwh.VE/DrqQOcHwi9lJr/0wc0eoIowXfDgPxkMZdYCG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0, '2026-08-22 21:38:12', '2026-08-22 21:38:12');
INSERT INTO `users` VALUES (4, NULL, NULL, 'admin', 'مدیریت دریکانا', 'admin@drikana.com', 'admin', '2026-09-07 03:55:52', '$2y$10$vyiEytr3RPcwh.VE/DrqQOcHwi9lJr/0wc0eoIowXfDgPxkMZdYCG', NULL, NULL, NULL, 'تهران، بازار بزرگ طلا و جواهر', NULL, 'تهران', NULL, '09120000000', NULL, NULL, 0.00, NULL, NULL, 0, '2026-09-07 03:55:52', '2026-09-07 03:55:52');

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `amount` double(20, 2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_details` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wallets
-- ----------------------------

-- ----------------------------
-- Table structure for wishlists
-- ----------------------------
DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wishlists
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
