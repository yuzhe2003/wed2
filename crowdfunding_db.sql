/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 30/09/2024 14:37:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORY_ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Health');
INSERT INTO `category` VALUES (2, 'Education');
INSERT INTO `category` VALUES (3, 'Environment');
INSERT INTO `category` VALUES (4, 'Arts');
INSERT INTO `category` VALUES (5, 'Technology');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISER_ID` int NOT NULL AUTO_INCREMENT,
  `ORGANIZER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CAPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TARGET_FUNDING` decimal(10, 2) NOT NULL,
  `CURRENT_FUNDING` decimal(10, 2) NOT NULL,
  `CITY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `CATEGORY_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`FUNDRAISER_ID`) USING BTREE,
  INDEX `CATEGORY_ID`(`CATEGORY_ID`) USING BTREE,
  CONSTRAINT `fundraiser_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Alice Johnson', 'Help local children get education supplies', 5000.00, 2500.00, 'New York', 1, 2);
INSERT INTO `fundraiser` VALUES (2, 'Bob Smith', 'Fund medical treatment for sick pets', 3000.00, 1500.00, 'Los Angeles', 1, 1);
INSERT INTO `fundraiser` VALUES (3, 'Charlie Brown', 'Plant trees in urban areas', 10000.00, 7000.00, 'San Francisco', 1, 3);
INSERT INTO `fundraiser` VALUES (4, 'Diana Prince', 'Support community health initiatives', 8000.00, 6000.00, 'Chicago', 1, 1);
INSERT INTO `fundraiser` VALUES (5, 'Ethan Hunt', 'Provide scholarships for underprivileged students', 20000.00, 12000.00, 'Miami', 1, 2);
INSERT INTO `fundraiser` VALUES (6, 'Fiona Green', 'Art therapy for mental health', 4000.00, 2000.00, 'Seattle', 1, 4);
INSERT INTO `fundraiser` VALUES (7, 'George White', 'Tech equipment for schools', 15000.00, 8000.00, 'Austin', 1, 5);
INSERT INTO `fundraiser` VALUES (8, 'Hannah Blue', 'Wildlife conservation project', 12000.00, 9000.00, 'Denver', 1, 3);
INSERT INTO `fundraiser` VALUES (9, 'Ian Black', 'Music classes for youth', 6000.00, 3500.00, 'Boston', 1, 4);
INSERT INTO `fundraiser` VALUES (10, 'Jenna Gold', 'Support STEM education programs', 10000.00, 5000.00, 'Atlanta', 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
