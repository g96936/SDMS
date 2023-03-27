/*
 Navicat MySQL Data Transfer

 Source Server         : locallhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : dm

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 25/03/2023 22:53:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT 'Detect whether it is valid or invalid',
  `version` int(11) NULL DEFAULT NULL COMMENT 'Number of updates',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  UNIQUE INDEX `UK_5cca88c6i17ttuegcvdkgehah`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('001', '2023-03-17 22:45:31', '2023-03-18 22:45:37', NULL, NULL, 'jack', '123');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT 'Detect whether it is valid or invalid',
  `version` int(11) NULL DEFAULT NULL COMMENT 'Number of updates',
  `dormitory_manager_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `location` varchar(128) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_oyx9p4qp0ot5mw2vdn1qgax00`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('001', '2023-03-16 22:46:48', '2023-03-17 22:46:58', NULL, NULL, '001', 'No.1 Street, Tokyo, Japan', 'Hikari');

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT 'Detect whether it is valid or invalid',
  `version` int(11) NULL DEFAULT NULL COMMENT 'Number of updates',
  `building_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `floor` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `lived_number` int(11) NULL DEFAULT NULL,
  `max_number` int(11) NOT NULL,
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT 'Number of dormitory',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_a6os0dike7isf1gh2gw2fuqkx`(`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES ('001', '2023-03-23 22:48:26', '2023-03-24 22:48:31', NULL, NULL, '001', '1', 2, 4, 'a01');

-- ----------------------------
-- Table structure for dormitory_manager
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_manager`;
CREATE TABLE `dormitory_manager`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT 'Detect whether it is valid or invalid',
  `version` int(11) NULL DEFAULT NULL COMMENT 'Number of updates',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT 'gender',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT 'manager\'s number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_6xasm96t41pqnctqrvan7w7hk`(`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory_manager
-- ----------------------------
INSERT INTO `dormitory_manager` VALUES ('001', '2023-03-22 22:49:07', '2023-03-23 22:49:10', NULL, NULL, 'bob', '123', 'male', 'f34');

-- ----------------------------
-- Table structure for live
-- ----------------------------
DROP TABLE IF EXISTS `live`;
CREATE TABLE `live`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vaild` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '\r\n\r\n\r\nDetect whether it is valid or invalid',
  `version` int(10) NULL DEFAULT NULL COMMENT 'Number of updates',
  `dormitory_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `live_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of check-in',
  `student_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of live
-- ----------------------------
INSERT INTO `live` VALUES ('001', '2023-03-22 22:51:10', '2023-03-23 22:51:16', NULL, NULL, '001', '2023-03-23 22:51:21', '001');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vaild` varchar(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '\r\n\r\n\r\nDetect whether it is valid or invalid',
  `version` int(10) NULL DEFAULT NULL COMMENT 'Number of updates',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT 'gender',
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT 'The number of each person in a dormitory',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('001', '2023-03-25 22:50:49', '2023-03-26 22:50:54', NULL, NULL, 'david', '123', 'male', 'k12');

SET FOREIGN_KEY_CHECKS = 1;
