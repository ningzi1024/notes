/*
 Navicat Premium Data Transfer

 Source Server         : mamp
 Source Server Type    : MySQL
 Source Server Version : 50634
 Source Host           : localhost:3308
 Source Schema         : weekres

 Target Server Type    : MySQL
 Target Server Version : 50634
 File Encoding         : 65001

 Date: 12/06/2018 18:02:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2018_05_10_095046_create_tasks_table', 2);
INSERT INTO `migrations` VALUES (3, '2018_05_16_081702_create_tokens_table', 3);
INSERT INTO `migrations` VALUES (4, '2018_05_16_111946_create_token_table', 4);

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) NOT NULL,
  `will_finish` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish_days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES (3, 1, '2018-05-11', '2018-05-10', '1', '10%', '就看见看见', '阿斯顿发生', '2018-05-10 10:11:11', '2018-05-22 18:59:20');
INSERT INTO `tasks` VALUES (4, 1, '2018-05-09', '2018-05-09', '1', '100%', '测试一下能不能提交', '我觉得应该可以的', '2018-05-10 11:15:11', '2018-05-22 18:59:33');
INSERT INTO `tasks` VALUES (5, 1, '2018-05-18', '2018-05-15', '2', '100%', '好友推荐礼金申请', '已发布测试', '2018-05-16 05:57:28', '2018-05-16 05:57:28');
INSERT INTO `tasks` VALUES (6, 1, '2018-05-18', '2018-05-16', '0.2', '100%', 'MG擂台修改，保留2两栏', '已发布正式', '2018-05-16 11:11:42', '2018-05-16 11:11:42');
INSERT INTO `tasks` VALUES (7, 1, '2018-05-18', '2018-05-16', '0.5', '100%', '增加PP电脑客户端下载', '已发布到正式', '2018-05-17 05:14:00', '2018-05-17 05:14:00');
INSERT INTO `tasks` VALUES (8, 1, '2018-05-17', '2018-05-17', '0.3', '100%', '华移-微信扫码渠道前端增加金额尾数不能为0', '已发布到正式', '2018-05-17 08:16:22', '2018-05-17 08:16:22');
INSERT INTO `tasks` VALUES (9, 1, '2018-05-17', '2018-05-17', '0.5', '100%', '微信扫码-HYPay 金额个位上不能为0限制', '已经发布到正式', '2018-05-17 11:34:32', '2018-05-17 11:34:32');
INSERT INTO `tasks` VALUES (10, 1, '2018-05-15', '2018-05-14', '1', '100%', 'PC审核站，增加PT国际平台', '已发布到正式', '2018-05-17 11:54:03', '2018-05-17 11:54:03');
INSERT INTO `tasks` VALUES (11, 1, '2018-05-18', '2018-05-18', '0.5', '100%', '支付增加 快捷支付-LBTPay 和 网银LBTPay', '已发布正式', '2018-05-18 11:30:13', '2018-05-18 11:30:13');
INSERT INTO `tasks` VALUES (12, 1, '2018-05-18', '2018-05-18', '0.5', '100%', '下载页增加腾博APP下载', '已发布正式', '2018-05-18 11:31:43', '2018-05-18 11:31:43');
INSERT INTO `tasks` VALUES (13, 1, '2018-05-14', '2018-05-14', '0.3', '100%', '手机站页面二维码，根据域名显示', '已经发布正式', '2018-05-19 18:13:49', '2018-05-19 18:13:49');
INSERT INTO `tasks` VALUES (14, 1, '2018-05-14', '2018-05-15', '0.5', '100%', 'H5银行卡绑定，增加验证', '已发布正式', '2018-05-19 18:15:40', '2018-05-19 18:15:40');
INSERT INTO `tasks` VALUES (15, 1, '2018-05-15', '2018-05-15', '0.5', '100%', '支付码支付更新上线', '已发布到正式', '2018-05-19 18:16:55', '2018-05-19 18:16:55');
INSERT INTO `tasks` VALUES (16, 1, '2018-05-21', '2018-05-21', '0.2', '100%', '下架PP和MG活动', '已发布正式', '2018-05-21 10:30:20', '2018-05-21 10:30:20');
INSERT INTO `tasks` VALUES (17, 1, '2018-05-21', '2018-05-25', '2', '100%', 'AE电游平台对接', '已发布到测试', '2018-05-22 13:15:45', '2018-05-22 13:15:45');
INSERT INTO `tasks` VALUES (18, 1, '2018-05-22', '2018-05-22', '0.3', '100%', '银蓉支付，固定金额选择修改', '已发布到正式', '2018-05-22 13:16:31', '2018-05-22 13:16:31');
INSERT INTO `tasks` VALUES (22, 1, '2018-05-25', '2018-05-25', '1', '100%', 'PP百万世界杯竞技竞标赛活动', '已发布正式', '2018-05-26 13:29:15', '2018-05-26 13:29:15');
INSERT INTO `tasks` VALUES (23, 1, '2018-05-26', '2018-05-26', '1', '100%', 'XIN哥百万之旅活动', '已发布正式', '2018-05-26 13:29:57', '2018-05-26 13:29:57');
INSERT INTO `tasks` VALUES (24, 1, '2018-05-26', '2018-05-26', '0.3', '100%', '最新中奖列表，修复游戏参数IsHtml5的值的bug', '已发布正式', '2018-05-26 13:32:44', '2018-05-26 13:33:37');
INSERT INTO `tasks` VALUES (25, 1, '2018-05-24', '2018-05-24', '1', '100%', 'yoplay页面改版', '已发布正式', '2018-05-26 13:33:25', '2018-05-26 13:33:25');
INSERT INTO `tasks` VALUES (26, 1, '2018-05-25', '2018-05-25', '0.5', '100%', '客服热线号码从API读取', '已发布到正式', '2018-05-26 14:52:53', '2018-05-26 14:52:53');
INSERT INTO `tasks` VALUES (27, 1, '2018-05-23', '2018-05-23', '1', '100%', '幸运注单增加AE，查询指南增加AE', '测试中', '2018-05-26 14:55:49', '2018-05-26 14:57:19');
INSERT INTO `tasks` VALUES (28, 1, '2018-05-23', '2018-05-23', '0.3', '100%', '静态资源路径修改', '已发布到正式', '2018-05-26 14:58:00', '2018-05-26 14:58:00');
INSERT INTO `tasks` VALUES (29, 1, '2018-05-24', '2018-05-24', '0.3', '100%', '各个活动介绍页增加AE', '测试中', '2018-05-26 14:59:07', '2018-05-26 14:59:07');
INSERT INTO `tasks` VALUES (30, 1, '2018-05-28', '2018-05-28', '0.3', '100%', 'AE平台增加试玩模块', '已发布测试', '2018-05-28 17:18:34', '2018-05-28 17:18:34');
INSERT INTO `tasks` VALUES (31, 1, '2018-05-28', '2018-05-28', '0.5', '100%', '存款页面，增加微信扫码二（YRPay），支付宝扫码（YRPay）恢复金额', '已发布正式', '2018-05-28 17:19:39', '2018-05-28 17:19:39');
INSERT INTO `tasks` VALUES (32, 1, '2018-05-28', '2018-05-28', '0.3', '100%', '下载页面，增加PP的PC客服端下载', '已发布到正式', '2018-05-28 17:20:24', '2018-05-28 17:20:24');
INSERT INTO `tasks` VALUES (33, 1, '2018-05-30', '2018-05-30', '0.5', '100%', '防劫持帮助页面', '已发布测试', '2018-05-31 11:30:32', '2018-05-31 11:30:32');
INSERT INTO `tasks` VALUES (34, 1, '2018-05-30', '2018-05-30', '0.3', '100%', '微信扫码二增加YFPa', '已发布到正式', '2018-05-31 11:31:17', '2018-05-31 11:31:17');
INSERT INTO `tasks` VALUES (35, 1, '2018-05-29', '2018-05-30', '1', '100%', '周年礼金和周勤好礼，自助领取改为系统发放', '已发布正式', '2018-05-31 11:31:48', '2018-05-31 11:31:48');
INSERT INTO `tasks` VALUES (36, 1, '2018-05-30', '2018-05-30', '0.5', '100%', '幸运注单选择平台，改成取接口数据', '已发布正式', '2018-05-31 11:32:42', '2018-05-31 11:32:42');
INSERT INTO `tasks` VALUES (37, 1, '2018-05-30', '2018-05-30', '0.5', '100%', '存款页面，存款方式排列整理', '已发布到正式', '2018-05-31 11:33:38', '2018-05-31 11:33:38');
INSERT INTO `tasks` VALUES (38, 1, '2018-05-29', '2018-05-29', '1', '100%', 'AE平台整理上线', '已发布正式', '2018-05-31 11:35:02', '2018-05-31 11:35:02');
INSERT INTO `tasks` VALUES (39, 1, '2018-06-01', '2018-06-01', '0.3', '100%', '特权页面增加特权七', '已经发布正式', '2018-06-02 10:38:35', '2018-06-02 14:53:20');
INSERT INTO `tasks` VALUES (40, 1, '2018-06-01', '2018-06-01', '0.3', '100%', '支付宝反扫演示图', '已发布到正式', '2018-06-02 10:39:07', '2018-06-02 10:39:07');
INSERT INTO `tasks` VALUES (41, 1, '2018-06-01', '2018-06-01', '1', '100%', '网站侧边栏和顶部栏改版', '已发布测试', '2018-06-02 10:39:59', '2018-06-02 10:39:59');
INSERT INTO `tasks` VALUES (42, 1, '2018-06-02', '2018-06-02', '0.5', '100%', '电游页面，AE增加奖池说明', '已发布测试', '2018-06-02 14:43:35', '2018-06-02 14:43:35');
INSERT INTO `tasks` VALUES (43, 1, '2018-06-04', '2018-06-04', '0.3', '100%', 'pp国际替换apk文件及更新相关下载路径', '已发布到正式', '2018-06-05 20:03:32', '2018-06-05 20:03:32');
INSERT INTO `tasks` VALUES (44, 1, '2018-06-04', '2018-06-04', '0.3', '100%', '增加AE红包活动介绍页', '已发布到正式', '2018-06-05 20:04:39', '2018-06-05 20:04:39');
INSERT INTO `tasks` VALUES (45, 1, '2018-06-05', '2018-06-05', '0.3', '100%', 'PT更新apk文件及路径', '已发布到正式', '2018-06-05 20:05:53', '2018-06-05 20:05:53');
INSERT INTO `tasks` VALUES (46, 1, '2018-06-05', '2018-06-05', '1', '100%', '周年礼金活动改版', '已发布到正式', '2018-06-05 20:06:38', '2018-06-05 20:06:38');
INSERT INTO `tasks` VALUES (47, 1, '2018-06-05', '2018-06-05', '0.3', '100%', '微信扫码 银蓉-RYPay 金额修改', '已发布到正式', '2018-06-05 20:07:45', '2018-06-05 20:07:45');
INSERT INTO `tasks` VALUES (48, 1, '2018-06-04', '2018-06-04', '0.5', '100%', '存款操作演示帮助', '已发布到正式', '2018-06-05 20:08:44', '2018-06-05 20:08:44');
INSERT INTO `tasks` VALUES (49, 1, '2018-06-06', '2018-06-07', '2', '100%', '协同Johnson一起开发，测试端午节活动', '已发布到正式', '2018-06-09 19:14:41', '2018-06-09 19:14:41');
INSERT INTO `tasks` VALUES (50, 1, '2018-06-08', '2018-06-08', '1', '100%', '波音体育活动页', '测试中', '2018-06-09 19:16:10', '2018-06-09 19:16:10');
INSERT INTO `tasks` VALUES (51, 1, '2018-06-08', '2018-06-08', '0.3', '100%', '存款页面，微信支付码 YLPay去掉条码', '已发布到正式', '2018-06-09 19:17:09', '2018-06-09 19:17:09');
INSERT INTO `tasks` VALUES (52, 1, '2018-06-09', '2018-06-09', '1', '100%', '内测 端午节活动，世界杯活动，并修改发布。', '已发布正式', '2018-06-09 19:18:49', '2018-06-09 19:18:49');
INSERT INTO `tasks` VALUES (53, 1, '2018-06-09', '2018-06-09', '1', '100%', '网站图片，文字更新', '已发布正式', '2018-06-09 19:19:50', '2018-06-09 19:19:50');

-- ----------------------------
-- Table structure for tokens
-- ----------------------------
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastTime` datetime(0) NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tokens
-- ----------------------------
INSERT INTO `tokens` VALUES (1, 1, 'nryafuuQKNLGc2LrvRsMKCSENRN4BUWErGy6UQAvqKhe6K2FouFWah9qhReNBEDn', '2018-06-09 11:19:50', '2018-05-17 03:48:12', '2018-06-09 19:19:50');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'kobe', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'nryafuuQKNLGc2LrvRsMKCSENRN4BUWErGy6UQAvqKhe6K2FouFWah9qhReNBEDn', '2018-05-08 15:34:34', '2018-06-09 19:10:28');

SET FOREIGN_KEY_CHECKS = 1;
