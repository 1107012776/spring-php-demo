
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for server_manager
-- ----------------------------
DROP TABLE IF EXISTS `server_manager`;
CREATE TABLE `server_manager`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'host地址',
  `port` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '端口',
  `protocol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '协议如 ws://  wss://  http://  https://  tcp://',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '健康监测地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server_manager
-- ----------------------------
INSERT INTO `server_manager` VALUES (2, '0.0.0.0', '8399', 'ws://', '/Index/healthy');
INSERT INTO `server_manager` VALUES (4, '0.0.0.0', '8397', 'ws://', '/Index/healthy');
INSERT INTO `server_manager` VALUES (5, '0.0.0.0', '8398', 'ws://', '/Index/healthy');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `heart` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '心跳检测最终时间',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录的token',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `heart`(`heart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (115, 'static4550', '', '', 0, '');
INSERT INTO `user` VALUES (116, 'static4480', '', '', 0, '');
INSERT INTO `user` VALUES (117, 'static6964', '', '', 0, '');
INSERT INTO `user` VALUES (118, 'static9881', '', '', 0, '');
INSERT INTO `user` VALUES (119, 'static6247', '', '', 0, '');
INSERT INTO `user` VALUES (120, 'static9665', '', '', 0, '');
INSERT INTO `user` VALUES (121, 'static1738', '', '', 0, '');
INSERT INTO `user` VALUES (122, 'static3950', '', '', 0, '');
INSERT INTO `user` VALUES (123, 'static6484', '', '', 0, '');
INSERT INTO `user` VALUES (124, 'static1580', '', '', 0, '');
INSERT INTO `user` VALUES (125, 'static3133', '', '', 0, '');
INSERT INTO `user` VALUES (126, 'static5020', '', '', 0, '');
INSERT INTO `user` VALUES (127, 'static8568', '', '', 0, '');
INSERT INTO `user` VALUES (128, 'static1542', '', '', 0, '');
INSERT INTO `user` VALUES (129, 'static3775', '', '', 0, '');
INSERT INTO `user` VALUES (130, 'static5608', '', '', 0, '');
INSERT INTO `user` VALUES (131, 'static4572', '', '', 0, '');
INSERT INTO `user` VALUES (132, 'static3794', '', '', 0, '');
INSERT INTO `user` VALUES (133, 'static4910', '', '', 0, '');
INSERT INTO `user` VALUES (134, 'static2325', '', '', 0, '');
INSERT INTO `user` VALUES (135, 'static4956', '', '', 0, '');
INSERT INTO `user` VALUES (136, 'static7216', '', '', 0, '');
INSERT INTO `user` VALUES (137, 'static5964', '', '', 0, '');
INSERT INTO `user` VALUES (138, 'static1107', '', '', 0, '');
INSERT INTO `user` VALUES (139, 'static9936', '', '', 0, '');
INSERT INTO `user` VALUES (140, 'static6246', '', '', 0, '');
INSERT INTO `user` VALUES (141, 'static1065', '', '', 1646702750, '');

-- ----------------------------
-- Table structure for user_session
-- ----------------------------
DROP TABLE IF EXISTS `user_session`;
CREATE TABLE `user_session`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `login_server` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录的服务器标识',
  `fd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'websocket编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15993 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_session
-- ----------------------------
INSERT INTO `user_session` VALUES (70, 'static1437', 'c7dec8e09376bf8e859d022ac42037b66221d359d4903_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (71, 'static4626', 'c7dec8e09376bf8e859d022ac42037b66221d359d4903_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (78, 'static4626', '37c9bc66ebd3a2e455ee2a74feae4c0e6221d45f298bc_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (79, 'static1437', '37c9bc66ebd3a2e455ee2a74feae4c0e6221d45f298bc_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (96, 'static4626', '72e88ee102cc8afc75cbbb182cca93066221d7489127f_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (97, 'static1437', '72e88ee102cc8afc75cbbb182cca93066221d7489127f_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (98, 'static4626', '0f31cf4c07210e8d5460b43c17e117986221d7745988a_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (99, 'static1437', '0f31cf4c07210e8d5460b43c17e117986221d7745988a_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (100, 'static1437', '43351f7bf9a215be70c2c2caa75550026221d802c4ee5_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (101, 'static4626', '43351f7bf9a215be70c2c2caa75550026221d802c4ee5_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (105, 'static1437', '0e3e75d3095f3746ec2531e0bf543a5c6221d8f2d46ae_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (106, 'static4626', '0e3e75d3095f3746ec2531e0bf543a5c6221d8f2d46ae_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (107, 'static9881', '248eb1f330c4c4bfe26c51abda7ae68b6221d8f2d5b81_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (108, 'static6964', 'd46e6e59cb2e09d436f89c57efa237356221d8f2d6b59_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (115, 'static4626', 'ccb1d57d7fa17c6bec423ffcabba9cd66221db26c7fa3_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (116, 'static6964', '1731592aca5fb4d789c4119c65c10b4b6221db26bbe8c_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (117, 'static9881', '78f1893678afbeaa90b1fa01b9cfb8606221db26c4ce1_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (118, 'static1437', 'ccb1d57d7fa17c6bec423ffcabba9cd66221db26c7fa3_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (137, 'static6964', 'e98aebc54e5513e88b2014574d2092556221dc4969795_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (138, 'static9881', '2adee3823fe0b1c49ce2b4124cdcecda6221dc49648c1_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (139, 'static4626', '7068f5c7fb43d165180107a27beb60206221dc496a9f3_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (140, 'static1437', '7068f5c7fb43d165180107a27beb60206221dc496a9f3_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (145, 'static6964', '7cf65e31e39837a301b0173e2a0701aa6221dc9d7127b_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (146, 'static9881', 'ff3fd7838d15b73ab974060acc36e1466221dc9d71bfe_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (147, 'static4626', 'f326680a2755d99e5ea5185c1fcb1b196221dc9d7a4d2_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (154, 'static4480', 'f326680a2755d99e5ea5185c1fcb1b196221dc9d7a4d2_0.0.0.0:8399', '5');
INSERT INTO `user_session` VALUES (167, 'static4550', '70f250e2d762fbde8a2e70eabf6eb9536221de2b83e5a_0.0.0.0:8399', '10');
INSERT INTO `user_session` VALUES (204, 'static4550', 'db884574bea7de391188651592585c7e6221e070a4522_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (205, 'static4480', 'db884574bea7de391188651592585c7e6221e070a4522_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (206, 'static9881', 'e2ce1b07e23d3e34e4d8ab4d93a0b43c6221e070a36a6_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (207, 'static6964', '3dc2c2f6a6a75cba6bc726b4545e788c6221e0709a91e_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (208, 'static4550', 'c4b96e147d004941235298b2e5fb678f6221e0af38563_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (209, 'static4480', 'c4b96e147d004941235298b2e5fb678f6221e0af38563_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (210, 'static9881', 'ee30a32aa22e90e9af21101206b542486221e0af37bf6_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (211, 'static6964', 'e1ea274b18a0e5bde67da64ea20105626221e0af3779f_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (224, 'static6247', '186f8f4eba86cca7bdf06db31f155a156221e1d9953c4_0.0.0.0:8399', '7');
INSERT INTO `user_session` VALUES (238, 'static1738', 'a01714e27a8e1f5c5b9b72593d46e9d66221e2efbce87_0.0.0.0:8399', '13');
INSERT INTO `user_session` VALUES (242, 'static3950', 'a5a3663282ac29d27f5c633c87383cad6221e336bd9b3_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (243, 'static4480', 'a5a3663282ac29d27f5c633c87383cad6221e336bd9b3_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (244, 'static9881', '87b428922a688f8a0e4ace11a473f29a6221e336bd262_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (245, 'static6964', 'ac82475ce1c53851409225be1c3ffa8e6221e336ba762_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (253, 'static9881', '1cd3882394520876dc88d1472aa2a93f6221e3c551201_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (254, 'static4480', 'ebb71045453f38676c40deb9864f811d6221e3c553b12_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (255, 'static6964', 'ab541d874c7bc19ab77642849e02b89f6221e3c54cfd2_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (256, 'static6484', 'ebb71045453f38676c40deb9864f811d6221e3c553b12_0.0.0.0:8399', '3');
INSERT INTO `user_session` VALUES (257, 'static1580', 'ebb71045453f38676c40deb9864f811d6221e3c553b12_0.0.0.0:8399', '4');
INSERT INTO `user_session` VALUES (261, 'static3133', '62db9e3397c76207a687c360e02433176221e4306c0b5_0.0.0.0:8399', '1');
INSERT INTO `user_session` VALUES (262, 'static4480', '62db9e3397c76207a687c360e02433176221e4306c0b5_0.0.0.0:8399', '2');
INSERT INTO `user_session` VALUES (263, 'static6964', 'e564618b1a0f9a0e5b043f63d43fc0656221e4306cfbd_0.0.0.0:8397', '1');
INSERT INTO `user_session` VALUES (264, 'static9881', '03c874ab55baa3c1f835d108415fac446221e4306d789_0.0.0.0:8398', '1');
INSERT INTO `user_session` VALUES (265, 'static6484', '62db9e3397c76207a687c360e02433176221e4306c0b5_0.0.0.0:8399', '3');
INSERT INTO `user_session` VALUES (280, 'static4572', '6acb084470c0a8bdf431d5427d1f29bc6221e4691d527_0.0.0.0:8399', '12');
INSERT INTO `user_session` VALUES (281, 'static3794', '6acb084470c0a8bdf431d5427d1f29bc6221e4691d527_0.0.0.0:8399', '13');
INSERT INTO `user_session` VALUES (307, 'static2325', '6acb084470c0a8bdf431d5427d1f29bc6221e4691d527_0.0.0.0:8399', '23');
INSERT INTO `user_session` VALUES (2891, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '863');
INSERT INTO `user_session` VALUES (4036, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '1243');
INSERT INTO `user_session` VALUES (4362, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '1352');
INSERT INTO `user_session` VALUES (5535, '', '82cc164ceb375988c7ccc91b0b98c08c6221e61c8d64d_0.0.0.0:8397', '1744');
INSERT INTO `user_session` VALUES (6266, '', 'e1cb9ebefa419a866a655b1a74d4b0df6221e61c8ce4d_0.0.0.0:8398', '1984');
INSERT INTO `user_session` VALUES (6904, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '2198');
INSERT INTO `user_session` VALUES (7586, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '2426');
INSERT INTO `user_session` VALUES (8092, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '2594');
INSERT INTO `user_session` VALUES (8237, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '2643');
INSERT INTO `user_session` VALUES (9516, '', '82cc164ceb375988c7ccc91b0b98c08c6221e61c8d64d_0.0.0.0:8397', '3071');
INSERT INTO `user_session` VALUES (10208, '', 'e1cb9ebefa419a866a655b1a74d4b0df6221e61c8ce4d_0.0.0.0:8398', '3298');
INSERT INTO `user_session` VALUES (11147, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '3613');
INSERT INTO `user_session` VALUES (11519, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '3737');
INSERT INTO `user_session` VALUES (12173, '', 'e1cb9ebefa419a866a655b1a74d4b0df6221e61c8ce4d_0.0.0.0:8398', '3953');
INSERT INTO `user_session` VALUES (14775, '', '312e53ccba0b2ddfefd4a1f05b55bcdd6221e61c8d2f9_0.0.0.0:8399', '4822');
INSERT INTO `user_session` VALUES (15687, '', '82cc164ceb375988c7ccc91b0b98c08c6221e61c8d64d_0.0.0.0:8397', '5128');
INSERT INTO `user_session` VALUES (15986, 'static1065', '1e4d36177d71bbb3558e43af9577d70e6226b07bb3d2b_0.0.0.0:8397', '1');

SET FOREIGN_KEY_CHECKS = 1;
