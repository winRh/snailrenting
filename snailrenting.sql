/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : snailrenting

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 05/03/2021 12:22:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int unsigned NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL COMMENT '0超级管理员，1管理员，2管家：预约看房，定制房源，3审核员，4维修',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新者',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '更新日期',
  `del_flag` int(0) NULL DEFAULT NULL COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '888888', '888888', 0, 1, 1, '2021-03-05 12:16:21', '2021-03-05 12:16:23', 0);

-- ----------------------------
-- Table structure for snail_admin
-- ----------------------------
DROP TABLE IF EXISTS `snail_admin`;
CREATE TABLE `snail_admin`  (
  `id` int unsigned NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int(0) NULL DEFAULT NULL COMMENT '//0超级管理员，1管理员，2管家：预约看房，定制房源，3审核员，4维修',
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_admin
-- ----------------------------
INSERT INTO `snail_admin` VALUES (1, '888888', '888888', 0, 1, 1, '2021-03-05 12:16:51', '2021-03-05 12:16:53', b'0');

-- ----------------------------
-- Table structure for snail_banner
-- ----------------------------
DROP TABLE IF EXISTS `snail_banner`;
CREATE TABLE `snail_banner`  (
  `id` int unsigned NOT NULL,
  `type` int(0) NULL DEFAULT NULL COMMENT '1优惠房源，2推荐房源',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room_id` int(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_banner
-- ----------------------------
INSERT INTO `snail_banner` VALUES (1, 1, 'xx', 1, 1, 1, '2021-03-05 12:03:49', '2021-03-05 12:03:52', 0);
INSERT INTO `snail_banner` VALUES (2, 2, 'xx', 2, 1, 1, '2021-03-05 12:03:49', '2021-03-05 12:03:52', 0);

-- ----------------------------
-- Table structure for snail_business
-- ----------------------------
DROP TABLE IF EXISTS `snail_business`;
CREATE TABLE `snail_business`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL COMMENT '1报修,2退租,3预约看房,4定制房源,5其他问题',
  `desp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL COMMENT '状态（0待解决，1处理中，2已解决）',
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_collection
-- ----------------------------
DROP TABLE IF EXISTS `snail_collection`;
CREATE TABLE `snail_collection`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `room_id` int(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_house
-- ----------------------------
DROP TABLE IF EXISTS `snail_house`;
CREATE TABLE `snail_house`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `location_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL COMMENT '租房类型（1合租，2整租）',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `house_price` decimal(10, 2) NULL DEFAULT NULL,
  `house_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bedroom` int(0) NULL DEFAULT NULL,
  `bath` int(0) NULL DEFAULT NULL,
  `bath_img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bath_img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kitchen` int(0) NULL DEFAULT NULL,
  `kitchen_img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kitchen_img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `living` int(0) NULL DEFAULT NULL,
  `living_img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `living_img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vr_img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vr_img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vr_img3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `valid_time` timestamp(0) NULL DEFAULT NULL,
  `desp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_house
-- ----------------------------
INSERT INTO `snail_house` VALUES (1, 1, 1, 1, 'xx', 'xx', 12345.00, 'house1.jpg', 1, 1, '1.jpg', '2.jpg', 1, '1.jpg', '2.jpg', 1, '1.jpg', '2.jpg', '1.jpg', '1.jpg', '1.jpg', '2021-03-05 12:07:21', 'xx', 1, 1, '2021-03-05 12:07:29', '2021-03-05 12:07:33', b'0');

-- ----------------------------
-- Table structure for snail_inform
-- ----------------------------
DROP TABLE IF EXISTS `snail_inform`;
CREATE TABLE `snail_inform`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `push_by` int(0) NULL DEFAULT NULL,
  `push_state` int(0) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_location
-- ----------------------------
DROP TABLE IF EXISTS `snail_location`;
CREATE TABLE `snail_location`  (
  `id` int unsigned NOT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL COMMENT '1省，2市，3区，4街',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_location
-- ----------------------------
INSERT INTO `snail_location` VALUES (1, 1, 1, '测试', 1, 1, '2021-03-05 12:01:28', '2021-03-05 12:01:31', b'0', '广东', '深圳', 'xx', 'xx');
INSERT INTO `snail_location` VALUES (2, 1, 2, '测试', 1, 1, '2021-03-05 12:01:28', '2021-03-05 12:01:31', b'0', '广东', '深圳', 'xx', 'xx');
INSERT INTO `snail_location` VALUES (3, 1, 3, '测试', 1, 1, '2021-03-05 12:01:28', '2021-03-05 12:01:31', b'0', '广东', '深圳', 'xx', 'xx');
INSERT INTO `snail_location` VALUES (4, 1, 4, '测试', 1, 1, '2021-03-05 12:01:28', '2021-03-05 12:01:31', b'0', '广东', '深圳', 'xx', 'xx');

-- ----------------------------
-- Table structure for snail_message
-- ----------------------------
DROP TABLE IF EXISTS `snail_message`;
CREATE TABLE `snail_message`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `praise` bigint(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_order
-- ----------------------------
DROP TABLE IF EXISTS `snail_order`;
CREATE TABLE `snail_order`  (
  `id` int unsigned NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `house_id` int(0) NULL DEFAULT NULL,
  `room_id` int(0) NULL DEFAULT NULL,
  `contract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同号',
  `state` int(0) NULL DEFAULT NULL COMMENT '状态（0审核中，1通过，2未通过）',
  `pay_state` int(0) NULL DEFAULT NULL COMMENT '支付状态(0未支付，1已支付）',
  `pay_money` decimal(10, 2) NULL DEFAULT NULL,
  `discount_money` decimal(10, 2) NULL DEFAULT NULL,
  `live_time` timestamp(0) NULL DEFAULT NULL COMMENT '入住日期',
  `pay_time` timestamp(0) NULL DEFAULT NULL COMMENT '支付日期',
  `pay_valid_time` timestamp(0) NULL DEFAULT NULL COMMENT '支付截止日期',
  `valid_time` timestamp(0) NULL DEFAULT NULL COMMENT '预计截止日期',
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  `live_day` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_reply
-- ----------------------------
DROP TABLE IF EXISTS `snail_reply`;
CREATE TABLE `snail_reply`  (
  `id` int unsigned NOT NULL,
  `message_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `praise` bigint(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_room
-- ----------------------------
DROP TABLE IF EXISTS `snail_room`;
CREATE TABLE `snail_room`  (
  `id` int unsigned NOT NULL,
  `house_id` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  `sale` int(0) NULL DEFAULT NULL,
  `bedroom_img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bedroom_img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL COMMENT '//状态（0出租中，1已租，2停用，3审核中，4装修，5准备签约）',
  `praise` int(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_room
-- ----------------------------
INSERT INTO `snail_room` VALUES (1, 1, 'xx', 1234, 0, 'bg1.jpg', 'bg2.jpg', 'desp', 0, 1, 1, 1, '2021-03-05 12:05:30', '2021-03-05 12:05:32', b'0');

-- ----------------------------
-- Table structure for snail_steward
-- ----------------------------
DROP TABLE IF EXISTS `snail_steward`;
CREATE TABLE `snail_steward`  (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for snail_user
-- ----------------------------
DROP TABLE IF EXISTS `snail_user`;
CREATE TABLE `snail_user`  (
  `id` int unsigned NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `certificate` int(0) NULL DEFAULT NULL COMMENT '认证（0租客，1普通，2房东，3已租）',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(0) NULL DEFAULT NULL COMMENT '性别（0.女，1男）',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_num` int(0) NULL DEFAULT NULL,
  `login_time` timestamp(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snail_user
-- ----------------------------
INSERT INTO `snail_user` VALUES (1, '123456', '123456@qq.com', 'xx', 1, '123456', '123456', 0, '13555555555', '445221199911111111', 1, '2021-03-05 12:19:44', 1, 1, '2021-03-05 12:19:49', '2021-03-05 12:19:51', b'0');

-- ----------------------------
-- Table structure for snailuser
-- ----------------------------
DROP TABLE IF EXISTS `snailuser`;
CREATE TABLE `snailuser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  `create_by` int(0) NULL DEFAULT NULL,
  `update_by` int(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `del_flag` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snailuser
-- ----------------------------
INSERT INTO `snailuser` VALUES (1, '123456', '123456', 3, 1, 1, '2021-03-05 12:20:32', '2021-03-05 12:20:35', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int unsigned NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456', b'0');

SET FOREIGN_KEY_CHECKS = 1;
