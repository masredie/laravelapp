/*
 Navicat Premium Data Transfer

 Source Server         : Localhost 3306 Laragon
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : db_laravelapp

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 25/01/2022 09:00:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hobi
-- ----------------------------
DROP TABLE IF EXISTS `hobi`;
CREATE TABLE `hobi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_hobi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hobi
-- ----------------------------
INSERT INTO `hobi` VALUES (1, 'Coding Web', '2016-04-12 15:14:45', '2022-01-25 01:10:20');
INSERT INTO `hobi` VALUES (2, 'Hiking', '2016-04-12 15:14:54', '2016-04-12 15:14:54');
INSERT INTO `hobi` VALUES (3, 'Backpacking', '2016-04-12 15:15:12', '2016-04-12 15:15:12');
INSERT INTO `hobi` VALUES (4, 'Gaming', '2016-04-12 15:15:20', '2016-04-12 15:15:20');

-- ----------------------------
-- Table structure for hobi_siswa
-- ----------------------------
DROP TABLE IF EXISTS `hobi_siswa`;
CREATE TABLE `hobi_siswa`  (
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_hobi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`, `id_hobi`) USING BTREE,
  INDEX `hobi_siswa_id_siswa_index`(`id_siswa`) USING BTREE,
  INDEX `hobi_siswa_id_hobi_index`(`id_hobi`) USING BTREE,
  CONSTRAINT `hobi_siswa_id_hobi_foreign` FOREIGN KEY (`id_hobi`) REFERENCES `hobi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hobi_siswa_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hobi_siswa
-- ----------------------------
INSERT INTO `hobi_siswa` VALUES (2, 1, '2016-04-12 15:16:53', '2016-04-12 15:16:53');
INSERT INTO `hobi_siswa` VALUES (2, 3, '2016-04-12 15:16:53', '2016-04-12 15:16:53');
INSERT INTO `hobi_siswa` VALUES (3, 1, '2016-04-12 15:18:10', '2016-04-12 15:18:10');
INSERT INTO `hobi_siswa` VALUES (3, 4, '2016-04-12 15:18:10', '2016-04-12 15:18:10');
INSERT INTO `hobi_siswa` VALUES (4, 1, '2016-04-12 15:19:12', '2016-04-12 15:19:12');
INSERT INTO `hobi_siswa` VALUES (5, 4, '2016-04-12 15:21:36', '2016-04-12 15:21:36');
INSERT INTO `hobi_siswa` VALUES (6, 1, '2016-04-12 15:22:27', '2016-04-12 15:22:27');
INSERT INTO `hobi_siswa` VALUES (7, 1, '2016-04-12 15:23:25', '2016-04-12 15:23:25');
INSERT INTO `hobi_siswa` VALUES (7, 3, '2016-04-12 15:23:25', '2016-04-12 15:23:25');
INSERT INTO `hobi_siswa` VALUES (8, 1, '2016-04-12 15:24:24', '2016-04-12 15:24:24');
INSERT INTO `hobi_siswa` VALUES (9, 1, '2016-04-12 15:25:16', '2016-04-12 15:25:16');
INSERT INTO `hobi_siswa` VALUES (10, 1, '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `hobi_siswa` VALUES (10, 2, '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `hobi_siswa` VALUES (10, 3, '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `hobi_siswa` VALUES (10, 4, '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `hobi_siswa` VALUES (11, 1, '2016-04-12 15:27:39', '2016-04-12 15:27:39');
INSERT INTO `hobi_siswa` VALUES (11, 2, '2016-04-12 15:27:39', '2016-04-12 15:27:39');
INSERT INTO `hobi_siswa` VALUES (12, 1, '2016-04-12 15:28:41', '2016-04-12 15:28:41');
INSERT INTO `hobi_siswa` VALUES (12, 3, '2016-04-12 15:28:41', '2016-04-12 15:28:41');
INSERT INTO `hobi_siswa` VALUES (12, 4, '2016-04-12 15:28:41', '2016-04-12 15:28:41');
INSERT INTO `hobi_siswa` VALUES (13, 1, '2016-04-12 15:31:39', '2016-04-12 15:31:39');
INSERT INTO `hobi_siswa` VALUES (13, 4, '2016-04-12 15:31:39', '2016-04-12 15:31:39');
INSERT INTO `hobi_siswa` VALUES (14, 1, '2016-04-12 15:32:24', '2016-04-12 15:32:24');

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 'X - 1', '2016-04-08 22:26:06', '2016-04-08 22:26:06');
INSERT INTO `kelas` VALUES (2, 'X - 2', '2016-04-08 22:26:12', '2016-04-08 22:26:12');
INSERT INTO `kelas` VALUES (3, 'XI - 1', '2016-04-12 15:14:01', '2016-04-12 15:14:01');
INSERT INTO `kelas` VALUES (4, 'XI - 2', '2016-04-12 15:14:10', '2016-04-12 15:14:10');
INSERT INTO `kelas` VALUES (5, 'XII - 1', '2016-04-12 15:14:23', '2016-04-12 15:14:23');
INSERT INTO `kelas` VALUES (6, 'XII - 2', '2016-04-12 15:14:32', '2016-04-12 15:14:32');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES ('2016_03_10_095337_create_table_siswa', 1);
INSERT INTO `migrations` VALUES ('2016_03_27_065354_create_table_telepon', 1);
INSERT INTO `migrations` VALUES ('2016_03_28_112346_create_table_kelas', 1);
INSERT INTO `migrations` VALUES ('2016_03_29_134310_create_table_hobi', 1);
INSERT INTO `migrations` VALUES ('2016_03_29_135057_create_table_hobi_siswa', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE,
  INDEX `password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nisn` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama_siswa` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `siswa_nisn_unique`(`nisn`) USING BTREE,
  INDEX `siswa_id_kelas_foreign`(`id_kelas`) USING BTREE,
  CONSTRAINT `siswa_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (2, '1001', 'tim berners lee', '1955-06-08', 'L', 1, '20160412151652.jpg', '2016-04-12 15:16:52', '2016-04-12 15:16:52');
INSERT INTO `siswa` VALUES (3, '1002', 'john resig', '1984-05-08', 'L', 2, '20160412151810.jpg', '2016-04-12 15:18:10', '2016-04-12 15:18:10');
INSERT INTO `siswa` VALUES (4, '1003', 'donald knuth', '1938-01-10', 'L', 4, '20160412151912.jpg', '2016-04-12 15:19:12', '2016-04-12 15:19:12');
INSERT INTO `siswa` VALUES (5, '1004', 'jeffrey zeldman', '1955-01-12', 'L', 6, '20160412152136.jpg', '2016-04-12 15:21:36', '2016-04-12 15:21:36');
INSERT INTO `siswa` VALUES (6, '1005', 'yukihiro matsumoto', '1965-04-14', 'L', 4, '20160412152227.jpg', '2016-04-12 15:22:27', '2016-04-12 15:22:27');
INSERT INTO `siswa` VALUES (7, '1006', 'richard stallman', '1953-03-16', 'L', 1, '20160412152325.jpg', '2016-04-12 15:23:25', '2016-04-12 15:23:25');
INSERT INTO `siswa` VALUES (8, '1007', 'rasmus lerdorf', '1968-11-22', 'L', 2, '20160412152424.jpg', '2016-04-12 15:24:24', '2016-04-12 15:24:24');
INSERT INTO `siswa` VALUES (9, '1008', 'linus torvalds', '1969-12-28', 'L', 4, '20160412152516.jpg', '2016-04-12 15:25:16', '2016-04-12 15:25:16');
INSERT INTO `siswa` VALUES (10, '1009', 'brendan eich', '1961-01-01', 'L', 3, '20160412152622.jpg', '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `siswa` VALUES (11, '1010', 'hakon wium lie', '1965-06-12', 'L', 5, '20160412152739.jpg', '2016-04-12 15:27:39', '2016-04-12 15:27:39');
INSERT INTO `siswa` VALUES (12, '1011', 'jacob thornton', '1980-01-01', 'L', 3, '20160412152841.jpg', '2016-04-12 15:28:41', '2016-04-12 15:28:41');
INSERT INTO `siswa` VALUES (13, '1012', 'mark otto', '1983-08-15', 'L', 2, '20160412153139.jpg', '2016-04-12 15:31:39', '2016-04-12 15:31:39');
INSERT INTO `siswa` VALUES (14, '1013', 'taylor otwell', '1970-01-01', 'L', 6, '20160412153224.jpg', '2016-04-12 15:32:24', '2016-04-12 15:32:24');

-- ----------------------------
-- Table structure for telepon
-- ----------------------------
DROP TABLE IF EXISTS `telepon`;
CREATE TABLE `telepon`  (
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE,
  UNIQUE INDEX `telepon_nomor_telepon_unique`(`nomor_telepon`) USING BTREE,
  CONSTRAINT `telepon_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of telepon
-- ----------------------------
INSERT INTO `telepon` VALUES (2, '1234567890111', '2016-04-12 15:16:52', '2016-04-12 15:16:52');
INSERT INTO `telepon` VALUES (3, '1234567890222', '2016-04-12 15:18:10', '2016-04-12 15:18:10');
INSERT INTO `telepon` VALUES (4, '1234567890333', '2016-04-12 15:19:12', '2016-04-12 15:19:12');
INSERT INTO `telepon` VALUES (5, '1234567890444', '2016-04-12 15:21:36', '2016-04-12 15:21:36');
INSERT INTO `telepon` VALUES (6, '1234567890555', '2016-04-12 15:22:27', '2016-04-12 15:22:27');
INSERT INTO `telepon` VALUES (7, '1234567890666', '2016-04-12 15:23:25', '2016-04-12 15:23:25');
INSERT INTO `telepon` VALUES (8, '1234567890777', '2016-04-12 15:24:24', '2016-04-12 15:24:24');
INSERT INTO `telepon` VALUES (9, '1234567890888', '2016-04-12 15:25:16', '2016-04-12 15:25:16');
INSERT INTO `telepon` VALUES (10, '1234567890999', '2016-04-12 15:26:22', '2016-04-12 15:26:22');
INSERT INTO `telepon` VALUES (11, '1234567890010', '2016-04-12 15:27:39', '2016-04-12 15:27:39');
INSERT INTO `telepon` VALUES (12, '1234567890011', '2016-04-12 15:28:41', '2016-04-12 15:28:41');
INSERT INTO `telepon` VALUES (13, '1234567890012', '2016-04-12 15:31:39', '2016-04-12 15:31:39');
INSERT INTO `telepon` VALUES (14, '1234567890013', '2016-04-12 15:32:24', '2016-04-12 15:32:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `level` enum('admin','operator') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'Administrator', 'admin@laravelapp.dev', '$2y$10$CyuOq4RM8HL1t8saFJBYcePUxvY7tNB6ePFz2m1hDU9N3ty6aU5Jm', 'gqLTTvs96lpp4UB5HixZGrZ1AcpGL4hUnLIHznGUqGrM81PQnRcdWXaZblLk', 'admin', '2016-04-08 18:55:21', '2022-01-25 01:41:12');
INSERT INTO `users` VALUES (4, 'Operator', 'operator@laravelapp.dev', '$2y$10$LV5V89dm30osKtmoz7tKWOScl.LrmR9MrUvy1BZIk8/rVPKUnX7ae', 'UIznLk6tYiCYv4Z6iWqTetZA9xvuEyQmFoMgQHTIgs4W8WTkRfKHulCNz6Mt', 'operator', '2016-04-08 19:29:28', '2016-04-12 15:34:55');
INSERT INTO `users` VALUES (13, 'Taylor Otwell', 'taylor@laravelapp.dev', '$2y$10$7dR.5HNJmPd0..7fOKfWpuG/Yv1RFCENwuyixyjenArYMSK/hROq.', 't5x5g4HdV3XTwJOsvBIU8IZYDA2xHQKO0YrSpiHxHeh7MzLvGxoEIfcoN8t9', 'operator', '2016-04-09 23:04:25', '2016-04-11 16:21:34');
INSERT INTO `users` VALUES (16, 'Arya', 'arya@gmail.com', '$2y$10$IYck3QJfAKhAB4kChvCc9eOXnyWOf1nHd6L0wr/hm.zuhDN5bZF5S', 'jsNrQFUb6N7vImQPHCkVrfrYPRZsYirCFE9QPKqWXCXWdO9oXq7mpmmXj0ju', 'operator', '2022-01-25 01:12:39', '2022-01-25 01:49:58');

SET FOREIGN_KEY_CHECKS = 1;
