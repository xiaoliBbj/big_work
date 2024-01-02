/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : dailyfresh_db

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add Goods', 7, 'add_goods');
INSERT INTO `auth_permission` VALUES (26, 'Can change Goods', 7, 'change_goods');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Goods', 7, 'delete_goods');
INSERT INTO `auth_permission` VALUES (28, 'Can view Goods', 7, 'view_goods');
INSERT INTO `auth_permission` VALUES (29, 'Can add Order', 8, 'add_order');
INSERT INTO `auth_permission` VALUES (30, 'Can change Order', 8, 'change_order');
INSERT INTO `auth_permission` VALUES (31, 'Can delete Order', 8, 'delete_order');
INSERT INTO `auth_permission` VALUES (32, 'Can view Order', 8, 'view_order');
INSERT INTO `auth_permission` VALUES (33, 'Can add User', 9, 'add_user');
INSERT INTO `auth_permission` VALUES (34, 'Can change User', 9, 'change_user');
INSERT INTO `auth_permission` VALUES (35, 'Can delete User', 9, 'delete_user');
INSERT INTO `auth_permission` VALUES (36, 'Can view User', 9, 'view_user');
INSERT INTO `auth_permission` VALUES (37, 'Can add UserBrowse', 10, 'add_userbrowse');
INSERT INTO `auth_permission` VALUES (38, 'Can change UserBrowse', 10, 'change_userbrowse');
INSERT INTO `auth_permission` VALUES (39, 'Can delete UserBrowse', 10, 'delete_userbrowse');
INSERT INTO `auth_permission` VALUES (40, 'Can view UserBrowse', 10, 'view_userbrowse');
INSERT INTO `auth_permission` VALUES (41, 'Can add UserAddr', 11, 'add_useraddr');
INSERT INTO `auth_permission` VALUES (42, 'Can change UserAddr', 11, 'change_useraddr');
INSERT INTO `auth_permission` VALUES (43, 'Can delete UserAddr', 11, 'delete_useraddr');
INSERT INTO `auth_permission` VALUES (44, 'Can view UserAddr', 11, 'view_useraddr');
INSERT INTO `auth_permission` VALUES (45, 'Can add OrderDetail', 12, 'add_orderdetail');
INSERT INTO `auth_permission` VALUES (46, 'Can change OrderDetail', 12, 'change_orderdetail');
INSERT INTO `auth_permission` VALUES (47, 'Can delete OrderDetail', 12, 'delete_orderdetail');
INSERT INTO `auth_permission` VALUES (48, 'Can view OrderDetail', 12, 'view_orderdetail');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'app', 'goods');
INSERT INTO `django_content_type` VALUES (8, 'app', 'order');
INSERT INTO `django_content_type` VALUES (12, 'app', 'orderdetail');
INSERT INTO `django_content_type` VALUES (9, 'app', 'user');
INSERT INTO `django_content_type` VALUES (11, 'app', 'useraddr');
INSERT INTO `django_content_type` VALUES (10, 'app', 'userbrowse');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-04 07:29:05.151087');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-04 07:29:05.868195');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-04 07:29:06.124549');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-04 07:29:06.133200');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-04 07:29:06.142015');
INSERT INTO `django_migrations` VALUES (6, 'app', '0001_initial', '2023-06-04 07:29:06.703761');
INSERT INTO `django_migrations` VALUES (7, 'app', '0002_alter_goods_create_time_alter_order_create_time_and_more', '2023-06-04 07:29:06.721470');
INSERT INTO `django_migrations` VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2023-06-04 07:29:06.797892');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2023-06-04 07:29:06.883551');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0003_alter_user_email_max_length', '2023-06-04 07:29:06.965097');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0004_alter_user_username_opts', '2023-06-04 07:29:06.976149');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0005_alter_user_last_login_null', '2023-06-04 07:29:07.037294');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0006_require_contenttypes_0002', '2023-06-04 07:29:07.043896');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2023-06-04 07:29:07.054200');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0008_alter_user_username_max_length', '2023-06-04 07:29:07.073706');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2023-06-04 07:29:07.093700');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0010_alter_group_name_max_length', '2023-06-04 07:29:07.169703');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0011_update_proxy_permissions', '2023-06-04 07:29:07.180286');
INSERT INTO `django_migrations` VALUES (19, 'auth', '0012_alter_user_first_name_max_length', '2023-06-04 07:29:07.200758');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2023-06-04 07:29:07.251286');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('4ea02dhujpjduxokabhzpl7vg9scbqqm', 'eyJ1c2VybmFtZSI6Ilx1NWYyMFx1NGUwOSIsInVzZXJpZCI6Miwicm9sZSI6Mn0:1q5rkE:I4ABytXWAYK6rTtF-lqFGw4Z-Id0XCtpGEQq2SxRQKg', '2023-06-18 17:42:22.017577');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `write_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES (1, 'B042', '车厘子', 21.8, 10, '/goods/goods001.jpg', 'model01', '500g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 13, '2023-06-04 16:27:47.167543', '2023-06-04 16:27:47.167543');
INSERT INTO `t_goods` VALUES (2, 'B053', '牛心', 88, 4, '/goods/goods002.jpg', 'model01', '1000g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 4, '2023-06-04 16:10:44.229912', '2023-06-04 16:10:44.229912');
INSERT INTO `t_goods` VALUES (3, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods003.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 5, '2023-06-03 09:36:56.000000', '2023-06-04 14:20:28.239960');
INSERT INTO `t_goods` VALUES (4, 'R343', '黑猪瘦肉', 19.8, 99, '/goods/goods004.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 2, '2023-06-03 09:36:56.000000', '2023-06-04 15:05:20.403492');
INSERT INTO `t_goods` VALUES (5, 'FW0383244', '麻辣牛肉干', 9.9, 90, '/goods/goods005.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (6, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods006.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (7, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods007.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (8, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods008.jpg', 'model01', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (9, 'XJ0002', '家用针线盒套装', 70, 99, '/goods/goods009.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 7, '2023-06-04 16:33:12.610080', '2023-06-04 16:33:12.610080');
INSERT INTO `t_goods` VALUES (10, 'XJ0002', '家用缝纫线', 39, 99, '/goods/goods010.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 3, '2023-06-03 09:36:56.000000', '2023-06-04 15:44:33.155909');
INSERT INTO `t_goods` VALUES (11, 'XJ0002', '日本针线盒针线包', 29.9, 99, '/goods/goods011.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 5, '2023-06-04 16:33:14.180321', '2023-06-04 16:33:14.180321');
INSERT INTO `t_goods` VALUES (12, 'XJ0002', 'HLA海澜之家短袖T恤男', 78, 99, '/goods/goods012.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 1, '2023-06-03 09:36:56.000000', '2023-06-04 14:06:27.493244');
INSERT INTO `t_goods` VALUES (13, 'XJ0002', '海南香蕉1', 2.98, 99, '/goods/goods013.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (14, 'XJ0002', '海南香2', 2.98, 99, '/goods/goods014.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (15, 'XJ0002', '海南香蕉3', 2.98, 99, '/goods/goods015.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (16, 'XJ0002', '海南香蕉4', 2.98, 99, '/goods/goods016.jpg', 'model02', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (17, 'XJ0002', '迷你有牙尖嘴钳', 9.5, 99, '/goods/goods017.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 6, '2023-06-03 09:36:56.000000', '2023-06-04 15:10:23.538244');
INSERT INTO `t_goods` VALUES (18, 'XJ0002', '钢卷尺家用小尺子', 9.9, 99, '/goods/goods018.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 12, '2023-06-04 16:35:30.743108', '2023-06-04 16:35:30.743108');
INSERT INTO `t_goods` VALUES (19, 'XJ0002', '家用手电钻工具箱套装', 145, 99, '/goods/goods019.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 6, '2023-06-04 17:31:42.207590', '2023-06-04 17:31:42.207590');
INSERT INTO `t_goods` VALUES (20, 'XJ0002', '保联（BAOLIAN）螺丝刀', 3.9, 99, '/goods/goods020.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (21, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods021.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (22, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods022.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (23, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods023.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (24, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods024.jpg', 'model03', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (25, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods025.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (26, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods026.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (27, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods027.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (28, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods028.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (29, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods029.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (30, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods030.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (31, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods031.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (32, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods032.jpg', 'model04', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (33, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods033.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 2, '2023-06-03 09:36:56.000000', '2023-06-04 15:34:25.200478');
INSERT INTO `t_goods` VALUES (34, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods034.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (35, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods035.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (36, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods036.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (37, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods037.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 1, '2023-06-04 15:47:30.815741', '2023-06-04 15:47:30.815741');
INSERT INTO `t_goods` VALUES (38, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods038.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (39, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods039.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (40, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods040.jpg', 'model05', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (41, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods041.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (42, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods042.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (43, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods043.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (44, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods044.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (45, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods045.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (46, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods046.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (47, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods047.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');
INSERT INTO `t_goods` VALUES (48, 'XJ0002', '海南香蕉', 2.98, 99, '/goods/goods048.jpg', 'model06', '300g', '草莓浆果柔软多汁，味美爽口，适合速冻保鲜贮藏。草莓速冻后，可以保持原有的色、香、味，既便于贮藏，又便于外销。', '草莓采摘园位于北京大兴区 庞各庄镇四各庄村 ，每年1月-6月面向北京以及周围城市提供新鲜草莓采摘和精品礼盒装草莓，草莓品种多样丰富，个大香甜。所有草莓均严格按照有机标准培育，不使用任何化肥和农药。草莓在采摘期间免洗可以直接食用。欢迎喜欢草莓的市民前来采摘，也欢迎各大单位选购精品有机草莓礼盒，有机草莓礼盒是亲朋馈赠、福利送礼的最佳选择。', 0, '2023-06-03 09:36:56.000000', '2023-06-03 09:36:56.000000');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_amount` int(11) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `pay_amount` int(11) NOT NULL,
  `pay_time` datetime(6) NOT NULL,
  `pay_mode` int(11) NOT NULL,
  `pay_status` int(11) NOT NULL,
  `receive_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_addr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `write_time` datetime(6) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_order_user_id_0f395ad8_fk_t_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_user_id_0f395ad8_fk_t_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '2092223422', 176, 0, 176, '2023-06-04 17:37:35.000000', 1, 1, '张老师', '13099988765', '深圳市坪山区学校', '132232', '2023-06-04 17:38:13.000000', '2023-06-04 17:38:15.000000', 2);
INSERT INTO `t_order` VALUES (2, '1685887299', 99, 0, 111, '2023-06-04 14:01:39.000000', 1, 1, '赵老师', '12048724432', '的大V发布洒洒大V发布上传', '333222', '2023-06-04 14:01:27.569841', '2023-06-04 14:01:41.046647', 2);
INSERT INTO `t_order` VALUES (3, '1685887597', 156, 0, 168, '2023-06-04 14:06:37.000000', 1, 1, '赵老师', '12048724432', '的大V发布洒洒大V发布上传', '333222', '2023-06-04 14:04:12.335388', '2023-06-04 14:06:37.224961', 2);
INSERT INTO `t_order` VALUES (4, '1685890876', 89, 0, 101, '2023-06-04 15:01:16.000000', 1, 1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 15:00:31.564484', '2023-06-04 15:01:16.599906', 2);
INSERT INTO `t_order` VALUES (5, '1685892819', 136, 0, 148, '2023-06-04 15:33:39.000000', 1, 1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 15:33:35.307002', '2023-06-04 15:33:39.844023', 2);
INSERT INTO `t_order` VALUES (6, '1685892891', 574, 0, 586, '2023-06-04 15:34:51.000000', 1, 1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 15:33:35.307002', '2023-06-04 15:34:51.099481', 2);
INSERT INTO `t_order` VALUES (7, '1685893477', 78, 0, 90, '2023-06-04 15:44:37.000000', 1, 1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 15:33:35.307002', '2023-06-04 15:44:37.575942', 2);
INSERT INTO `t_order` VALUES (8, '1685893653', 2, 0, 14, '2023-06-04 15:47:33.000000', 1, 1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 15:47:33.317282', '2023-06-04 15:47:33.317282', 2);

-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_num` int(11) NOT NULL,
  `goods_price` double NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_order_detail_goods_id_fedfbafb_fk_t_goods_id`(`goods_id`) USING BTREE,
  INDEX `t_order_detail_order_id_5260519c_fk_t_order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_order_detail_goods_id_fedfbafb_fk_t_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `t_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_order_detail_order_id_5260519c_fk_t_order_id` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------
INSERT INTO `t_order_detail` VALUES (1, 2, 88, 2, 1);
INSERT INTO `t_order_detail` VALUES (2, 10, 9.9, 18, 2);
INSERT INTO `t_order_detail` VALUES (3, 2, 78, 12, 3);
INSERT INTO `t_order_detail` VALUES (4, 3, 29.9, 11, 4);
INSERT INTO `t_order_detail` VALUES (5, 2, 19.8, 4, 5);
INSERT INTO `t_order_detail` VALUES (6, 2, 39, 10, 5);
INSERT INTO `t_order_detail` VALUES (7, 2, 9.5, 17, 5);
INSERT INTO `t_order_detail` VALUES (8, 8, 70, 9, 6);
INSERT INTO `t_order_detail` VALUES (9, 5, 2.98, 33, 6);
INSERT INTO `t_order_detail` VALUES (10, 2, 39, 10, 7);
INSERT INTO `t_order_detail` VALUES (11, 1, 2.98, 37, 8);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `write_time` datetime(6) NULL DEFAULT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin@qq.com', '2023-06-04 15:31:14.000000', NULL, NULL);
INSERT INTO `t_user` VALUES (2, '张三', '96e79218965eb72c92a549dd5a330112', 2, 'zhangsan@qq.com', '2023-06-04 17:42:22.005608', '2023-06-04 17:42:22.005608', '2023-06-04 17:42:22.005608');

-- ----------------------------
-- Table structure for t_user_addr
-- ----------------------------
DROP TABLE IF EXISTS `t_user_addr`;
CREATE TABLE `t_user_addr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_addr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `write_time` datetime(6) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_user_addr_user_id_7768e583_fk_t_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_user_addr_user_id_7768e583_fk_t_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_addr
-- ----------------------------
INSERT INTO `t_user_addr` VALUES (1, '张三风', '13098760982', '深圳市坪山区大东城2期东门', '847213', '2023-06-04 09:28:56.676089', '2023-06-04 14:59:33.448548', 2);

-- ----------------------------
-- Table structure for t_user_browse
-- ----------------------------
DROP TABLE IF EXISTS `t_user_browse`;
CREATE TABLE `t_user_browse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browse_time` datetime(6) NULL DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_user_browse_goods_id_3d6f1e53_fk_t_goods_id`(`goods_id`) USING BTREE,
  INDEX `t_user_browse_user_id_af832489_fk_t_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_user_browse_goods_id_3d6f1e53_fk_t_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `t_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_user_browse_user_id_af832489_fk_t_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_browse
-- ----------------------------
INSERT INTO `t_user_browse` VALUES (1, '2023-06-04 16:10:44.000000', 2, 2);
INSERT INTO `t_user_browse` VALUES (2, '2023-06-04 17:31:42.000000', 19, 2);
INSERT INTO `t_user_browse` VALUES (3, '2023-06-04 16:35:30.000000', 18, 2);
INSERT INTO `t_user_browse` VALUES (4, '2023-06-04 15:10:23.000000', 17, 2);
INSERT INTO `t_user_browse` VALUES (5, '2023-06-04 15:34:25.000000', 33, 2);
INSERT INTO `t_user_browse` VALUES (6, '2023-06-04 14:06:27.000000', 12, 2);
INSERT INTO `t_user_browse` VALUES (7, '2023-06-04 16:27:47.000000', 1, 2);
INSERT INTO `t_user_browse` VALUES (8, '2023-06-04 14:20:28.000000', 3, 2);
INSERT INTO `t_user_browse` VALUES (9, '2023-06-04 15:05:20.000000', 4, 2);
INSERT INTO `t_user_browse` VALUES (10, '2023-06-04 15:44:33.000000', 10, 2);
INSERT INTO `t_user_browse` VALUES (11, '2023-06-04 16:33:12.000000', 9, 2);
INSERT INTO `t_user_browse` VALUES (12, '2023-06-04 16:33:14.000000', 11, 2);
INSERT INTO `t_user_browse` VALUES (13, '2023-06-04 15:47:30.000000', 37, 2);

SET FOREIGN_KEY_CHECKS = 1;
