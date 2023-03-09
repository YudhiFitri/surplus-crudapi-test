/*
 Navicat Premium Data Transfer

 Source Server         : Localserver
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : surplus-crudapi-test

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 09/03/2023 15:21:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'dolor', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (2, 'quam', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (3, 'ipsum', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (4, 'quo', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (5, 'quae', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (6, 'sunt', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (7, 'sed', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (8, 'consequatur', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (9, 'dolorum', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (10, 'nostrum', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `categories` VALUES (11, 'Category 1 updated', 0, '2023-03-09 06:58:35', '2023-03-09 06:59:52');
INSERT INTO `categories` VALUES (13, 'Category 3', 1, '2023-03-09 06:58:49', '2023-03-09 06:58:49');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (2, 1, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (3, 1, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (4, 1, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (5, 1, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (6, 1, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (7, 1, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (8, 1, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (9, 2, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (10, 2, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (11, 2, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (12, 2, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (13, 2, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (14, 2, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (15, 3, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (16, 3, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (17, 4, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (18, 4, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (19, 4, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (20, 4, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (21, 5, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (22, 5, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (23, 5, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (24, 5, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (25, 5, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (26, 5, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (27, 5, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (28, 6, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (29, 6, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (30, 6, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (31, 6, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (32, 7, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (33, 7, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (34, 7, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (35, 7, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (36, 7, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (37, 7, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (38, 7, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (39, 7, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (40, 7, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (41, 7, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (42, 8, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (43, 8, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (44, 8, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (45, 8, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (46, 8, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (47, 9, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (48, 9, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (49, 9, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (50, 9, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (51, 9, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (52, 9, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (53, 9, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (54, 9, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (55, 10, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (56, 10, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (57, 11, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (58, 11, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (59, 11, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (60, 11, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (61, 11, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (62, 11, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (63, 11, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (64, 11, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (65, 12, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (66, 12, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (67, 13, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (68, 13, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (69, 13, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (70, 13, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (71, 14, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (72, 14, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (73, 14, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (74, 15, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (75, 15, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (76, 15, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (77, 15, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (78, 15, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (79, 16, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (80, 16, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (81, 17, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (82, 18, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (83, 19, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (84, 20, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (85, 20, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (86, 20, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (87, 20, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (88, 20, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (89, 21, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (90, 21, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (91, 21, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (92, 21, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (93, 21, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (94, 21, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (95, 21, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (96, 21, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (97, 21, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (98, 21, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (99, 22, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (100, 22, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (101, 22, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (102, 22, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (103, 22, 6, NULL, NULL);
INSERT INTO `category_product` VALUES (104, 22, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (105, 22, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (106, 22, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (107, 23, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (108, 23, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (109, 23, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (110, 23, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (111, 24, 1, NULL, NULL);
INSERT INTO `category_product` VALUES (112, 24, 2, NULL, NULL);
INSERT INTO `category_product` VALUES (113, 24, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (114, 24, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (115, 24, 7, NULL, NULL);
INSERT INTO `category_product` VALUES (116, 24, 8, NULL, NULL);
INSERT INTO `category_product` VALUES (117, 24, 9, NULL, NULL);
INSERT INTO `category_product` VALUES (118, 24, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (119, 25, 3, NULL, NULL);
INSERT INTO `category_product` VALUES (120, 25, 4, NULL, NULL);
INSERT INTO `category_product` VALUES (121, 25, 5, NULL, NULL);
INSERT INTO `category_product` VALUES (122, 25, 10, NULL, NULL);
INSERT INTO `category_product` VALUES (123, 2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for image_product
-- ----------------------------
DROP TABLE IF EXISTS `image_product`;
CREATE TABLE `image_product`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `image_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_product
-- ----------------------------
INSERT INTO `image_product` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (2, 2, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (3, 4, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (4, 5, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (5, 6, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (6, 8, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (7, 11, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (8, 17, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (9, 21, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (10, 22, 1, NULL, NULL);
INSERT INTO `image_product` VALUES (11, 1, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (12, 2, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (13, 4, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (14, 8, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (15, 12, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (16, 15, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (17, 17, 2, NULL, NULL);
INSERT INTO `image_product` VALUES (18, 3, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (19, 4, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (20, 5, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (21, 6, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (22, 7, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (23, 8, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (24, 9, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (25, 10, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (26, 11, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (27, 12, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (28, 14, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (29, 15, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (30, 16, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (31, 17, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (32, 19, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (33, 20, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (34, 22, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (35, 23, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (36, 24, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (37, 25, 3, NULL, NULL);
INSERT INTO `image_product` VALUES (38, 11, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (39, 13, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (40, 14, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (41, 17, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (42, 19, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (43, 21, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (44, 24, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (45, 25, 4, NULL, NULL);
INSERT INTO `image_product` VALUES (46, 4, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (47, 5, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (48, 8, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (49, 13, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (50, 15, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (51, 18, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (52, 19, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (53, 20, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (54, 24, 5, NULL, NULL);
INSERT INTO `image_product` VALUES (55, 1, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (56, 2, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (57, 4, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (58, 5, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (59, 6, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (60, 7, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (61, 9, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (62, 11, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (63, 12, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (64, 13, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (65, 14, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (66, 16, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (67, 17, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (68, 19, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (69, 21, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (70, 22, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (71, 23, 6, NULL, NULL);
INSERT INTO `image_product` VALUES (72, 1, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (73, 2, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (74, 3, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (75, 5, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (76, 6, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (77, 8, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (78, 9, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (79, 10, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (80, 11, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (81, 12, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (82, 13, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (83, 14, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (84, 16, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (85, 18, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (86, 21, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (87, 22, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (88, 23, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (89, 24, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (90, 25, 7, NULL, NULL);
INSERT INTO `image_product` VALUES (91, 4, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (92, 5, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (93, 8, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (94, 16, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (95, 21, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (96, 24, 8, NULL, NULL);
INSERT INTO `image_product` VALUES (97, 13, 9, NULL, NULL);
INSERT INTO `image_product` VALUES (98, 14, 9, NULL, NULL);
INSERT INTO `image_product` VALUES (99, 16, 9, NULL, NULL);
INSERT INTO `image_product` VALUES (100, 19, 9, NULL, NULL);
INSERT INTO `image_product` VALUES (101, 20, 9, NULL, NULL);
INSERT INTO `image_product` VALUES (102, 2, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (103, 3, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (104, 8, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (105, 12, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (106, 14, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (107, 15, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (108, 16, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (109, 19, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (110, 20, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (111, 21, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (112, 23, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (113, 24, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (114, 25, 10, NULL, NULL);
INSERT INTO `image_product` VALUES (115, 2, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (116, 4, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (117, 5, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (118, 6, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (119, 10, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (120, 13, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (121, 15, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (122, 16, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (123, 17, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (124, 19, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (125, 20, 11, NULL, NULL);
INSERT INTO `image_product` VALUES (126, 5, 12, NULL, NULL);
INSERT INTO `image_product` VALUES (127, 9, 12, NULL, NULL);
INSERT INTO `image_product` VALUES (128, 14, 12, NULL, NULL);
INSERT INTO `image_product` VALUES (129, 19, 12, NULL, NULL);
INSERT INTO `image_product` VALUES (130, 25, 12, NULL, NULL);
INSERT INTO `image_product` VALUES (131, 3, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (132, 5, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (133, 8, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (134, 9, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (135, 11, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (136, 14, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (137, 15, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (138, 16, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (139, 18, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (140, 19, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (141, 20, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (142, 21, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (143, 23, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (144, 24, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (145, 25, 13, NULL, NULL);
INSERT INTO `image_product` VALUES (146, 1, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (147, 2, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (148, 3, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (149, 4, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (150, 5, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (151, 6, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (152, 7, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (153, 9, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (154, 12, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (155, 15, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (156, 17, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (157, 22, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (158, 24, 14, NULL, NULL);
INSERT INTO `image_product` VALUES (159, 2, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (160, 3, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (161, 4, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (162, 5, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (163, 6, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (164, 7, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (165, 8, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (166, 9, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (167, 10, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (168, 11, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (169, 13, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (170, 17, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (171, 18, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (172, 19, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (173, 21, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (174, 24, 15, NULL, NULL);
INSERT INTO `image_product` VALUES (175, 1, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (176, 2, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (177, 3, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (178, 4, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (179, 5, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (180, 6, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (181, 7, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (182, 9, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (183, 10, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (184, 11, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (185, 12, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (186, 14, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (187, 15, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (188, 16, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (189, 17, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (190, 19, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (191, 20, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (192, 21, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (193, 24, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (194, 25, 16, NULL, NULL);
INSERT INTO `image_product` VALUES (195, 1, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (196, 2, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (197, 3, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (198, 6, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (199, 7, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (200, 9, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (201, 10, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (202, 11, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (203, 13, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (204, 14, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (205, 15, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (206, 17, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (207, 18, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (208, 21, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (209, 22, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (210, 25, 17, NULL, NULL);
INSERT INTO `image_product` VALUES (211, 6, 18, NULL, NULL);
INSERT INTO `image_product` VALUES (212, 7, 18, NULL, NULL);
INSERT INTO `image_product` VALUES (213, 9, 18, NULL, NULL);
INSERT INTO `image_product` VALUES (214, 10, 18, NULL, NULL);
INSERT INTO `image_product` VALUES (215, 19, 18, NULL, NULL);
INSERT INTO `image_product` VALUES (216, 2, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (217, 3, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (218, 9, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (219, 12, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (220, 17, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (221, 21, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (222, 25, 19, NULL, NULL);
INSERT INTO `image_product` VALUES (223, 1, 20, NULL, NULL);
INSERT INTO `image_product` VALUES (224, 10, 20, NULL, NULL);
INSERT INTO `image_product` VALUES (225, 16, 20, NULL, NULL);
INSERT INTO `image_product` VALUES (226, 22, 20, NULL, NULL);
INSERT INTO `image_product` VALUES (227, 1, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (228, 2, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (229, 4, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (230, 7, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (231, 13, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (232, 14, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (233, 16, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (234, 18, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (235, 22, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (236, 24, 21, NULL, NULL);
INSERT INTO `image_product` VALUES (237, 1, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (238, 3, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (239, 4, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (240, 6, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (241, 7, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (242, 8, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (243, 10, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (244, 11, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (245, 12, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (246, 14, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (247, 16, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (248, 18, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (249, 19, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (250, 20, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (251, 21, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (252, 22, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (253, 23, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (254, 24, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (255, 25, 22, NULL, NULL);
INSERT INTO `image_product` VALUES (256, 2, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (257, 4, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (258, 5, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (259, 8, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (260, 9, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (261, 10, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (262, 11, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (263, 12, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (264, 13, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (265, 16, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (266, 17, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (267, 19, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (268, 20, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (269, 22, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (270, 23, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (271, 24, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (272, 25, 23, NULL, NULL);
INSERT INTO `image_product` VALUES (273, 3, 24, NULL, NULL);
INSERT INTO `image_product` VALUES (274, 6, 24, NULL, NULL);
INSERT INTO `image_product` VALUES (275, 23, 24, NULL, NULL);
INSERT INTO `image_product` VALUES (276, 4, 25, NULL, NULL);
INSERT INTO `image_product` VALUES (277, 2, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (278, 5, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (279, 7, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (280, 8, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (281, 11, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (282, 12, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (283, 13, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (284, 14, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (285, 15, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (286, 16, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (287, 17, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (288, 20, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (289, 21, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (290, 22, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (291, 23, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (292, 24, 26, NULL, NULL);
INSERT INTO `image_product` VALUES (293, 1, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (294, 2, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (295, 4, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (296, 5, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (297, 7, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (298, 12, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (299, 14, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (300, 15, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (301, 16, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (302, 20, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (303, 22, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (304, 23, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (305, 24, 27, NULL, NULL);
INSERT INTO `image_product` VALUES (306, 2, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (307, 4, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (308, 10, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (309, 13, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (310, 16, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (311, 17, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (312, 20, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (313, 22, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (314, 23, 28, NULL, NULL);
INSERT INTO `image_product` VALUES (315, 5, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (316, 6, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (317, 8, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (318, 13, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (319, 15, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (320, 19, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (321, 20, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (322, 21, 29, NULL, NULL);
INSERT INTO `image_product` VALUES (323, 1, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (324, 2, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (325, 3, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (326, 5, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (327, 6, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (328, 9, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (329, 10, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (330, 12, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (331, 13, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (332, 16, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (333, 17, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (334, 18, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (335, 19, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (336, 21, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (337, 22, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (338, 23, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (339, 24, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (340, 25, 30, NULL, NULL);
INSERT INTO `image_product` VALUES (341, 7, 31, NULL, NULL);
INSERT INTO `image_product` VALUES (342, 2, 31, NULL, NULL);
INSERT INTO `image_product` VALUES (343, 8, 31, NULL, NULL);

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, 'ipsa rerum eos repellendus', 'https://via.placeholder.com/640x480.png/002200?text=qui', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (2, 'et sunt est sequi', 'https://via.placeholder.com/640x480.png/0077aa?text=accusamus', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (3, 'quia autem et sed', 'https://via.placeholder.com/640x480.png/008866?text=laudantium', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (4, 'quaerat qui et praesentium', 'https://via.placeholder.com/640x480.png/00ddcc?text=cupiditate', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (5, 'molestiae neque est quia', 'https://via.placeholder.com/640x480.png/002211?text=voluptas', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (6, 'officia ut omnis aut', 'https://via.placeholder.com/640x480.png/0033cc?text=molestias', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (7, 'qui porro ut culpa', 'https://via.placeholder.com/640x480.png/006699?text=provident', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (8, 'est sed consequatur dolores', 'https://via.placeholder.com/640x480.png/00ee22?text=rerum', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (9, 'expedita aut ut sunt', 'https://via.placeholder.com/640x480.png/00ee88?text=qui', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (10, 'voluptas quia commodi nihil', 'https://via.placeholder.com/640x480.png/000099?text=maxime', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (11, 'et repellat adipisci eos', 'https://via.placeholder.com/640x480.png/001155?text=tempore', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (12, 'magni delectus praesentium eligendi', 'https://via.placeholder.com/640x480.png/002233?text=dolores', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (13, 'saepe ipsum aut officia', 'https://via.placeholder.com/640x480.png/004488?text=quam', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (14, 'ex et sit est', 'https://via.placeholder.com/640x480.png/008811?text=unde', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (15, 'odio maxime odit magni', 'https://via.placeholder.com/640x480.png/00bb33?text=sed', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (16, 'quis cum porro dolor', 'https://via.placeholder.com/640x480.png/00ff88?text=minus', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (17, 'veniam qui sunt consequuntur', 'https://via.placeholder.com/640x480.png/002277?text=ratione', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (18, 'eius et quasi voluptate', 'https://via.placeholder.com/640x480.png/00ff55?text=et', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (19, 'optio quis dolores consequuntur', 'https://via.placeholder.com/640x480.png/000044?text=nobis', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (20, 'voluptate dolorem repellat neque', 'https://via.placeholder.com/640x480.png/007733?text=dolores', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (21, 'similique minus veritatis sed', 'https://via.placeholder.com/640x480.png/00bbbb?text=quas', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (22, 'quia et facilis rem', 'https://via.placeholder.com/640x480.png/002266?text=voluptates', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (23, 'praesentium dolores ut temporibus', 'https://via.placeholder.com/640x480.png/0011aa?text=similique', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (24, 'minus omnis deserunt quod', 'https://via.placeholder.com/640x480.png/002222?text=unde', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (25, 'quas qui est corrupti', 'https://via.placeholder.com/640x480.png/008811?text=quae', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (26, 'tempora corporis tenetur aliquam', 'https://via.placeholder.com/640x480.png/0044ee?text=quidem', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (27, 'autem tenetur odit tenetur', 'https://via.placeholder.com/640x480.png/00dd22?text=est', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (28, 'magni rerum inventore explicabo', 'https://via.placeholder.com/640x480.png/00cc33?text=aut', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (29, 'et deserunt eveniet veniam', 'https://via.placeholder.com/640x480.png/0066ee?text=reiciendis', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (30, 'enim perferendis ullam ab', 'https://via.placeholder.com/640x480.png/000022?text=esse', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `images` VALUES (31, 'Image 1 updated plus products', 'https://via.placeholder.com/640x480.png/000022?text=esse', 0, '2023-03-09 07:59:17', '2023-03-09 08:03:39');
INSERT INTO `images` VALUES (33, 'Image 3', 'https://via.placeholder.com/640x480.png/000022?text=esse', 1, '2023-03-09 07:59:47', '2023-03-09 07:59:47');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_03_09_061951_create_categories_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_03_09_062034_create_products_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_03_09_062611_create_category_product_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_03_09_062644_create_images_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_03_09_062713_create_image_product_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'tenetur quo quasi', 'Esse et facere eius itaque quas suscipit provident.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (2, 'et omnis porro', 'Aut aperiam voluptatem sint tempore.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (3, 'et est non', 'Quaerat suscipit velit ad consequatur.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (4, 'facilis sint vitae', 'Aperiam quibusdam aut et sint.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (5, 'et doloribus blanditiis', 'Nulla molestiae facilis aut quis reiciendis qui.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (6, 'dicta repellat amet', 'Velit temporibus eos itaque et.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (7, 'quo vitae neque', 'Eum nihil aut consectetur incidunt atque nostrum nostrum.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (8, 'voluptas facilis laboriosam', 'Nihil eum quisquam in aut natus in non.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (9, 'aliquam est tenetur', 'Iure doloribus eius doloribus quia veniam sapiente adipisci.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (10, 'non laboriosam consequuntur', 'Laborum vel et distinctio debitis quos magnam fugit.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (11, 'omnis eum ex', 'Nam officiis enim voluptas repellat et non velit dignissimos.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (12, 'totam voluptatem cumque', 'Accusantium est natus cumque et tenetur voluptate est atque.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (13, 'voluptates quaerat doloremque', 'Est nesciunt eaque sint praesentium.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (14, 'repellendus pariatur quod', 'Quo ducimus rerum recusandae numquam doloribus.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (15, 'et incidunt eius', 'Laborum et aliquam sunt doloremque.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (16, 'repellat laborum maxime', 'Consequuntur similique sint laudantium repellendus.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (17, 'dolor aut et', 'Pariatur aliquam et saepe voluptas.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (18, 'illum tempora labore', 'Et explicabo quia quia culpa occaecati dolorem.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (19, 'dolores molestiae et', 'Numquam illum reprehenderit consequatur voluptas laborum a.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (20, 'sunt numquam et', 'Assumenda quo similique perferendis ut unde.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (21, 'aliquam nihil in', 'Velit dolore nihil architecto dolores.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (22, 'et debitis sapiente', 'Molestiae unde perspiciatis quaerat quasi.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (23, 'sit quae ea', 'Sit cupiditate quo vel repellat non non est.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (24, 'est velit sed', 'Architecto qui laudantium quia ut soluta voluptas.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (25, 'est necessitatibus porro', 'Sint laudantium nulla quis est laborum.', 1, '2023-03-09 06:37:45', '2023-03-09 06:37:45');
INSERT INTO `products` VALUES (26, 'Product 3 updated', 'Product 3 description updated', 0, '2023-03-09 07:42:20', '2023-03-09 07:43:27');
INSERT INTO `products` VALUES (28, 'Product 3', 'Product 3 description', 1, '2023-03-09 07:42:53', '2023-03-09 07:42:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
