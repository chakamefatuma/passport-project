/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : api

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-11 16:14:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_07_01_103302_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000001_create_oauth_auth_codes_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000002_create_oauth_access_tokens_table', '2');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000003_create_oauth_refresh_tokens_table', '2');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000004_create_oauth_clients_table', '2');
INSERT INTO `migrations` VALUES ('8', '2016_06_01_000005_create_oauth_personal_access_clients_table', '2');
INSERT INTO `migrations` VALUES ('9', '2019_07_09_072316_create_products_table', '3');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('0c5e19ce5ab861a2ae1011da853b37dc9bb70d541b49f6667d2d531fd6338dde060b9bbdaed1ca36', '2', '2', null, '[]', '0', '2019-07-10 10:20:35', '2019-07-10 10:20:35', '2020-07-10 10:20:35');
INSERT INTO `oauth_access_tokens` VALUES ('0d8ea3dad2fc2c18c4cbcef522129e19959922733f37b081fbf1e757221d5ef93721b7e09a0200a3', '2', '2', null, '[]', '0', '2019-07-10 10:08:07', '2019-07-10 10:08:07', '2020-07-10 10:08:07');
INSERT INTO `oauth_access_tokens` VALUES ('1597f35f8a25fcef1e0972d0985a0e373c60eac4a319ae9d08adbe7d77f8be844f348840ca2702c6', '2', '2', null, '[]', '0', '2019-07-10 09:42:57', '2019-07-10 09:42:57', '2020-07-10 09:42:57');
INSERT INTO `oauth_access_tokens` VALUES ('15bae1ed4f10190b6eecc0eb685b7e9182ba4123ec6e07b0a8b9a2dd5f7c10a24bb8a9d24998be62', '2', '1', 'MyApp', '[]', '0', '2019-07-09 10:35:33', '2019-07-09 10:35:33', '2020-07-09 10:35:33');
INSERT INTO `oauth_access_tokens` VALUES ('16fccddc6d3f78b0903e2d80da02e2093721b60f847b1fdffd73b35ebb8db78da97e8bfca355e5d0', '2', '2', null, '[]', '0', '2019-07-10 05:10:16', '2019-07-10 05:10:16', '2020-07-10 05:10:16');
INSERT INTO `oauth_access_tokens` VALUES ('2280666893572f03d1ac37721dc0cee2ed13a14e1315c718fe82dbea7c58c7d44b73a7a41a5017c7', '2', '2', null, '[]', '0', '2019-07-10 08:47:58', '2019-07-10 08:47:58', '2020-07-10 08:47:58');
INSERT INTO `oauth_access_tokens` VALUES ('40285d23a6be35ea24be389983ebfb935658713420a3315065e2cae5a2af364cfce4294b74478596', '2', '2', null, '[]', '0', '2019-07-10 11:14:20', '2019-07-10 11:14:20', '2020-07-10 11:14:20');
INSERT INTO `oauth_access_tokens` VALUES ('4d480948c1ce646d64dcb64c4a4ce8d93477776268d712da4ce87c245d1df3e0a21602b9322b2d94', '2', '2', null, '[]', '0', '2019-07-10 10:22:42', '2019-07-10 10:22:42', '2020-07-10 10:22:42');
INSERT INTO `oauth_access_tokens` VALUES ('5421f351f4756a48ced0060e538d8840cf7b7230ba5da935e7ff5807d5b612ea9245bae5c22fc3fb', '2', '2', null, '[]', '0', '2019-07-10 05:01:13', '2019-07-10 05:01:13', '2020-07-10 05:01:13');
INSERT INTO `oauth_access_tokens` VALUES ('5bc94671d4e070bf261705f853c6a80aefeb06f3151bdf802eb8e4d4ce5e2dd2e24cf7f77257dc5a', '2', '2', null, '[]', '0', '2019-07-09 10:37:43', '2019-07-09 10:37:43', '2020-07-09 10:37:43');
INSERT INTO `oauth_access_tokens` VALUES ('5c0fb95eb978f66a1d814e07e6bcb42202a5c638f1ef39944c4b45ceffcb6775cc6ef851df06aba1', '2', '2', null, '[]', '0', '2019-07-10 08:06:41', '2019-07-10 08:06:41', '2020-07-10 08:06:41');
INSERT INTO `oauth_access_tokens` VALUES ('6387815fe2463f0149a00ec7e4aa28d45262177e712f4636841632325bcd17b6064f20503ce249bc', '2', '2', null, '[]', '0', '2019-07-10 09:23:08', '2019-07-10 09:23:08', '2020-07-10 09:23:08');
INSERT INTO `oauth_access_tokens` VALUES ('6b643cdb0bc61aae917abc39a2b6a44ee220bcb06d1e65ec63f2be6aa5e51e032c29d254281008f4', '2', '2', null, '[]', '0', '2019-07-10 07:10:02', '2019-07-10 07:10:02', '2020-07-10 07:10:02');
INSERT INTO `oauth_access_tokens` VALUES ('74404d0832bd0e8c8a01932970cd4ff758a1592cd6b3df097f683002d8b0cf0a86ed207bdf9fd0e5', '2', '2', null, '[]', '0', '2019-07-10 07:42:05', '2019-07-10 07:42:05', '2020-07-10 07:42:05');
INSERT INTO `oauth_access_tokens` VALUES ('8d37cace16b6f8a7a3b7af4f080dae566963d20a114a084aae10553498141e1791584bc87ec52b98', '2', '2', null, '[]', '0', '2019-07-10 08:06:04', '2019-07-10 08:06:04', '2020-07-10 08:06:04');
INSERT INTO `oauth_access_tokens` VALUES ('928d566243bd02fd9083e4d58f4d504e9231ecc4b983a4bddf99c12e5e687f73329d7117caa09343', '2', '2', null, '[]', '0', '2019-07-10 09:41:48', '2019-07-10 09:41:48', '2020-07-10 09:41:48');
INSERT INTO `oauth_access_tokens` VALUES ('9c6eeb3cb1840c17ede59bb361ef28daded9f228bf78efc459b1346113e38d57604ff526450b758a', '2', '2', null, '[]', '0', '2019-07-10 10:27:05', '2019-07-10 10:27:05', '2020-07-10 10:27:05');
INSERT INTO `oauth_access_tokens` VALUES ('abe89e0242544ef4c312eb6f2b1aee77775bd203cf0c5fdd410bbc5dffa6b28c420fdb68d5ebfec0', '2', '2', null, '[]', '0', '2019-07-10 11:13:53', '2019-07-10 11:13:53', '2020-07-10 11:13:53');
INSERT INTO `oauth_access_tokens` VALUES ('ad233dfa054490105c3de36f1086da5d0530fe5b674415f0e1eb1f3cc18d325a9f36bfc9113c8c02', '2', '2', null, '[]', '0', '2019-07-10 09:42:46', '2019-07-10 09:42:46', '2020-07-10 09:42:46');
INSERT INTO `oauth_access_tokens` VALUES ('b64b774b35001b9fefcccdc4a847fce1848d715a7a113177bf733adaf94e06ca9d16d79552387160', '2', '2', null, '[]', '0', '2019-07-10 10:04:18', '2019-07-10 10:04:18', '2020-07-10 10:04:18');
INSERT INTO `oauth_access_tokens` VALUES ('b6709cedf6e87ae7e84e1debad6f31f4bbe6d059402165c360bf9ffe38d9bc5446e4ef8ce5158068', '2', '2', null, '[]', '0', '2019-07-10 08:52:04', '2019-07-10 08:52:04', '2020-07-10 08:52:04');
INSERT INTO `oauth_access_tokens` VALUES ('b850bdd0d45d25e01ae667f6362bbd0f8d71e88f97bbba8c63e75715061547e619e3485144ec9c05', '2', '2', null, '[]', '0', '2019-07-10 08:22:50', '2019-07-10 08:22:50', '2020-07-10 08:22:50');
INSERT INTO `oauth_access_tokens` VALUES ('baee2b9e3a84ecede8663818a7e2fab452e435f652c8a8d78f824adaae2ec561a81a5078f859d3b3', '2', '2', null, '[]', '0', '2019-07-10 07:59:56', '2019-07-10 07:59:56', '2020-07-10 07:59:56');
INSERT INTO `oauth_access_tokens` VALUES ('c7ecf499d8a79b0f0f4beeafe6705623c5e04504998089b8b9386b837091a2b95d3ea7d0890e1232', '2', '2', null, '[]', '0', '2019-07-10 02:18:48', '2019-07-10 02:18:48', '2020-07-10 02:18:48');
INSERT INTO `oauth_access_tokens` VALUES ('daec5d5b28478296ea7e993a75934b33f1728ee9e989481b33d0977f940da75d0a36a4a73c4ab981', '2', '2', null, '[]', '0', '2019-07-10 11:25:41', '2019-07-10 11:25:41', '2020-07-10 11:25:41');
INSERT INTO `oauth_access_tokens` VALUES ('db3bfc3090497ba30473995b29324153d286bbcac5c49c476803ee29f63d859e56f2acda3b01395b', '2', '2', null, '[]', '0', '2019-07-10 05:05:23', '2019-07-10 05:05:23', '2020-07-10 05:05:23');
INSERT INTO `oauth_access_tokens` VALUES ('de68337149e58c772b914397d58b2841562bdb2bd579aab16fb00cfe92b8f4f5334bcc7b437456b0', '2', '2', null, '[]', '0', '2019-07-10 10:31:16', '2019-07-10 10:31:16', '2020-07-10 10:31:16');
INSERT INTO `oauth_access_tokens` VALUES ('ebbf92dc34261cc2023c12767f2d86341814ca0e2c4f4bfaf8c6fcd13c16f37ba1f92ae5f57ef565', '2', '2', null, '[]', '0', '2019-07-10 10:06:47', '2019-07-10 10:06:47', '2020-07-10 10:06:47');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', 'Wvi8Q6sUsjekw9tAHdzOC0Q9WZldKWn6gKBWCgJV', 'http://localhost', '1', '0', '0', '2019-07-09 07:20:14', '2019-07-09 07:20:14');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'ivuRPUFLg0UzxQqqIfVJ32wkp8hAURFb8PIpukX1', 'http://localhost', '0', '1', '0', '2019-07-09 07:20:14', '2019-07-09 07:20:14');
INSERT INTO `oauth_clients` VALUES ('3', null, '2', 'aw8W2tk6SocMzPB8EBIfCBSjLy96JFN9cG5exvUL', 'http://localhost', '0', '1', '0', '2019-07-10 04:55:04', '2019-07-10 04:55:04');
INSERT INTO `oauth_clients` VALUES ('4', null, 'hungbuit@gmail.com', 'QeulLzqjUNmMkJWkrBGbdd64POBUxelKGRgkgWX6', 'http://localhost', '0', '1', '0', '2019-07-10 04:55:20', '2019-07-10 04:55:20');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2019-07-09 07:20:14', '2019-07-09 07:20:14');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('03b08fd6ccf64229d7199eca59d09145dc05aa980e0130d41f46fff8d54bdf92e3ae754e1b23483c', 'ad233dfa054490105c3de36f1086da5d0530fe5b674415f0e1eb1f3cc18d325a9f36bfc9113c8c02', '0', '2020-07-10 09:42:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('0445b492abfb15385f07b55dff3da55102c3d3b4cbbc4111700d72a2d04c3170b50aa62edc1dffbc', 'db3bfc3090497ba30473995b29324153d286bbcac5c49c476803ee29f63d859e56f2acda3b01395b', '0', '2020-07-10 05:05:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('0efb481159981c373067f0500144a9b1738329bd4b21ee3791f05e11cec82b43df712ef543c205a9', 'ebbf92dc34261cc2023c12767f2d86341814ca0e2c4f4bfaf8c6fcd13c16f37ba1f92ae5f57ef565', '0', '2020-07-10 10:06:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('10782c0197a73ff8abfccffe5c3a030d42bf66b9f37f0dbe2592ba987fa58793bab9c93e0a564e28', '9c6eeb3cb1840c17ede59bb361ef28daded9f228bf78efc459b1346113e38d57604ff526450b758a', '0', '2020-07-10 10:27:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('1294cf5ae0a1f32aae591ef799ff5cdeed6fc5b68284be0a81ea7197fc2b44c1d2bbc462bf52ffab', '0d8ea3dad2fc2c18c4cbcef522129e19959922733f37b081fbf1e757221d5ef93721b7e09a0200a3', '0', '2020-07-10 10:08:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('1504a8bbb9be16936a1007c0ed482b78e1d420f0ad81cbe4d7b086f13863ab4ac3fae55c3fac8068', '6b643cdb0bc61aae917abc39a2b6a44ee220bcb06d1e65ec63f2be6aa5e51e032c29d254281008f4', '0', '2020-07-10 07:10:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('382c2f55482688437dac6ec22587ae5b55c6e0dadeec0e66db55e7a1a13b0ab6df9541596c04dea9', '0c5e19ce5ab861a2ae1011da853b37dc9bb70d541b49f6667d2d531fd6338dde060b9bbdaed1ca36', '0', '2020-07-10 10:20:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('3c585ce85a897113d7ac1db51656658800c1182c23d474f76a24d69304967038b9134ba21fac4bf0', '6387815fe2463f0149a00ec7e4aa28d45262177e712f4636841632325bcd17b6064f20503ce249bc', '0', '2020-07-10 09:23:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('42c1ea09384761d4f5cb69f9446f7c4c35409a455291756e625085522205087c720a2ed512928260', '5421f351f4756a48ced0060e538d8840cf7b7230ba5da935e7ff5807d5b612ea9245bae5c22fc3fb', '0', '2020-07-10 05:01:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('7f28cf6d452ba44c27c9c8bf17d379eeb8796c39ee90932e87bdb08b4992fb7a0bafe201d39994fa', '16fccddc6d3f78b0903e2d80da02e2093721b60f847b1fdffd73b35ebb8db78da97e8bfca355e5d0', '0', '2020-07-10 05:10:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('876cb08c1ebc78d946e4fa5b17dd0f93f02609c34cbe9058e7501bded6107a743d2bd283d9ecc6e6', 'b64b774b35001b9fefcccdc4a847fce1848d715a7a113177bf733adaf94e06ca9d16d79552387160', '0', '2020-07-10 10:04:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('a5c07de6b2b6a84694a81c50128e107713c67239d0de403a0590faa726c3bc6ff55fe34312e5647f', '74404d0832bd0e8c8a01932970cd4ff758a1592cd6b3df097f683002d8b0cf0a86ed207bdf9fd0e5', '0', '2020-07-10 07:42:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('a778d8ebdadc99f2e2729b4a0834bbf2db0856aab5789635b12601b0e356de63fe959ef5ee624ae7', '1597f35f8a25fcef1e0972d0985a0e373c60eac4a319ae9d08adbe7d77f8be844f348840ca2702c6', '0', '2020-07-10 09:42:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('b50edf7193657d957321c92c96e21db3656cfba125c02d0c7eba1b96d14b575594a0058cf99955ab', '8d37cace16b6f8a7a3b7af4f080dae566963d20a114a084aae10553498141e1791584bc87ec52b98', '0', '2020-07-10 08:06:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('c5911395ac01acbc558251240a003396e0bd984461c17ee25d6c2213207a0105e2d99358273c0235', '5bc94671d4e070bf261705f853c6a80aefeb06f3151bdf802eb8e4d4ce5e2dd2e24cf7f77257dc5a', '0', '2020-07-09 10:37:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('cc4c213ce11e0190b5169a4b764e79d87202d76e4d22b44939ed651132a1157532a85f323463a83c', '40285d23a6be35ea24be389983ebfb935658713420a3315065e2cae5a2af364cfce4294b74478596', '0', '2020-07-10 11:14:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('d33aca0bdb21a2f0af58c9553b617f94b450606bd9a1b1014468131c2c060738d358013f9788002d', 'de68337149e58c772b914397d58b2841562bdb2bd579aab16fb00cfe92b8f4f5334bcc7b437456b0', '0', '2020-07-10 10:31:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('db7e531dbfb1e6cbddb0fe036ebb870db4097ebaa0547fa649c0967642efb27351e5ea38f169ad8e', 'c7ecf499d8a79b0f0f4beeafe6705623c5e04504998089b8b9386b837091a2b95d3ea7d0890e1232', '0', '2020-07-10 02:18:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('dcc2ea09ea4a9575ab45d4220f79c9b69d382342c9c44a65532aa2f01c491786ff8aa57f8871b4ac', '928d566243bd02fd9083e4d58f4d504e9231ecc4b983a4bddf99c12e5e687f73329d7117caa09343', '0', '2020-07-10 09:41:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('dddfd95ec1e7eac4365edebd59c54ca72a4e7f923d2aa26fb58c3352bc99b71dc47950cff0abf3f9', '2280666893572f03d1ac37721dc0cee2ed13a14e1315c718fe82dbea7c58c7d44b73a7a41a5017c7', '0', '2020-07-10 08:47:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('df8c61afa09080d8514ee31f68b26a10f61491427f5b849e6a38ecdda5083f98eff5ac2a55ff403a', 'b850bdd0d45d25e01ae667f6362bbd0f8d71e88f97bbba8c63e75715061547e619e3485144ec9c05', '0', '2020-07-10 08:22:50');
INSERT INTO `oauth_refresh_tokens` VALUES ('e05545c01fed1abd0ce55abaa639b2b6e752f6aab420cac33abc285ede0d574676517d6fd04fe1eb', 'daec5d5b28478296ea7e993a75934b33f1728ee9e989481b33d0977f940da75d0a36a4a73c4ab981', '0', '2020-07-10 11:25:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('e556199a8259d585c4daae39f3d034621ad26f4b82f287f36386e8dc0739f8fbdde4f2ee6513daf3', '5c0fb95eb978f66a1d814e07e6bcb42202a5c638f1ef39944c4b45ceffcb6775cc6ef851df06aba1', '0', '2020-07-10 08:06:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('eb7193bd9c87677ad4c5bb23464befc0d6d7788fc00b5686d962bfd3d342515aeb23ee7bfc3fde0b', 'b6709cedf6e87ae7e84e1debad6f31f4bbe6d059402165c360bf9ffe38d9bc5446e4ef8ce5158068', '0', '2020-07-10 08:52:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('ed2a7f8b140f66752325e3e366e93282106b51a34b9f050d117988cfb7915e38f686b94b32098218', 'abe89e0242544ef4c312eb6f2b1aee77775bd203cf0c5fdd410bbc5dffa6b28c420fdb68d5ebfec0', '0', '2020-07-10 11:13:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('f1a4d17343bf5db313b50fb0f76fe2ae6c0acc1ea249f2cb13ecdd8eb2bc108fdf7ffb480ffcd820', 'baee2b9e3a84ecede8663818a7e2fab452e435f652c8a8d78f824adaae2ec561a81a5078f859d3b3', '0', '2020-07-10 07:59:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('f50bedee723cf812518343887b67d605c6a229843683966a549f453c6b019ef118a2fd87bcf71c45', '4d480948c1ce646d64dcb64c4a4ce8d93477776268d712da4ce87c245d1df3e0a21602b9322b2d94', '0', '2020-07-10 10:22:42');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `price` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'a', 'b', '12', null, null, null);
INSERT INTO `products` VALUES ('2', 'name', 'detail', '123', 'fdsfsdf', '2019-07-11 03:23:24', '2019-07-11 03:23:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'hungbu', 'hungbuit@gmail.com', null, '$2y$10$zlhmy96WtaJ3lygGMgRl0OORsHsjGhPVUl0LAn0Kxz2.7Tm9Ib5H6', null, '2019-07-09 10:35:33', '2019-07-09 10:35:33');
