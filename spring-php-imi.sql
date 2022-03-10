SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for server_manager
-- ----------------------------
DROP TABLE IF EXISTS `server_manager`;
CREATE TABLE `server_manager`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `del_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '软删除 1为是 0为否',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'host地址',
  `port` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '端口',
  `protocol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '协议如 ws://  wss://  http://  https://  tcp://',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '健康监测地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `created_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `del_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '软删除 1为是 0为否',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `heart` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '心跳检测最终时间',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录的token',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `heart`(`heart`) USING BTREE
) ENGINE = InnoDB  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_session
-- ----------------------------
DROP TABLE IF EXISTS `user_session`;
CREATE TABLE `user_session`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `login_server` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录的服务器标识',
  `fd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'websocket编号',
  `created_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `del_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '软删除 1为是 0为否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
