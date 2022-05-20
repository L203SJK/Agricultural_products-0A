/*
注：“数据库脚本.sql”运行方法：全选内容复制到MySQL查询命令行或Navicat里执行即可(脚本运行成功后，就可以删除掉了)
*/

DROP DATABASE IF EXISTS sell_manage ;
CREATE DATABASE sell_manage CHARACTER SET utf8;
use sell_manage;

SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `roleId`(`roleId`) ,
  INDEX `menuId`(`menuId`) ,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (148, 2, 35);
INSERT INTO `authority` VALUES (149, 2, 36);
INSERT INTO `authority` VALUES (150, 2, 25);
INSERT INTO `authority` VALUES (151, 2, 1);
INSERT INTO `authority` VALUES (152, 2, 14);
INSERT INTO `authority` VALUES (153, 2, 15);
INSERT INTO `authority` VALUES (531, 1, 1);
INSERT INTO `authority` VALUES (532, 1, 5);
INSERT INTO `authority` VALUES (533, 1, 17);
INSERT INTO `authority` VALUES (534, 1, 18);
INSERT INTO `authority` VALUES (535, 1, 19);
INSERT INTO `authority` VALUES (536, 1, 20);
INSERT INTO `authority` VALUES (537, 1, 13);
INSERT INTO `authority` VALUES (538, 1, 21);
INSERT INTO `authority` VALUES (539, 1, 22);
INSERT INTO `authority` VALUES (540, 1, 23);
INSERT INTO `authority` VALUES (541, 1, 35);
INSERT INTO `authority` VALUES (542, 1, 36);
INSERT INTO `authority` VALUES (543, 1, 14);
INSERT INTO `authority` VALUES (544, 1, 15);
INSERT INTO `authority` VALUES (545, 1, 24);
INSERT INTO `authority` VALUES (546, 1, 25);
INSERT INTO `authority` VALUES (547, 1, 26);
INSERT INTO `authority` VALUES (548, 1, 31);
INSERT INTO `authority` VALUES (549, 1, 32);
INSERT INTO `authority` VALUES (550, 1, 33);
INSERT INTO `authority` VALUES (551, 1, 34);
INSERT INTO `authority` VALUES (552, 1, 37);
INSERT INTO `authority` VALUES (553, 1, 38);
INSERT INTO `authority` VALUES (554, 1, 39);
INSERT INTO `authority` VALUES (555, 1, 40);
INSERT INTO `authority` VALUES (556, 1, 41);
INSERT INTO `authority` VALUES (557, 1, 42);
INSERT INTO `authority` VALUES (558, 1, 43);
INSERT INTO `authority` VALUES (559, 1, 44);
INSERT INTO `authority` VALUES (560, 1, 45);
INSERT INTO `authority` VALUES (561, 1, 46);
INSERT INTO `authority` VALUES (562, 1, 75);
INSERT INTO `authority` VALUES (563, 1, 47);
INSERT INTO `authority` VALUES (564, 1, 48);
INSERT INTO `authority` VALUES (565, 1, 50);
INSERT INTO `authority` VALUES (566, 1, 51);
INSERT INTO `authority` VALUES (567, 1, 52);
INSERT INTO `authority` VALUES (568, 1, 49);
INSERT INTO `authority` VALUES (569, 1, 53);
INSERT INTO `authority` VALUES (570, 1, 54);
INSERT INTO `authority` VALUES (571, 1, 55);
INSERT INTO `authority` VALUES (572, 1, 56);
INSERT INTO `authority` VALUES (573, 1, 57);
INSERT INTO `authority` VALUES (574, 1, 58);
INSERT INTO `authority` VALUES (575, 1, 59);
INSERT INTO `authority` VALUES (576, 1, 60);
INSERT INTO `authority` VALUES (577, 1, 61);
INSERT INTO `authority` VALUES (578, 1, 62);
INSERT INTO `authority` VALUES (579, 1, 63);
INSERT INTO `authority` VALUES (580, 1, 64);
INSERT INTO `authority` VALUES (581, 1, 65);
INSERT INTO `authority` VALUES (582, 1, 66);
INSERT INTO `authority` VALUES (583, 1, 67);
INSERT INTO `authority` VALUES (584, 1, 68);
INSERT INTO `authority` VALUES (585, 1, 69);
INSERT INTO `authority` VALUES (586, 1, 70);
INSERT INTO `authority` VALUES (587, 1, 71);
INSERT INTO `authority` VALUES (588, 1, 72);
INSERT INTO `authority` VALUES (589, 1, 73);
INSERT INTO `authority` VALUES (590, 1, 74);

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) 
)   ;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (109, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:01:26');
INSERT INTO `log` VALUES (110, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:06:43');
INSERT INTO `log` VALUES (111, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:08:55');
INSERT INTO `log` VALUES (112, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:09:31');
INSERT INTO `log` VALUES (113, '用户名为admin的用户登录时输入验证码错误!', '2020-05-14 22:10:37');
INSERT INTO `log` VALUES (114, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:10:48');
INSERT INTO `log` VALUES (115, '用户名为admin的用户登录时输入验证码错误!', '2020-05-14 22:13:34');
INSERT INTO `log` VALUES (116, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:13:41');
INSERT INTO `log` VALUES (117, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:14:22');
INSERT INTO `log` VALUES (118, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:14:43');
INSERT INTO `log` VALUES (119, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 22:19:18');
INSERT INTO `log` VALUES (120, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 01:58:30');
INSERT INTO `log` VALUES (121, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 02:01:54');
INSERT INTO `log` VALUES (122, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 03:39:18');
INSERT INTO `log` VALUES (123, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 13:49:07');
INSERT INTO `log` VALUES (124, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 13:53:48');
INSERT INTO `log` VALUES (125, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 02:20:19');
INSERT INTO `log` VALUES (126, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 02:43:14');
INSERT INTO `log` VALUES (127, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 02:44:00');
INSERT INTO `log` VALUES (128, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 02:46:22');
INSERT INTO `log` VALUES (130, '用户名为admin的用户登录时输入密码错误!', '2020-05-16 23:39:13');
INSERT INTO `log` VALUES (131, '用户名为admin的用户登录时输入验证码错误!', '2020-05-16 23:40:35');
INSERT INTO `log` VALUES (132, '用户名为admin的用户登录时输入验证码错误!', '2020-05-16 23:41:07');
INSERT INTO `log` VALUES (133, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 23:41:15');
INSERT INTO `log` VALUES (134, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 23:46:48');
INSERT INTO `log` VALUES (135, '用户名为admin的用户登录时输入验证码错误!', '2020-05-16 23:47:39');
INSERT INTO `log` VALUES (136, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 23:47:47');
INSERT INTO `log` VALUES (137, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 23:48:41');
INSERT INTO `log` VALUES (139, '登录时，用户名为dasda的用户不存在!', '2020-05-28 01:57:09');
INSERT INTO `log` VALUES (140, '用户名为admin的用户登录时输入密码错误!', '2020-05-28 01:57:19');
INSERT INTO `log` VALUES (141, '用户名为admin的用户登录时输入验证码错误!', '2020-05-28 01:57:28');
INSERT INTO `log` VALUES (142, '用户名为admin的用户登录时输入验证码错误!', '2020-05-28 01:57:38');
INSERT INTO `log` VALUES (143, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 01:57:45');
INSERT INTO `log` VALUES (144, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 03:36:18');
INSERT INTO `log` VALUES (145, '用户名为admin的用户登录时输入验证码错误!', '2020-05-28 14:10:57');
INSERT INTO `log` VALUES (146, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 14:11:06');
INSERT INTO `log` VALUES (147, '用户名为admin的用户登录时输入验证码错误!', '2020-05-28 16:06:42');
INSERT INTO `log` VALUES (148, '用户名为admin的用户登录时输入密码错误!', '2020-05-28 16:06:49');
INSERT INTO `log` VALUES (149, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 16:06:58');
INSERT INTO `log` VALUES (150, '用户名为admin的用户登录时输入验证码错误!', '2020-05-28 17:19:24');
INSERT INTO `log` VALUES (151, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 17:19:37');
INSERT INTO `log` VALUES (152, '用户名为123的用户登录时输入验证码错误!', '2021-04-28 21:31:12');
INSERT INTO `log` VALUES (153, '登录时，用户名为123的用户不存在!', '2021-04-28 21:31:28');
INSERT INTO `log` VALUES (154, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-28 21:32:10');
INSERT INTO `log` VALUES (155, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-28 21:39:36');
INSERT INTO `log` VALUES (156, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 02:11:36');
INSERT INTO `log` VALUES (157, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 03:22:19');
INSERT INTO `log` VALUES (158, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 03:24:19');
INSERT INTO `log` VALUES (159, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 03:25:30');
INSERT INTO `log` VALUES (160, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 03:33:19');
INSERT INTO `log` VALUES (161, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-04-29 03:34:06');
INSERT INTO `log` VALUES (162, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-05-15 13:23:07');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) ,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES (5, 1, '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES (13, 1, '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES (14, 0, '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (31, 0, '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES (32, 31, '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES (33, 32, '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES (37, 0, '供应商管理', '', 'icon-user-brown');
INSERT INTO `menu` VALUES (38, 37, '供应商列表', '../admin/supplier/list', 'icon-vcard');
INSERT INTO `menu` VALUES (39, 38, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (40, 38, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (41, 38, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (42, 0, '农产品管理', '', 'icon-medal-bronze-1');
INSERT INTO `menu` VALUES (43, 42, '农产品列表', '../admin/product/list', 'icon-table-cell');
INSERT INTO `menu` VALUES (44, 43, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (45, 43, '编辑', 'openEdit()', 'icon-book-edit');
INSERT INTO `menu` VALUES (46, 43, '删除', 'remove()', 'icon-DeleteRed');
INSERT INTO `menu` VALUES (47, 0, '进货管理', '', 'icon-package-add');
INSERT INTO `menu` VALUES (48, 47, '进货列表', '../admin/order_in/list', 'icon-text-padding-top');
INSERT INTO `menu` VALUES (49, 47, '库存盘点', '../admin/stock/list', 'icon-brick-edit');
INSERT INTO `menu` VALUES (50, 48, '添加进货单', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (51, 48, '支付进货单', 'openEdit()', 'icon-cart-edit');
INSERT INTO `menu` VALUES (52, 48, '查看进货单', 'openView()', 'icon-eye');
INSERT INTO `menu` VALUES (53, 49, '调整库存', 'openEdit()', 'icon-book-addresses-edit');
INSERT INTO `menu` VALUES (54, 49, '删除库存', 'remove()', 'icon-DeleteRed');
INSERT INTO `menu` VALUES (55, 0, '进货退货', '', 'icon-basket-delete');
INSERT INTO `menu` VALUES (56, 55, '进货退货列表', '../admin/order_in_reback/list', 'icon-mail');
INSERT INTO `menu` VALUES (57, 56, '添加退货单', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (58, 56, '查看退货单', 'openView()', 'icon-eye');
INSERT INTO `menu` VALUES (59, 56, '支付退货单', 'openEdit()', 'icon-coins');
INSERT INTO `menu` VALUES (60, 0, '销售管理', '', 'icon-coins');
INSERT INTO `menu` VALUES (61, 60, '销售列表', '../admin/sell/list', 'icon-database-table');
INSERT INTO `menu` VALUES (62, 61, '添加销售单', 'openAdd()', 'icon-coins-add');
INSERT INTO `menu` VALUES (63, 61, '查看销售单', 'openView()', 'icon-eye');
INSERT INTO `menu` VALUES (64, 61, '支付销售单', 'openEdit()', 'icon-tag-blue-edit');
INSERT INTO `menu` VALUES (65, 0, '销售退货', '', 'icon-arrow-rotate-clockwise');
INSERT INTO `menu` VALUES (66, 65, '销售退货列表', '../admin/sell_reback/list', 'icon-build');
INSERT INTO `menu` VALUES (67, 66, '添加退货单', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (68, 66, '支付退货单', 'openEdit()', 'icon-database-edit');
INSERT INTO `menu` VALUES (69, 66, '查看退货单', 'openView()', 'icon-eye');
INSERT INTO `menu` VALUES (70, 0, '统计分析', '', 'icon-chart-bar');
INSERT INTO `menu` VALUES (71, 70, '销售统计', '../admin/stats/stats', 'icon-chart-curve');
INSERT INTO `menu` VALUES (72, 71, '按日统计', 'statsDay()', 'icon-chart-curve-add');
INSERT INTO `menu` VALUES (73, 71, '按月统计', 'statsMonth()', 'icon-chart-curve-link');
INSERT INTO `menu` VALUES (74, 71, '按年统计', 'statsYear()', 'icon-chart-curve-go');
INSERT INTO `menu` VALUES (75, 43, '导入农产品', 'openImport()', 'icon-upload');

-- ----------------------------
-- Table structure for order_in
-- ----------------------------
DROP TABLE IF EXISTS `order_in`;
CREATE TABLE `order_in`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11, 2) ,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `operator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) ,
  `createTime` datetime(0) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of order_in
-- ----------------------------
INSERT INTO `order_in` VALUES (13, 1408426.00, 182, 4, 1, 'admin', '新产品上市啦！', '2020-07-01 18:47:04');
INSERT INTO `order_in` VALUES (14, 8064.00, 222, 2, 1, 'admin', '', '2020-03-27 12:48:02');
INSERT INTO `order_in` VALUES (15, 55104.00, 10, 1, 0, 'admin', '', '2020-02-19 16:48:46');
INSERT INTO `order_in` VALUES (16, 155335.00, 1004, 4, 1, 'admin', '', '2020-05-02 13:35:30');
INSERT INTO `order_in` VALUES (17, 5291.00, 4, 2, 0, 'admin', '', '2020-02-28 21:29:13');
INSERT INTO `order_in` VALUES (18, 29828.00, 8, 0, 0, 'admin', '', '2020-01-06 02:44:49');
INSERT INTO `order_in` VALUES (19, 250.00, 10, 1, 1, 'admin', '', '2020-05-15 02:45:21');
INSERT INTO `order_in` VALUES (20, 22.00, 1, 0, 0, 'admin', '', '2020-05-17 00:11:19');
INSERT INTO `order_in` VALUES (21, 550.00, 22, 3, 1, 'admin', '', '2020-05-17 00:15:00');
INSERT INTO `order_in` VALUES (22, 250.00, 10, 2, 1, 'admin', '', '2020-05-28 02:00:27');
INSERT INTO `order_in` VALUES (23, 250.00, 10, 2, 1, 'admin', '酸甜可口', '2020-05-28 02:05:50');
INSERT INTO `order_in` VALUES (24, 297.00, 12, 2, 1, 'admin', '', '2020-05-28 02:06:40');
INSERT INTO `order_in` VALUES (25, 25.00, 1, 0, 1, 'admin', '', '2020-05-28 02:12:53');
INSERT INTO `order_in` VALUES (26, 250.00, 10, 1, 1, 'admin', '', '2020-05-28 16:07:46');
INSERT INTO `order_in` VALUES (27, 240.00, 10, 1, 1, 'admin', '', '2020-05-28 17:20:20');
INSERT INTO `order_in` VALUES (28, 200.00, 10, 2, 1, 'admin', '', '2021-04-29 03:54:12');

-- ----------------------------
-- Table structure for order_in_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_in_detail`;
CREATE TABLE `order_in_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderInId` int(11) NOT NULL,
  `productName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(8, 2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8, 0) NOT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `orderInId`(`orderInId`) ,
  CONSTRAINT `order_in_detail_ibfk_1` FOREIGN KEY (`orderInId`) REFERENCES `order_in` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of order_in_detail
-- ----------------------------
INSERT INTO `order_in_detail` VALUES (1, 13, '西瓜', 25.00, 10, 250);
INSERT INTO `order_in_detail` VALUES (2, 19, '西瓜', 25.00, 10, 250);
INSERT INTO `order_in_detail` VALUES (3, 20, '西瓜', 22.00, 1, 22);
INSERT INTO `order_in_detail` VALUES (4, 21, '西瓜', 25.00, 22, 550);
INSERT INTO `order_in_detail` VALUES (5, 22, '西瓜', 25.00, 10, 250);
INSERT INTO `order_in_detail` VALUES (51, 23, '西瓜', 25.00, 10, 250);
INSERT INTO `order_in_detail` VALUES (52, 24, '西瓜', 25.00, 11, 275);
INSERT INTO `order_in_detail` VALUES (53, 24, '西瓜', 22.00, 1, 22);
INSERT INTO `order_in_detail` VALUES (54, 25, '西瓜', 25.00, 1, 25);
INSERT INTO `order_in_detail` VALUES (55, 26, '西瓜', 25.00, 10, 250);
INSERT INTO `order_in_detail` VALUES (56, 27, '西瓜', 24.00, 10, 240);
INSERT INTO `order_in_detail` VALUES (57, 28, '西瓜', 20.00, 10, 200);

-- ----------------------------
-- Table structure for order_in_reback
-- ----------------------------
DROP TABLE IF EXISTS `order_in_reback`;
CREATE TABLE `order_in_reback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11, 2) ,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `operator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) ,
  `createTime` datetime(0) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of order_in_reback
-- ----------------------------
INSERT INTO `order_in_reback` VALUES (17, 408.00, 5, 2, 1, 'admin', '退货！', '2020-02-13 20:31:47');
INSERT INTO `order_in_reback` VALUES (18, 27591.00, 6, 0, 1, 'admin', '快点儿！', '2020-04-25 19:33:41');
INSERT INTO `order_in_reback` VALUES (19, 2065.00, 2, 0, 0, 'admin', '', '2020-05-12 15:45:12');
INSERT INTO `order_in_reback` VALUES (20, 15.00, 1, 0, 0, 'admin', '', '2020-05-17 00:19:22');
INSERT INTO `order_in_reback` VALUES (21, 250.00, 10, 2, 1, 'admin', '金钱+100', '2020-05-17 00:22:09');
INSERT INTO `order_in_reback` VALUES (22, 200.00, 10, 2, 1, 'admin', '支付宝到账 200元', '2021-04-29 03:57:08');

-- ----------------------------
-- Table structure for order_in_reback_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_in_reback_detail`;
CREATE TABLE `order_in_reback_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderInRebackId` int(11) NOT NULL,
  `productName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(8, 2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8, 0) NOT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `orderInId`(`orderInRebackId`) ,
  CONSTRAINT `order_in_reback_detail_ibfk_1` FOREIGN KEY (`orderInRebackId`) REFERENCES `order_in_reback` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of order_in_reback_detail
-- ----------------------------
INSERT INTO `order_in_reback_detail` VALUES (1, 20, '西瓜', 15.00, 1, 15);
INSERT INTO `order_in_reback_detail` VALUES (2, 21, '猕猴桃', 25.00, 10, 250);
INSERT INTO `order_in_reback_detail` VALUES (3, 22, '西瓜', 20.00, 10, 200);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierId` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `place` varchar(128) CHARACTER SET utf32 COLLATE utf32_general_ci ,
  `spec` varchar(64) ,
  `pk` varchar(64) ,
  `unit` varchar(32) ,
  `price` float(8, 2) NOT NULL,
  `remark` varchar(256) ,
  PRIMARY KEY (`id`) ,
  INDEX `supplierId`(`supplierId`) ,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 2, '苹果', '陕西富平', '斤', '无', '个', 128.00, '苹苹安安');
INSERT INTO `product` VALUES (2, 3, '西瓜', '陕西', '斤', '无', '个', 20.00, '这瓜保熟吗？');
INSERT INTO `product` VALUES (3, 4, '橙子', '海南', '斤', '无', '个', 15.00, '上周买了一个 现在还在抗洪');
INSERT INTO `product` VALUES (4, 4, '菠萝', '徐闻', '斤', '无', '个', 26.00, '每人每天十八公斤');
INSERT INTO `product` VALUES (5, 10, '猕猴桃', '陕西', '斤', '无', '个', 22.00, 'miHotel');
INSERT INTO `product` VALUES (6, 3, '小米', '武汉', '斤', '无', '散装', 18.00, 'Are you OK？');
INSERT INTO `product` VALUES (9, 2, '荔枝', '广东', '斤', '无', '把', 28.00, '一骑红尘妃子笑');
INSERT INTO `product` VALUES (10, 2, '棉花', '新疆', '斤', '袋装', '袋', 22.00, '');
INSERT INTO `product` VALUES (11, 3, '菠菜', '山东', '斤', '无', '棵', 12.00, '大力水手popeye');
INSERT INTO `product` VALUES (12, 4, '香蕉', '海南', '斤', '无', '把', 8.00, '外焦里嫩');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for sell
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11, 2) ,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `operator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) ,
  `createTime` datetime(0) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of sell
-- ----------------------------
INSERT INTO `sell` VALUES (17, 256.00, 2, 2, 1, 'admin', '', '2020-01-23 08:12:22');
INSERT INTO `sell` VALUES (18, 27591.00, 6, 1, 1, 'admin', '', '2020-01-24 10:14:22');
INSERT INTO `sell` VALUES (19, 14092.00, 111, 2, 0, 'admin', '', '2020-02-21 11:29:08');
INSERT INTO `sell` VALUES (20, 41683.00, 117, 4, 0, 'admin', '', '2020-05-04 13:29:39');
INSERT INTO `sell` VALUES (21, 7477.00, 5, 1, 0, 'admin', '', '2020-03-20 11:30:09');
INSERT INTO `sell` VALUES (22, 30852.00, 16, 0, 1, 'admin', '', '2020-04-26 15:39:07');
INSERT INTO `sell` VALUES (23, 31236.00, 19, 0, 0, 'admin', '', '2020-01-24 15:41:31');
INSERT INTO `sell` VALUES (24, 150.00, 10, 1, 1, 'admin', '', '2020-05-16 02:21:00');
INSERT INTO `sell` VALUES (25, 128.00, 1, 0, 0, 'admin', '', '2020-05-17 00:03:56');
INSERT INTO `sell` VALUES (26, 50.00, 2, 2, 1, 'admin', '', '2020-05-17 00:07:40');
INSERT INTO `sell` VALUES (27, 250.00, 10, 0, 1, 'admin', '', '2020-05-28 02:07:16');
INSERT INTO `sell` VALUES (28, 275.00, 11, 0, 0, 'admin', '', '2020-05-28 02:12:13');
INSERT INTO `sell` VALUES (29, 275.00, 11, 0, 1, 'admin', '', '2020-05-28 02:12:13');
INSERT INTO `sell` VALUES (30, 25.00, 1, 0, 1, 'admin', '', '2020-05-28 02:13:11');
INSERT INTO `sell` VALUES (31, 250.00, 10, 3, 1, 'admin', '', '2020-05-28 16:08:14');
INSERT INTO `sell` VALUES (32, 240.00, 10, 2, 1, 'admin', '', '2020-05-28 17:20:48');
INSERT INTO `sell` VALUES (33, 200.00, 10, 3, 1, 'admin', '', '2021-04-29 03:51:11');

-- ----------------------------
-- Table structure for sell_detail
-- ----------------------------
DROP TABLE IF EXISTS `sell_detail`;
CREATE TABLE `sell_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellId` int(11) NOT NULL,
  `productName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(8, 2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8, 0) NOT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `orderInId`(`sellId`) ,
  CONSTRAINT `sell_detail_ibfk_1` FOREIGN KEY (`sellId`) REFERENCES `sell` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of sell_detail
-- ----------------------------
INSERT INTO `sell_detail` VALUES (1, 24, '西瓜', 15.00, 10, 150);
INSERT INTO `sell_detail` VALUES (2, 25, '西瓜', 128.00, 1, 128);
INSERT INTO `sell_detail` VALUES (3, 26, '西瓜', 25.00, 2, 50);
INSERT INTO `sell_detail` VALUES (4, 27, '西瓜', 25.00, 10, 250);
INSERT INTO `sell_detail` VALUES (74, 28, '西瓜', 25.00, 11, 275);
INSERT INTO `sell_detail` VALUES (75, 29, '西瓜', 25.00, 11, 275);
INSERT INTO `sell_detail` VALUES (76, 30, '西瓜', 25.00, 1, 25);
INSERT INTO `sell_detail` VALUES (77, 31, '西瓜', 25.00, 10, 250);
INSERT INTO `sell_detail` VALUES (78, 32, '西瓜', 24.00, 10, 240);
INSERT INTO `sell_detail` VALUES (80, 33, '西瓜', 20.00, 10, 200);

-- ----------------------------
-- Table structure for sell_reback
-- ----------------------------
DROP TABLE IF EXISTS `sell_reback`;
CREATE TABLE `sell_reback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11, 2) ,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `operator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) ,
  `createTime` datetime(0) ,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of sell_reback
-- ----------------------------
INSERT INTO `sell_reback` VALUES (19, 12.00, 1, 0, 1, 'admin', '', '2020-01-30 10:05:15');
INSERT INTO `sell_reback` VALUES (20, 28755.00, 16, 1, 0, 'admin', '', '2020-02-19 11:06:12');
INSERT INTO `sell_reback` VALUES (21, 233076.00, 79, 2, 0, 'admin', '', '2020-05-06 13:43:29');
INSERT INTO `sell_reback` VALUES (22, 24409.00, 3, 1, 0, 'admin', '', '2020-03-19 14:43:52');
INSERT INTO `sell_reback` VALUES (23, 78.00, 2, 0, 0, 'admin', '', '2020-04-20 17:48:30');
INSERT INTO `sell_reback` VALUES (24, 78.00, 2, 0, 0, 'admin', '', '2020-03-20 16:49:18');
INSERT INTO `sell_reback` VALUES (25, 25.00, 1, 0, 1, 'admin', '', '2020-05-28 02:13:43');
INSERT INTO `sell_reback` VALUES (26, 250.00, 10, 0, 1, 'admin', '', '2020-05-28 16:08:40');
INSERT INTO `sell_reback` VALUES (27, 240.00, 10, 0, 1, 'admin', '', '2020-05-28 17:21:12');

-- ----------------------------
-- Table structure for sell_reback_detail
-- ----------------------------
DROP TABLE IF EXISTS `sell_reback_detail`;
CREATE TABLE `sell_reback_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellRebackId` int(11) NOT NULL,
  `productName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(8, 2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8, 0) NOT NULL,
  PRIMARY KEY (`id`) ,
  INDEX `orderInId`(`sellRebackId`) ,
  CONSTRAINT `sell_reback_detail_ibfk_1` FOREIGN KEY (`sellRebackId`) REFERENCES `sell_reback` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of sell_reback_detail
-- ----------------------------
INSERT INTO `sell_reback_detail` VALUES (58, 25, '西瓜', 25.00, 1, 25);
INSERT INTO `sell_reback_detail` VALUES (59, 26, '西瓜', 25.00, 10, 250);
INSERT INTO `sell_reback_detail` VALUES (60, 27, '西瓜', 24.00, 10, 240);

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `productNum` int(8) NOT NULL,
  `sellNum` int(8) NOT NULL DEFAULT 0,
  `createTime` datetime(0) ,
  `remark` varchar(128) ,
  PRIMARY KEY (`id`) ,
  INDEX `productId`(`productId`) ,
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (4, 4, 40, 56, '2020-02-19 16:47:04', NULL);
INSERT INTO `stock` VALUES (5, 5, 202, 1, '2020-01-22 16:47:04', NULL);
INSERT INTO `stock` VALUES (6, 6, 51, 1, '2020-03-27 16:47:04', NULL);
INSERT INTO `stock` VALUES (7, 2, 90, 11, '2020-04-25 16:48:02', NULL);
INSERT INTO `stock` VALUES (8, 3, 110, 11, '2020-05-07 16:48:02', NULL);
INSERT INTO `stock` VALUES (9, 1, 764, 13, '2020-05-03 16:48:46', NULL);
INSERT INTO `stock` VALUES (10, 9, 11, 1, '2020-03-13 15:29:13', NULL);
INSERT INTO `stock` VALUES (11, 10, 10, 1, '2020-02-19 15:29:13', NULL);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactPhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) 
)    ;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (2, '校门口水果摊', '138888', '学府大街一号', '水果摊', '138888');
INSERT INTO `supplier` VALUES (3, '家门口水果摊', '110', '西北大学南门', '老板', '110');
INSERT INTO `supplier` VALUES (4, '超市', '120', '长安区', '收银员', '120');
INSERT INTO `supplier` VALUES (10, '黑店', '1111', 'null', '饿了么', '1111');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) ,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NOT NULL DEFAULT 0,
  `address` varchar(128) ,
  PRIMARY KEY (`id`) ,
  INDEX `roleId`(`roleId`) ,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)    ;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', 1, '', 1, 18, '陕西省西安市');
INSERT INTO `user` VALUES (2, 'user', '123456', 2, '', 0, 0, '上海');


SET FOREIGN_KEY_CHECKS = 1;
