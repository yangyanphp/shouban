/*
Navicat MySQL Data Transfer

Source Server         : test2
Source Server Version : 50556
Source Host           : 47.104.84.188:3306
Source Database       : 810

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-08-01 14:51:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jbr_access`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_access`;
CREATE TABLE `jbr_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `app` varchar(20) NOT NULL COMMENT '模块',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of jbr_access
-- ----------------------------
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'rebuilding', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'add', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'item_listorder', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'item_manage', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'item', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Position', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Field', 'priview', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Field', 'disabled', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Field', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Field', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Field', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'import', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'disabled', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'add', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Models', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'categoryshux', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'wadd', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'singlepage', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'add', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Category46', 'index46', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Tags', 'create', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Tags', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Tags', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Tags', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Attachment', 'Atadmin', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Attachment', 'Atadmin', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Content', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Index44', 'index44', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Content45', 'index45', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Logs', 'deletelog', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Logs', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Logs', 'deleteloginlog', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Logs', 'loginlog', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Logs31', 'index31', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'setting_cat_priv', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'authorize', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'roleedit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'roledelete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'roleadd', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Rbac', 'rolemanage', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Management', 'delete', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Management', 'edit', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Management', 'adminadd', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Management', 'manager', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Management21', 'index21', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config', 'extend', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config', 'attach', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config7', 'index7', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config3', 'index3', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Adminmanage', 'chanpass', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Adminmanage', 'myinfo', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Adminmanage4', 'myinfo4', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'Config2', 'index2', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Createhtml68', 'index68', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Createhtml', 'category', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Createhtml', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Createhtml', 'update_urls', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Content', 'Createhtml', 'update_show', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Template', 'Custompage', 'createhtml', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'MemberPublic113', 'index113', '0');
INSERT INTO `jbr_access` VALUES ('2', 'Admin', 'MemberPublic', 'lists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'MemberPublic', 'lists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'MemberPublic', 'help', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'MemberPublic', 'add', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Keyword', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Aaa', 'Bbb', 'ccc', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomReply', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomReply', 'newslists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomReplyMult', 'multlists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomReplyText', 'textlists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomMenu', 'lists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Weixin', 'sendmenu', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'CustomMenu', 'add', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'AttentionReply', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Card', 'card', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Card', 'member', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Card', 'notice', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'UserCenter', 'index', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Hudong', 'c', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Coupon', 'couponlists', '1');
INSERT INTO `jbr_access` VALUES ('2', 'Weixin', 'Scratch', 'scratchlists', '1');

-- ----------------------------
-- Table structure for `jbr_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_admin_panel`;
CREATE TABLE `jbr_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL COMMENT '菜单名',
  `url` char(255) NOT NULL COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of jbr_admin_panel
-- ----------------------------
INSERT INTO `jbr_admin_panel` VALUES ('6', '1', '修改密码', 'Admin/Adminmanage/chanpass');
INSERT INTO `jbr_admin_panel` VALUES ('5', '1', '修改个人信息', 'Admin/Adminmanage/myinfo');
INSERT INTO `jbr_admin_panel` VALUES ('65', '1', '管理内容', 'Content/Content/index');

-- ----------------------------
-- Table structure for `jbr_article`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_article`;
CREATE TABLE `jbr_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_article
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_article_data`;
CREATE TABLE `jbr_article_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_article_data
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_attachment`;
CREATE TABLE `jbr_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL COMMENT '模块名称',
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `filename` char(50) NOT NULL COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_attachment_index`;
CREATE TABLE `jbr_attachment_index` (
  `keyid` char(30) NOT NULL COMMENT '关联id',
  `aid` char(10) NOT NULL COMMENT '附件ID',
  KEY `keyid` (`keyid`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of jbr_attachment_index
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_behavior`;
CREATE TABLE `jbr_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of jbr_behavior
-- ----------------------------
INSERT INTO `jbr_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `jbr_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `jbr_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `jbr_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `jbr_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `jbr_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `jbr_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `jbr_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `jbr_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `jbr_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `jbr_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `jbr_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `jbr_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');
INSERT INTO `jbr_behavior` VALUES ('14', 'content_add_end', '内容添加结束行为标签', '模块Search中的行为！', '1', '1', '0', 'Search', '1408607033');
INSERT INTO `jbr_behavior` VALUES ('15', 'content_edit_end', '内容编辑结束行为标签', '模块Search中的行为！', '1', '1', '0', 'Search', '1408607033');
INSERT INTO `jbr_behavior` VALUES ('16', 'content_check_end', '内容审核结束行为标签', '模块Search中的行为！', '1', '1', '0', 'Search', '1408607033');
INSERT INTO `jbr_behavior` VALUES ('17', 'content_delete_end', '内容删除结束行为标签', '模块Search中的行为！', '1', '1', '0', 'Search', '1408607033');
INSERT INTO `jbr_behavior` VALUES ('18', 'view_admin_top_menu', '后台框架首页右上角菜单', '后台框架首页右上角菜单', '2', '1', '0', '', '1409018073');
INSERT INTO `jbr_behavior` VALUES ('19', 'view_member_menu', '管理中心左侧导航', '管理中心左侧导航', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('20', 'view_member_right', '管理中心右侧', '管理中心右侧', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('21', 'view_member_show_medal', '会员个人空间首页勋章', '会员个人空间首页勋章显示', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('22', 'view_member_home_indexright', '会员个人空间首页右侧', '会员个人空间首页右侧信息', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('23', 'view_member_home_right', '会员个人空间右侧', '会员个人空间右侧信息', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('24', 'view_member_home_nav', '会员个人空间导航', '会员个人空间导航', '2', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('25', 'action_member_loginend', '会员登录成功后行为调用', '会员登录成功后行为调用', '1', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('26', 'action_member_registerend', '会员注册成功后行为调用', '会员注册成功后行为调用', '1', '1', '0', 'Member', '1409018074');
INSERT INTO `jbr_behavior` VALUES ('27', 'action_member_logout', '会员退出登录后行为调用', '会员退出登录后行为调用', '1', '1', '0', 'Member', '1409018074');

-- ----------------------------
-- Table structure for `jbr_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_behavior_log`;
CREATE TABLE `jbr_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL COMMENT '行为ID',
  `guid` char(50) NOT NULL COMMENT '标识',
  `create_time` int(10) NOT NULL COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of jbr_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_behavior_rule`;
CREATE TABLE `jbr_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL COMMENT '规则所属模块',
  `addons` char(20) NOT NULL COMMENT '规则所属插件',
  `rule` text NOT NULL COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

-- ----------------------------
-- Records of jbr_behavior_rule
-- ----------------------------
INSERT INTO `jbr_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `jbr_behavior_rule` VALUES ('10', '14', '0', 'Search', '', 'phpfile:SearchApi|module:Search', '0', '1408607033');
INSERT INTO `jbr_behavior_rule` VALUES ('11', '15', '0', 'Search', '', 'phpfile:SearchApi|module:Search', '0', '1408607033');
INSERT INTO `jbr_behavior_rule` VALUES ('12', '16', '0', 'Search', '', 'phpfile:SearchApi|module:Search', '0', '1408607033');
INSERT INTO `jbr_behavior_rule` VALUES ('13', '17', '0', 'Search', '', 'phpfile:SearchApi|module:Search', '0', '1408607033');
INSERT INTO `jbr_behavior_rule` VALUES ('14', '18', '0', 'Member', '', 'phpfile:ViewAdminTopMenuBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('15', '21', '0', 'Member', '', 'phpfile:ViewMemberShowMedalBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('16', '22', '0', 'Member', '', 'phpfile:ViewMemberHomeIndexrightBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('17', '23', '0', 'Member', '', 'phpfile:ViewMemberHomeRightBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('18', '16', '0', 'Member', '', 'phpfile:ContentCheckEndBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('19', '15', '0', 'Member', '', 'phpfile:ContentEditEndBehavior|module:Member', '0', '1409018074');
INSERT INTO `jbr_behavior_rule` VALUES ('20', '17', '0', 'Member', '', 'phpfile:ContentDeleteEndBehavior|module:Member', '0', '1409018074');

-- ----------------------------
-- Table structure for `jbr_cache`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_cache`;
CREATE TABLE `jbr_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL COMMENT '缓存key值',
  `name` char(100) NOT NULL COMMENT '名称',
  `module` char(20) NOT NULL COMMENT '模块名称',
  `model` char(30) NOT NULL COMMENT '模型名称',
  `action` char(30) NOT NULL COMMENT '方法名',
  `param` char(255) NOT NULL COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

-- ----------------------------
-- Records of jbr_cache
-- ----------------------------
INSERT INTO `jbr_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `jbr_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `jbr_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `jbr_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('10', 'Search_config', '全站搜索配置', 'Search', 'Search', 'search_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('11', 'Member_Config', '会员配置', 'Member', 'Member', 'member_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('12', 'Member_group', '会员组', 'Member', 'MemberGroup', 'membergroup_cache', '', '0');
INSERT INTO `jbr_cache` VALUES ('13', 'Model_Member', '会员模型', 'Member', 'Member', 'member_model_cahce', '', '0');

-- ----------------------------
-- Table structure for `jbr_category`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_category`;
CREATE TABLE `jbr_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) DEFAULT NULL COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext NOT NULL COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL COMMENT '栏目名称',
  `image` varchar(100) NOT NULL COMMENT '栏目图片',
  `description` mediumtext NOT NULL COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL COMMENT '父目录',
  `catdir` varchar(30) NOT NULL COMMENT '栏目目录',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext NOT NULL COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`) USING BTREE,
  KEY `siteid` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_category
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_category_field`;
CREATE TABLE `jbr_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) DEFAULT NULL COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL COMMENT '字段名',
  `type` varchar(10) NOT NULL COMMENT '类型,input',
  `setting` mediumtext NOT NULL COMMENT '其他',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of jbr_category_field
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_category_priv`;
CREATE TABLE `jbr_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of jbr_category_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_censor_word`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_censor_word`;
CREATE TABLE `jbr_censor_word` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '词汇id',
  `admin` varchar(15) NOT NULL DEFAULT '' COMMENT '添加用户',
  `type` smallint(6) NOT NULL DEFAULT '1' COMMENT '分类ID',
  `find` varchar(255) NOT NULL DEFAULT '' COMMENT '不良词语',
  `replacement` varchar(255) NOT NULL DEFAULT '' COMMENT '不良词语类型',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '其他',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='词语过滤表';

-- ----------------------------
-- Records of jbr_censor_word
-- ----------------------------
INSERT INTO `jbr_censor_word` VALUES ('1', 'admin', '0', '/(http|https):\\/\\//', '{MOD}', '');

-- ----------------------------
-- Table structure for `jbr_comments`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_comments`;
CREATE TABLE `jbr_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment_id` char(30) NOT NULL COMMENT '所属文章id',
  `author` tinytext NOT NULL COMMENT '评论者名称',
  `author_email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者电邮地址',
  `author_url` varchar(200) NOT NULL DEFAULT '' COMMENT '评论者网址',
  `author_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者的IP地址',
  `date` int(11) NOT NULL COMMENT '评论发表时间',
  `approved` varchar(20) NOT NULL DEFAULT '1' COMMENT '评论状态，0为审核，1为正常',
  `agent` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者的客户端信息',
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级评论id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论对应用户id',
  `stb` varchar(6) NOT NULL COMMENT '存放副表名',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`) USING BTREE,
  KEY `approved` (`approved`) USING BTREE,
  KEY `parent` (`parent`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of jbr_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_comments_data_1`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_comments_data_1`;
CREATE TABLE `jbr_comments_data_1` (
  `id` bigint(20) unsigned NOT NULL COMMENT '评论id',
  `comment_id` char(30) NOT NULL COMMENT '所属文章Id',
  `content` text NOT NULL COMMENT '评论内容',
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论副表1';

-- ----------------------------
-- Records of jbr_comments_data_1
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_comments_emotion`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_comments_emotion`;
CREATE TABLE `jbr_comments_emotion` (
  `emotion_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表情ID',
  `emotion_name` varchar(20) NOT NULL DEFAULT '' COMMENT '表情名称',
  `emotion_icon` varchar(50) NOT NULL DEFAULT '' COMMENT '表情图标',
  `vieworder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `isused` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`emotion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表情数据表';

-- ----------------------------
-- Records of jbr_comments_emotion
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_comments_field`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_comments_field`;
CREATE TABLE `jbr_comments_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `f` varchar(30) NOT NULL COMMENT '字段名',
  `fname` varchar(30) NOT NULL COMMENT '字段标识',
  `fzs` varchar(255) NOT NULL COMMENT '注释',
  `ftype` varchar(30) NOT NULL COMMENT '字段类型',
  `flen` varchar(20) NOT NULL COMMENT '字段长度',
  `ismust` tinyint(1) NOT NULL COMMENT '1为必填，0为非必填',
  `issystem` tinyint(1) NOT NULL COMMENT '是否添加到主表',
  `regular` varchar(255) NOT NULL COMMENT '数据验证正则',
  `system` tinyint(1) NOT NULL COMMENT '是否系统字段',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fname` (`fname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='评论自定义字段表';

-- ----------------------------
-- Records of jbr_comments_field
-- ----------------------------
INSERT INTO `jbr_comments_field` VALUES ('1', 'author', '昵称', '昵称不能为空！', 'TEXT', '', '1', '1', '', '1');
INSERT INTO `jbr_comments_field` VALUES ('2', 'author_email', '邮箱', '邮箱不能为空！', 'VARCHAR', '100', '1', '1', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '1');
INSERT INTO `jbr_comments_field` VALUES ('3', 'author_url', '网站地址', '网站地址不能为空！', 'VARCHAR', '200', '0', '1', '/^http:\\/\\//', '1');

-- ----------------------------
-- Table structure for `jbr_comments_setting`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_comments_setting`;
CREATE TABLE `jbr_comments_setting` (
  `guest` tinyint(1) NOT NULL COMMENT '是否允许游客评论',
  `code` tinyint(1) NOT NULL COMMENT '是否开启验证码',
  `check` tinyint(1) NOT NULL COMMENT '是否需要审核',
  `stb` tinyint(4) NOT NULL COMMENT '存储分表',
  `stbsum` int(4) NOT NULL COMMENT '分表总数',
  `order` varchar(20) NOT NULL COMMENT '排序',
  `strlength` int(5) NOT NULL COMMENT '允许最大字数',
  `status` tinyint(1) NOT NULL COMMENT '关闭/开启评论',
  `expire` int(11) NOT NULL COMMENT '评论间隔时间单位秒'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论配置';

-- ----------------------------
-- Records of jbr_comments_setting
-- ----------------------------
INSERT INTO `jbr_comments_setting` VALUES ('1', '0', '0', '1', '1', 'date DESC', '400', '1', '60');

-- ----------------------------
-- Table structure for `jbr_config`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_config`;
CREATE TABLE `jbr_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of jbr_config
-- ----------------------------
INSERT INTO `jbr_config` VALUES ('1', 'sitename', '网站名称', '1', '网站信息管理系统');
INSERT INTO `jbr_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `jbr_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/d/file/');
INSERT INTO `jbr_config` VALUES ('4', 'siteemail', '站点邮箱', '1', 'z510727296@163.com');
INSERT INTO `jbr_config` VALUES ('6', 'siteinfo', '网站介绍', '1', '网站信息管理系统');
INSERT INTO `jbr_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', '网站信息管理系统');
INSERT INTO `jbr_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '10000');
INSERT INTO `jbr_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|mp4');
INSERT INTO `jbr_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '200');
INSERT INTO `jbr_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `jbr_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `jbr_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '300');
INSERT INTO `jbr_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '100');
INSERT INTO `jbr_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '/statics/images/mark_bai.png');
INSERT INTO `jbr_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `jbr_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `jbr_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '7');
INSERT INTO `jbr_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `jbr_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `jbr_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `jbr_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `jbr_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `jbr_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `jbr_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `jbr_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `jbr_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `jbr_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `jbr_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `jbr_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `jbr_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `jbr_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `jbr_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `jbr_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `jbr_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `jbr_config` VALUES ('36', 'mail_fname', '发件人名称', '1', 'ShuipFCMS管理员');
INSERT INTO `jbr_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `jbr_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `jbr_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `jbr_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `jbr_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `jbr_config` VALUES ('42', 'beian', '备案号', '2', '鄂ICP备 20100295');
INSERT INTO `jbr_config` VALUES ('43', 'phone', '手机号', '2', '');
INSERT INTO `jbr_config` VALUES ('44', 'address', '地址', '2', '');
INSERT INTO `jbr_config` VALUES ('45', 'fax', '传真', '2', '');
INSERT INTO `jbr_config` VALUES ('46', 'copyright', '版权', '2', '网站信息管理系统');
INSERT INTO `jbr_config` VALUES ('47', 'tel', '电话', '2', '027-87467581（销售）');
INSERT INTO `jbr_config` VALUES ('49', 'tel2', '电话2', '2', '027-87170636（总机）');

-- ----------------------------
-- Table structure for `jbr_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_config_field`;
CREATE TABLE `jbr_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL COMMENT '字段名',
  `type` varchar(10) NOT NULL COMMENT '类型,input',
  `setting` mediumtext NOT NULL COMMENT '其他',
  `createtime` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of jbr_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_connect`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_connect`;
CREATE TABLE `jbr_connect` (
  `connectid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) NOT NULL COMMENT '授权标识',
  `uid` mediumint(8) NOT NULL COMMENT '用户ID',
  `app` varchar(10) NOT NULL COMMENT '应用名称',
  `accesstoken` char(50) NOT NULL COMMENT 'access_token',
  `expires` int(10) NOT NULL COMMENT 'token过期时间',
  PRIMARY KEY (`connectid`),
  KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登录授权';

-- ----------------------------
-- Records of jbr_connect
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_customlist`;
CREATE TABLE `jbr_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL COMMENT '访问地址',
  `name` varchar(60) NOT NULL COMMENT '列表标题',
  `title` varchar(120) NOT NULL COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL COMMENT '网页关键字',
  `description` text NOT NULL COMMENT '页面简介',
  `totalsql` text NOT NULL COMMENT '数据统计SQL',
  `listsql` text NOT NULL COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL COMMENT 'URL规则',
  `template` mediumtext NOT NULL COMMENT '模板',
  `listpath` varchar(60) NOT NULL COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- ----------------------------
-- Records of jbr_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_customtemp`;
CREATE TABLE `jbr_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '模板名称',
  `tempname` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '模板完整文件名',
  `temppath` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '模板生成路径',
  `temptext` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='自定义模板表';

-- ----------------------------
-- Records of jbr_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_download`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_download`;
CREATE TABLE `jbr_download` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_download
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_download_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_download_data`;
CREATE TABLE `jbr_download_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fill` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_download_data
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_images`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_images`;
CREATE TABLE `jbr_images` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_images
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_images_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_images_data`;
CREATE TABLE `jbr_images_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_images_data
-- ----------------------------
INSERT INTO `jbr_images_data` VALUES ('1', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('2', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('3', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('4', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('5', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('6', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('7', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('8', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('9', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('10', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('11', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('12', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('13', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('14', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('15', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('16', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('17', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('18', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('19', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('20', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('21', '', '0', '1');
INSERT INTO `jbr_images_data` VALUES ('22', '', '0', '1');

-- ----------------------------
-- Table structure for `jbr_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_jobs`;
CREATE TABLE `jbr_jobs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_jobs
-- ----------------------------
INSERT INTO `jbr_jobs` VALUES ('1', '17', '0', '电子电器走线师傅', '', '', '', '', '<p><span style=\"color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 14px; line-height: 35px; background-color: rgb(255, 255, 255);\">从事电子仪器的线路板安装工作</span></p>', '0', '/index.php?a=shows&catid=17&id=1', '0', '99', '1', '0', 'jbrcms', '1413279827', '1413279827', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_jobs` VALUES ('2', '17', '0', '销售工程师', '', '', '', '', '<p><span style=\"color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 14px; line-height: 35px; background-color: rgb(255, 255, 255);\">从事电子仪器的线路板安装工作</span></p>', '0', '/index.php?a=shows&catid=17&id=2', '0', '99', '1', '0', 'jbrcms', '1413280011', '1413280011', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `jbr_jobs_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_jobs_data`;
CREATE TABLE `jbr_jobs_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_jobs_data
-- ----------------------------
INSERT INTO `jbr_jobs_data` VALUES ('1', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、中专以上学历，年纪18-35岁之间，一年以上线路走装工作经验，能够看懂线路图；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、手脚麻利，服从领导安排，能够按时完成生产任务；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、做过同行或者同类产品销售的人优先录用；</p>', '0', '0', '', '0', '1', '');
INSERT INTO `jbr_jobs_data` VALUES ('2', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、中专以上学历，年纪18-35岁之间，一年以上线路走装工作经验，能够看懂线路图；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、手脚麻利，服从领导安排，能够按时完成生产任务；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 14px; line-height: 35px; color: rgb(153, 153, 153); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、做过同行或者同类产品销售的人优先录用；</p><p><br/></p>', '0', '0', '', '0', '1', '');

-- ----------------------------
-- Table structure for `jbr_locking`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_locking`;
CREATE TABLE `jbr_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL COMMENT '信息ID',
  `locktime` int(10) NOT NULL COMMENT '锁定时间',
  KEY `userid` (`userid`) USING HASH,
  KEY `onlinetime` (`locktime`) USING HASH
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of jbr_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_loginlog`;
CREATE TABLE `jbr_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL COMMENT '登录帐号',
  `logintime` int(10) NOT NULL COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='后台登录日志表';

-- ----------------------------
-- Records of jbr_loginlog
-- ----------------------------
INSERT INTO `jbr_loginlog` VALUES ('1', 'admin', '1564453360', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('2', 'jbrcms', '1564455288', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('3', 'jbrcms', '1564456635', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('4', 'jbrcms', '1564456916', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('5', 'jbrcms', '1564457566', '219.140.226.35', '0', 'jbr123456', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('6', 'jbrcms', '1564457577', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('7', 'jbrcms', '1564472250', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('8', 'jbrcms', '1564472272', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('9', 'jbrcms', '1564472556', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('10', 'jbrcms', '1564472615', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('11', 'jbrcms', '1564472616', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('12', 'jbrcms', '1564472704', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('13', 'jbrcms', '1564472704', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('14', 'jbrcms', '1564472705', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('15', 'jbrcms', '1564472705', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('16', 'jbrcms', '1564472733', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('17', 'jbrcms', '1564472734', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('18', 'jbrcms', '1564472735', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('19', 'jbrcms', '1564472745', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('20', 'jbrcms', '1564472762', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('21', 'jbrcms', '1564472764', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('22', 'jbrcms', '1564472783', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('23', 'jbrcms', '1564472790', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('24', 'jbrcms', '1564472807', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('25', 'jbrcms', '1564472808', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('26', 'jbrcms', '1564472812', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('27', 'jbrcms', '1564472821', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('28', 'jbrcms', '1564472835', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('29', 'jbrcms', '1564472837', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('30', 'jbrcms', '1564472840', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('31', 'jbrcms', '1564472850', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('32', 'jbrcms', '1564472864', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('33', 'jbrcms', '1564472866', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('34', 'jbrcms', '1564472885', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('35', 'jbrcms', '1564472894', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('36', 'jbrcms', '1564472908', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('37', 'jbrcms', '1564472910', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('38', 'jbrcms', '1564472913', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('39', 'jbrcms', '1564472923', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('40', 'jbrcms', '1564472937', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('41', 'jbrcms', '1564472939', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('42', 'jbrcms', '1564472942', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('43', 'jbrcms', '1564472951', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('44', 'jbrcms', '1564472966', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('45', 'jbrcms', '1564472967', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('46', 'jbrcms', '1564472986', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('47', 'jbrcms', '1564472996', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('48', 'jbrcms', '1564473010', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('49', 'jbrcms', '1564473012', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('50', 'jbrcms', '1564473016', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('51', 'jbrcms', '1564473024', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('52', 'jbrcms', '1564473039', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('53', 'jbrcms', '1564473040', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('54', 'jbrcms', '1564473044', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('55', 'jbrcms', '1564473053', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('56', 'jbrcms', '1564473067', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('57', 'jbrcms', '1564473069', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('58', 'jbrcms', '1564473088', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('59', 'jbrcms', '1564473097', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('60', 'jbrcms', '1564473111', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('61', 'jbrcms', '1564473113', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('62', 'jbrcms', '1564473117', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('63', 'jbrcms', '1564473126', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('64', 'jbrcms', '1564473142', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('65', 'jbrcms', '1564473142', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('66', 'jbrcms', '1564473146', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('67', 'jbrcms', '1564473154', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('68', 'jbrcms', '1564473171', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('69', 'jbrcms', '1564473172', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('70', 'jbrcms', '1564473190', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('71', 'jbrcms', '1564473198', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('72', 'jbrcms', '1564473216', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('73', 'jbrcms', '1564473216', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('74', 'jbrcms', '1564473218', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('75', 'jbrcms', '1564473227', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('76', 'jbrcms', '1564473246', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('77', 'jbrcms', '1564473246', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('78', 'jbrcms', '1564473247', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('79', 'jbrcms', '1564473256', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('80', 'jbrcms', '1564473275', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('81', 'jbrcms', '1564473275', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('82', 'jbrcms', '1564473291', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('83', 'jbrcms', '1564473300', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('84', 'jbrcms', '1564473319', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('85', 'jbrcms', '1564473320', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('86', 'jbrcms', '1564473321', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('87', 'jbrcms', '1564473329', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('88', 'jbrcms', '1564473348', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('89', 'jbrcms', '1564473349', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('90', 'jbrcms', '1564473350', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('91', 'jbrcms', '1564473357', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('92', 'jbrcms', '1564473376', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('93', 'jbrcms', '1564473378', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('94', 'jbrcms', '1564473394', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('95', 'jbrcms', '1564473401', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('96', 'jbrcms', '1564473420', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('97', 'jbrcms', '1564473422', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('98', 'jbrcms', '1564473423', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('99', 'jbrcms', '1564473430', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('100', 'jbrcms', '1564473449', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('101', 'jbrcms', '1564473451', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('102', 'jbrcms', '1564473452', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('103', 'jbrcms', '1564473459', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('104', 'jbrcms', '1564473478', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('105', 'jbrcms', '1564473479', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('106', 'jbrcms', '1564473496', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('107', 'jbrcms', '1564473503', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('108', 'jbrcms', '1564473526', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('109', 'jbrcms', '1564473526', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('110', 'jbrcms', '1564473527', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('111', 'jbrcms', '1564473532', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('112', 'jbrcms', '1564473554', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('113', 'jbrcms', '1564473555', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('114', 'jbrcms', '1564473556', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('115', 'jbrcms', '1564473560', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('116', 'jbrcms', '1564473583', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('117', 'jbrcms', '1564473583', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('118', 'jbrcms', '1564473601', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('119', 'jbrcms', '1564473605', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('120', 'jbrcms', '1564473627', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('121', 'jbrcms', '1564473628', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('122', 'jbrcms', '1564473630', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('123', 'jbrcms', '1564473633', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('124', 'jbrcms', '1564473656', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('125', 'jbrcms', '1564473657', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('126', 'jbrcms', '1564473658', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('127', 'jbrcms', '1564473662', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('128', 'jbrcms', '1564473685', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('129', 'jbrcms', '1564473685', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('130', 'jbrcms', '1564473703', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('131', 'jbrcms', '1564473706', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('132', 'jbrcms', '1564473732', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('133', 'jbrcms', '1564473735', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('134', 'jbrcms', '1564473740', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('135', 'jbrcms', '1564473741', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('136', 'jbrcms', '1564473760', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('137', 'jbrcms', '1564473763', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('138', 'jbrcms', '1564473768', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('139', 'jbrcms', '1564473770', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('140', 'jbrcms', '1564473797', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('141', 'jbrcms', '1564473798', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('142', 'jbrcms', '1564473804', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('143', 'jbrcms', '1564473833', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('144', 'jbrcms', '1564473853', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('145', 'jbrcms', '1564473855', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('146', 'jbrcms', '1564473862', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('147', 'jbrcms', '1564473875', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('148', 'jbrcms', '1564473882', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('149', 'jbrcms', '1564473884', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('150', 'jbrcms', '1564473903', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('151', 'jbrcms', '1564473910', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('152', 'jbrcms', '1564473912', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('153', 'jbrcms', '1564473920', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('154', 'jbrcms', '1564473932', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('155', 'jbrcms', '1564473949', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('156', 'jbrcms', '1564473954', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('157', 'jbrcms', '1564473967', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('158', 'jbrcms', '1564473977', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('159', 'jbrcms', '1564473978', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('160', 'jbrcms', '1564473982', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('161', 'jbrcms', '1564473995', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('162', 'jbrcms', '1564474005', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('163', 'jbrcms', '1564474011', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('164', 'jbrcms', '1564474022', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('165', 'jbrcms', '1564474024', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('166', 'jbrcms', '1564474034', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('167', 'jbrcms', '1564474052', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('168', 'jbrcms', '1564474066', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('169', 'jbrcms', '1564474080', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('170', 'jbrcms', '1564474089', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('171', 'jbrcms', '1564474090', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('172', 'jbrcms', '1564474095', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('173', 'jbrcms', '1564474117', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('174', 'jbrcms', '1564474119', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('175', 'jbrcms', '1564474123', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('176', 'jbrcms', '1564474145', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('177', 'jbrcms', '1564474147', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('178', 'jbrcms', '1564474157', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('179', 'jbrcms', '1564474167', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('180', 'jbrcms', '1564474185', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('181', 'jbrcms', '1564474190', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('182', 'jbrcms', '1564474191', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('183', 'jbrcms', '1564474196', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('184', 'jbrcms', '1564474214', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('185', 'jbrcms', '1564474218', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('186', 'jbrcms', '1564474220', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('187', 'jbrcms', '1564474224', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('188', 'jbrcms', '1564474246', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('189', 'jbrcms', '1564474248', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('190', 'jbrcms', '1564474249', '219.140.226.35', '0', 'jbr123456', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('191', 'jbrcms', '1564474256', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('192', 'jbrcms', '1564474264', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('193', 'jbrcms', '1564474284', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('194', 'jbrcms', '1564474313', '117.78.46.77', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('195', 'admin', '1564479204', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('196', 'jbrcms', '1564535078', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('197', 'admin', '1564535321', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('198', 'jbrcms', '1564620814', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('199', 'admin', '1564641360', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('200', 'jbrcms', '1564641373', '219.140.226.35', '1', '密码保密', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('201', 'jbrcms', '1564641704', '219.140.226.35', '0', 'admin', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('202', 'jbrcms', '1564641720', '219.140.226.35', '0', 'admin', '用户名登录');
INSERT INTO `jbr_loginlog` VALUES ('203', 'jbrcms', '1564641741', '219.140.226.35', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `jbr_member`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_member`;
CREATE TABLE `jbr_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` char(6) NOT NULL COMMENT '随机码',
  `checked` tinyint(1) NOT NULL COMMENT '是否审核',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '性别,1男,2女,0未知',
  `about` varchar(255) NOT NULL COMMENT '个人介绍',
  `heat` int(11) NOT NULL DEFAULT '0' COMMENT '空间热度',
  `theme` char(11) NOT NULL DEFAULT '' COMMENT '空间主题名称',
  `praise` int(11) NOT NULL DEFAULT '0' COMMENT '被赞数',
  `attention` int(11) NOT NULL DEFAULT '0' COMMENT '关注数',
  `fans` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `share` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `nickname` char(20) NOT NULL COMMENT '昵称',
  `userpic` varchar(200) NOT NULL COMMENT '会员头像',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `regip` char(15) NOT NULL DEFAULT '' COMMENT '注册ip',
  `lastip` char(15) NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `email` char(32) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '地区id',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '钱金总额',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有短消息',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `vip` tinyint(1) NOT NULL COMMENT 'vip等级',
  `overduedate` int(10) NOT NULL COMMENT 'vip过期时间',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`(20)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of jbr_member
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_member_content`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_member_content`;
CREATE TABLE `jbr_member_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `content_id` int(10) NOT NULL COMMENT '信息ID',
  `userid` mediumint(8) NOT NULL COMMENT '会员ID',
  `integral` tinyint(1) NOT NULL COMMENT '是否赠送过点数',
  `status` tinyint(1) NOT NULL COMMENT '审核状态',
  `time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`catid`,`content_id`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员投稿信息记录表';

-- ----------------------------
-- Records of jbr_member_content
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_member_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_member_favorite`;
CREATE TABLE `jbr_member_favorite` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `userid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '用户UID',
  `modelid` smallint(6) NOT NULL DEFAULT '0' COMMENT '模型ID',
  `catid` smallint(6) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `title` varchar(255) NOT NULL COMMENT '收藏标题',
  `url` char(255) DEFAULT NULL COMMENT '信息地址',
  `datetime` int(11) NOT NULL COMMENT '添加时间戳',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收藏表';

-- ----------------------------
-- Records of jbr_member_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_member_group`;
CREATE TABLE `jbr_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员组id',
  `name` char(15) NOT NULL COMMENT '用户组名称',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是系统组',
  `starnum` tinyint(2) unsigned NOT NULL COMMENT '会员组星星数',
  `point` smallint(6) unsigned NOT NULL COMMENT '积分范围',
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '许允发短消息数量',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许访问',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发稿',
  `allowpostverify` tinyint(1) unsigned NOT NULL COMMENT '是否投稿不需审核',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许搜索',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许自主升级',
  `allowsendmessage` tinyint(1) unsigned NOT NULL COMMENT '允许发送短消息',
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '每天允许发文章数',
  `allowattachment` tinyint(1) NOT NULL COMMENT '是否允许上传附件',
  `icon` char(255) NOT NULL COMMENT '用户组图标',
  `usernamecolor` char(7) NOT NULL COMMENT '用户名颜色',
  `description` char(100) NOT NULL COMMENT '描述',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '序排',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `expand` mediumtext NOT NULL COMMENT '扩展',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`) USING BTREE,
  KEY `listorder` (`sort`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员组';

-- ----------------------------
-- Records of jbr_member_group
-- ----------------------------
INSERT INTO `jbr_member_group` VALUES ('8', '游客', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '', '0', '0', '');
INSERT INTO `jbr_member_group` VALUES ('2', '新手上路', '1', '1', '50', '100', '1', '1', '0', '1', '0', '1', '0', '0', '', '', '', '2', '0', '');
INSERT INTO `jbr_member_group` VALUES ('6', '注册会员', '1', '2', '100', '150', '0', '1', '0', '1', '1', '1', '0', '1', '', '', '', '6', '0', '');
INSERT INTO `jbr_member_group` VALUES ('4', '中级会员', '1', '3', '150', '500', '1', '1', '0', '1', '1', '1', '0', '1', '', '', '', '4', '0', '');
INSERT INTO `jbr_member_group` VALUES ('5', '高级会员', '1', '5', '300', '999', '1', '1', '1', '1', '1', '1', '0', '1', '', '', '', '5', '0', '');
INSERT INTO `jbr_member_group` VALUES ('1', '禁止访问', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '');
INSERT INTO `jbr_member_group` VALUES ('7', '邮件认证', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', 'images/group/vip.jpg', '#000000', '', '7', '0', '');

-- ----------------------------
-- Table structure for `jbr_member_online`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_member_online`;
CREATE TABLE `jbr_member_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` char(30) NOT NULL COMMENT '用户名',
  `lasttime` int(10) DEFAULT NULL COMMENT '最后操作时间戳',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING HASH,
  KEY `lasttime` (`userid`,`lasttime`) USING HASH
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线用户表';

-- ----------------------------
-- Records of jbr_member_online
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_menu`;
CREATE TABLE `jbr_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL COMMENT '应用标识',
  `controller` char(20) NOT NULL COMMENT '控制键',
  `action` char(20) NOT NULL COMMENT '方法',
  `parameter` char(255) NOT NULL COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of jbr_menu
-- ----------------------------
INSERT INTO `jbr_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('32', '后台登录日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('34', '删除一个月前的登录日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('37', '模块', '0', 'Admin', 'Module', 'index', '', '0', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('38', '在线云平台', '37', 'Admin', 'Cloud', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('39', '模块商店', '38', 'Admin', 'Moduleshop', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('40', '插件商店', '38', 'Admin', 'Addonshop', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('41', '在线升级', '38', 'Admin', 'Upgrade', 'index', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('42', '本地模块管理', '37', 'Admin', 'Module', 'local', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('43', '模块管理', '42', 'Admin', 'Module', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('108', '安装模块', '39', 'Admin', 'Moduleshop', 'install', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('109', '升级模块', '39', 'Admin', 'Moduleshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('110', '安装插件', '40', 'Admin', 'Addonshop', 'install', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('111', '升级插件', '40', 'Admin', 'Addonshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('113', '微信营销', '0', 'Weixin', 'MemberPublic', 'index', '', '0', '0', '微信功能管理', '1');
INSERT INTO `jbr_menu` VALUES ('114', '帐号管理', '113', 'Admin', 'MemberPublic', 'lists', '', '1', '1', '微信公众号管理', '0');
INSERT INTO `jbr_menu` VALUES ('115', '公众号管理', '114', 'Weixin', 'MemberPublic', 'lists', '', '1', '1', '公众号列表', '0');
INSERT INTO `jbr_menu` VALUES ('167', '生成自定义菜单', '127', 'Weixin', 'Weixin', 'sendmenu', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('117', '插件', '113', 'Aaa', 'Bbb', 'ccc', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('118', '自定义回复', '117', 'Weixin', 'CustomReply', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('119', '互动类', '113', 'Weixin', 'Hudong', 'c', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('120', '优惠劵', '119', 'Weixin', 'Coupon', 'couponlists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('121', '图文回复', '118', 'Weixin', 'CustomReply', 'newslists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('122', '多图文回复', '118', 'Weixin', 'CustomReplyMult', 'multlists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('123', '文本回复', '118', 'Weixin', 'CustomReplyText', 'textlists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('124', '接口配置帮助', '115', 'Weixin', 'MemberPublic', 'help', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('125', '刮刮卡', '119', 'Weixin', 'Scratch', 'scratchlists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('126', '新增公众号', '115', 'Weixin', 'MemberPublic', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('127', '自定义菜单', '117', 'Weixin', 'CustomMenu', 'lists', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('128', '新增自定义菜单', '127', 'Weixin', 'CustomMenu', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('129', '搜索配置', '42', 'Search', 'Search', 'index', '', '0', '1', '搜索配置！', '0');
INSERT INTO `jbr_menu` VALUES ('130', '重建索引', '129', 'Search', 'Search', 'create', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('131', '热门搜索', '129', 'Search', 'Search', 'searchot', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('132', '关注回复', '117', 'Weixin', 'AttentionReply', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('133', '会员卡制作', '117', 'Weixin', 'Card', 'card', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('134', '会员管理', '133', 'Weixin', 'Card', 'member', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('135', '通知管理', '133', 'Weixin', 'Card', 'notice', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('136', '用户', '0', 'Member', 'Member', 'index', '', '0', '0', '网站用户管理！', '0');
INSERT INTO `jbr_menu` VALUES ('137', '会员管理', '136', 'Member', 'Member', 'create', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('138', '会员设置', '137', 'Member', 'Setting', 'setting', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('139', 'Ucenter 测试数据库链接', '138', 'Member', 'Setting', 'myqsl_test', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('140', '会员管理', '137', 'Member', 'Member', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('141', '添加会员', '140', 'Member', 'Member', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('142', '修改会员', '140', 'Member', 'Member', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('143', '删除会员', '140', 'Member', 'Member', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('144', '锁定', '140', 'Member', 'Member', 'lock', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('145', '解除锁定', '140', 'Member', 'Member', 'unlock', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('146', '资料查看', '140', 'Member', 'Member', 'memberinfo', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('147', '审核会员', '137', 'Member', 'Member', 'userverify', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('148', '登录授权管理', '137', 'Member', 'Member', 'connect', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('149', '会员组管理', '137', 'Member', 'Group', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('150', '添加会员组', '149', 'Member', 'Group', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('151', '编辑会员组', '149', 'Member', 'Group', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('152', '删除会员组', '149', 'Member', 'Group', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('153', '会员组排序', '149', 'Member', 'Group', 'sort', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('154', '模型管理', '136', 'Member', 'Model', 'index', '', '0', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('155', '模型管理', '154', 'Member', 'Model', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('156', '添加模型', '155', 'Member', 'Model', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('157', '编辑模型', '155', 'Member', 'Model', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('158', '删除模型', '155', 'Member', 'Model', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('159', '移动模型', '155', 'Member', 'Model', 'move', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('160', '字段管理', '155', 'Member', 'Modelfield', 'index', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('161', '添加字段', '160', 'Member', 'Field', 'add', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('162', '字段编辑', '160', 'Member', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('163', '删除字段', '160', 'Member', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('164', '字段排序', '160', 'Member', 'Field', 'listorder', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('165', '字段启用与禁用', '160', 'Member', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `jbr_menu` VALUES ('166', '微信用户管理', '117', 'Weixin', 'UserCenter', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('168', '关键词维护', '114', 'Weixin', 'Keyword', 'index', '', '1', '1', '', '0');
INSERT INTO `jbr_menu` VALUES ('169', '留言版', '45', 'Message', 'Message', 'index', '', '1', '0', '', '0');

-- ----------------------------
-- Table structure for `jbr_model`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_model`;
CREATE TABLE `jbr_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL COMMENT '模型名称',
  `description` char(100) NOT NULL COMMENT '描述',
  `tablename` char(20) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL COMMENT '风格',
  `category_template` char(30) NOT NULL COMMENT '栏目模板',
  `list_template` char(30) NOT NULL COMMENT '列表模板',
  `show_template` char(30) NOT NULL COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  `type` tinyint(1) NOT NULL COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_model
-- ----------------------------
INSERT INTO `jbr_model` VALUES ('1', '新闻模型', '', 'article', '', '1413251172', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `jbr_model` VALUES ('2', '图片模型', '', 'images', '', '1413251190', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `jbr_model` VALUES ('3', '下载模型', '', 'download', '', '1413251231', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `jbr_model` VALUES ('4', '产品模型', '', 'product', '', '1413251300', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `jbr_model` VALUES ('5', '招聘模型', '', 'jobs', '', '1413269781', '0', '1', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `jbr_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_model_field`;
CREATE TABLE `jbr_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL COMMENT '字段名',
  `name` varchar(30) NOT NULL COMMENT '别名',
  `tips` text NOT NULL COMMENT '字段提示',
  `css` varchar(30) NOT NULL COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL COMMENT '字段类型',
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`) USING BTREE,
  KEY `field` (`field`,`modelid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_model_field
-- ----------------------------
INSERT INTO `jbr_model_field` VALUES ('79', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('78', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('76', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('77', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('75', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('74', '2', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('126', '5', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('127', '5', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('128', '5', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('129', '5', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('70', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('71', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('72', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('69', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('67', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('65', '2', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('66', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('63', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('64', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('62', '1', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('61', '1', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('60', '1', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('59', '1', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('57', '1', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('58', '1', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('54', '1', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('55', '1', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('56', '1', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('53', '1', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('52', '1', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('51', '1', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('50', '1', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('48', '1', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('49', '1', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('47', '1', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('43', '1', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('44', '1', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('45', '1', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('46', '1', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('80', '2', 'description', '摘要', '', '', '0', '0', '', '', 'editor', 'a:8:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('81', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('130', '5', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('131', '5', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('132', '5', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('133', '5', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('83', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('84', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('85', '3', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('86', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('87', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('89', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('90', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('91', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('92', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('93', '3', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('94', '3', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('95', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('96', '3', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('97', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('98', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('99', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('100', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '6', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('101', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('123', '3', 'fill', '下载文件上传', '只能上传单个文件', '', '0', '0', '', '', 'downfile', 'a:11:{s:5:\"width\";s:3:\"400\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"upload_allowext\";s:37:\"gif|jpg|jpeg|png|bmp|zip|rar|doc|docx\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:10:\"statistics\";s:5:\"count\";s:12:\"downloadlink\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('124', '4', 'images', '多图展示', '产品有多张图片时，请长传！', '', '0', '0', '', '', 'images', 'a:8:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:9:\"watermark\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '1', '9', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('103', '4', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('104', '4', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('105', '4', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('106', '4', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('107', '4', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('125', '5', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('109', '4', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('110', '4', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('111', '4', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('112', '4', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('113', '4', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('114', '4', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('115', '4', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('116', '4', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('117', '4', 'title', '产品名称', '产品名称', 'inputtitle', '1', '80', '', '请输入产品名称', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('118', '4', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('119', '4', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('120', '4', 'description', '产品简介', '', '', '0', '0', '', '', 'editor', 'a:8:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:6:\"暂无\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"300\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('121', '4', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('122', '4', 'content', '产品详细', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>', '', '1', '999999', '', '产品详细不能为空', 'editor', 'a:8:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:6:\"暂无\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:3:\"300\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('134', '5', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('135', '5', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('136', '5', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('137', '5', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('138', '5', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('139', '5', 'title', '职位名称', '', 'inputtitle', '1', '80', '', '请输入职位名称', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('140', '5', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('141', '5', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('142', '5', 'description', '岗位描述', '', '', '0', '0', '', '', 'editor', 'a:8:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('143', '5', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');
INSERT INTO `jbr_model_field` VALUES ('144', '5', 'content', '任职资格', '', '', '1', '999999', '', '内容不能为空', 'editor', 'a:8:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '6', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('145', '4', 'xinghao', '型号', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"400\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('146', '4', 'Volume', '容积', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"400\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('147', '4', 'tel', '联系电话', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"400\";s:12:\"defaultvalue\";s:6:\"暂无\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '4', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('148', '4', 'shiyong', '适用标准', '', '', '0', '0', '', '', 'editor', 'a:10:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('149', '4', 'guige', '规格参数', '', '', '0', '0', '', '', 'editor', 'a:10:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:6:\"暂无\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `jbr_model_field` VALUES ('150', '4', 'beizhu', '备注', '', '', '0', '0', '', '', 'editor', 'a:10:{s:7:\"toolbar\";s:4:\"full\";s:9:\"mbtoolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:12:\"暂无暂无\";s:15:\"enablesaveimage\";s:1:\"0\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '5', '0', '0');

-- ----------------------------
-- Table structure for `jbr_module`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_module`;
CREATE TABLE `jbr_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL COMMENT '模块名称',
  `sign` varchar(255) NOT NULL COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext NOT NULL COMMENT '设置信息',
  `installtime` int(10) NOT NULL COMMENT '安装时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of jbr_module
-- ----------------------------
INSERT INTO `jbr_module` VALUES ('Search', '搜索', '2e01dfe1d6be7e454aea66c442639b7e', '0', '1', '1.0.0', '', '1408607033', '1408607033', '0');
INSERT INTO `jbr_module` VALUES ('Member', '会员中心', '05f78872791fe1847815f5a192aa6dce', '0', '1', '1.0.0', 'a:29:{s:9:\"interface\";s:5:\"Local\";s:13:\"allowregister\";s:1:\"1\";s:11:\"choosemodel\";s:1:\"0\";s:15:\"enablemailcheck\";s:1:\"0\";s:14:\"registerverify\";s:1:\"0\";s:12:\"showapppoint\";s:1:\"1\";s:14:\"rmb_point_rate\";s:1:\"1\";s:12:\"defualtpoint\";s:1:\"0\";s:13:\"defualtamount\";s:1:\"0\";s:15:\"showregprotocol\";s:1:\"1\";s:16:\"openverification\";s:1:\"1\";s:11:\"regprotocol\";s:1755:\"欢迎您注册成为ShuipFCMS用户,请仔细阅读下面的协议，只有接受协议才能继续进行注册。\r\n      1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，ShuipFCMS将取消用户服务帐号。 \";s:21:\"registerverifymessage\";s:315:\"Hi，{$username}:\r\n\r\n欢迎您注册成为ShuipFCMS用户，您的账号需要邮箱认证，点击下面链接进行认证：\r\n\r\n<a href=\"{$url}\" target=\"_blank\">{$url}</a>\r\n\r\n如果链接无法点击，请完整拷贝到浏览器地址栏里直接访问。\r\n\r\n邮件服务器自动发送邮件请勿回信 {$date}\";s:14:\"forgetpassword\";s:323:\"Hi，{$username}:\r\n\r\n你申请了重设密码，请在24小时内点击下面的链接，然后根据页面提示完成密码重设：\r\n\r\n<a href=\"{$url}\" target=\"_blank\">{$url}</a>\r\n\r\n如果链接无法点击，请完整拷贝到浏览器地址栏里直接访问。\r\n\r\n邮件服务器自动发送邮件请勿回信 {$date}\";s:10:\"uc_connect\";s:0:\"\";s:6:\"uc_api\";s:0:\"\";s:5:\"uc_ip\";s:0:\"\";s:9:\"uc_dbhost\";s:0:\"\";s:9:\"uc_dbuser\";s:0:\"\";s:7:\"uc_dbpw\";s:0:\"\";s:9:\"uc_dbname\";s:0:\"\";s:13:\"uc_dbtablepre\";s:0:\"\";s:12:\"uc_dbcharset\";s:0:\"\";s:8:\"uc_appid\";s:0:\"\";s:6:\"uc_key\";s:0:\"\";s:11:\"sinawb_akey\";s:0:\"\";s:11:\"sinawb_skey\";s:0:\"\";s:7:\"qq_akey\";s:0:\"\";s:7:\"qq_skey\";s:0:\"\";}', '1409018073', '1409018073', '0');

-- ----------------------------
-- Table structure for `jbr_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_operationlog`;
CREATE TABLE `jbr_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL COMMENT '操作帐号ID',
  `time` int(10) NOT NULL COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text NOT NULL COMMENT '其他说明',
  `get` varchar(255) NOT NULL COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE,
  KEY `username` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2181 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of jbr_operationlog
-- ----------------------------
INSERT INTO `jbr_operationlog` VALUES ('1966', '1', '1564453353', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1965', '0', '1564453115', '219.140.226.35', '0', '提示语：您输错的次数已超过5次，请2小时候再试!<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1964', '1', '1564453038', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1963', '1', '1564452825', '219.140.226.35', '1', '提示语：密码已经更新，请从新登录！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1962', '1', '1564452820', '219.140.226.35', '1', '提示语：密码正确！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1961', '1', '1564452807', '219.140.226.35', '0', '提示语：修改当前登录用户信息请进入[我的面板]中进行修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=manager&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1960', '1', '1564452786', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：attach<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `jbr_operationlog` VALUES ('1959', '1', '1564452663', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：attach<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `jbr_operationlog` VALUES ('1958', '1', '1564451541', '219.140.226.35', '1', '提示语：删除操作日志成功！<br/>模块：Admin,控制器：Logs,方法：deletelog<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php?m=Logs&menuid=33');
INSERT INTO `jbr_operationlog` VALUES ('1920', '1', '1564449269', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1921', '1', '1564449688', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1922', '0', '1564449700', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1923', '0', '1564449729', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1924', '0', '1564449737', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1925', '0', '1564449743', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1926', '0', '1564449748', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1927', '0', '1564449754', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1928', '1', '1564449859', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1929', '0', '1564449865', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1930', '0', '1564449878', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1931', '0', '1564449885', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1932', '0', '1564449890', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1933', '0', '1564449895', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1934', '0', '1564449907', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1935', '1', '1564450151', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test2.jbr.net.cn:802/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1936', '0', '1564450160', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1937', '0', '1564450165', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1938', '0', '1564450172', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1939', '0', '1564450179', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1940', '0', '1564450184', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1941', '0', '1564450191', '219.140.226.35', '0', '提示语：您输错的次数已超过5次，请2小时候再试!<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1942', '0', '1564450221', '219.140.226.35', '0', '提示语：您输错的次数已超过5次，请2小时候再试!<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test2.jbr.net.cn:802/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1943', '1', '1564450305', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Menu&a=edit&id=86');
INSERT INTO `jbr_operationlog` VALUES ('1944', '1', '1564450318', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Menu&a=edit&id=169');
INSERT INTO `jbr_operationlog` VALUES ('1945', '1', '1564450915', '219.140.226.35', '0', '提示语：两次密码不一致<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1946', '1', '1564450921', '219.140.226.35', '0', '提示语：两次密码不一致<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1947', '1', '1564450931', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1948', '1', '1564450945', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1949', '1', '1564450956', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1950', '1', '1564450966', '219.140.226.35', '1', '提示语：添加管理员成功！<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1951', '1', '1564450981', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1952', '1', '1564451049', '219.140.226.35', '0', '提示语：两次密码不一致<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1953', '1', '1564451057', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1954', '1', '1564451066', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1955', '1', '1564451073', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1956', '1', '1564451085', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1957', '1', '1564451102', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://test2.jbr.net.cn:802/admin.php?m=Management&a=edit&id=5');
INSERT INTO `jbr_operationlog` VALUES ('1967', '1', '1564455304', '219.140.226.35', '0', '提示语：密码不能为空！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1968', '1', '1564456074', '219.140.226.35', '0', '提示语：请输入旧密码！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1969', '1', '1564456446', '219.140.226.35', '0', '提示语：密码错误！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1970', '1', '1564456446', '219.140.226.35', '0', '提示语：旧密码不正确或者该用户不存在！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1971', '1', '1564456609', '219.140.226.35', '1', '提示语：密码正确！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1972', '1', '1564456613', '219.140.226.35', '0', '提示语：两次密码不相同！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1973', '1', '1564456620', '219.140.226.35', '0', '提示语：两次密码不相同！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1974', '1', '1564456628', '219.140.226.35', '1', '提示语：密码已经更新，请从新登录！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1975', '1', '1564456764', '219.140.226.35', '1', '提示语：密码正确！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1976', '1', '1564456769', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1977', '1', '1564456777', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1978', '1', '1564456778', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1979', '1', '1564456779', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1980', '1', '1564456779', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1981', '1', '1564456779', '219.140.226.35', '0', '提示语：两次密码不一致22<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1982', '1', '1564456880', '219.140.226.35', '1', '提示语：密码正确！<br/>模块：Admin,控制器：Adminmanage,方法：public_verifypass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1983', '1', '1564456885', '219.140.226.35', '0', '提示语：两次密码不相同！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1984', '1', '1564456888', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1985', '1', '1564456894', '219.140.226.35', '0', '提示语：密码为10位以上数字字母组合！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1986', '1', '1564456905', '219.140.226.35', '1', '提示语：密码已经更新，请从新登录！<br/>模块：Admin,控制器：Adminmanage,方法：chanpass<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Adminmanage&a=chanpass&menuid=6');
INSERT INTO `jbr_operationlog` VALUES ('1987', '1', '1564457543', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('1988', '0', '1564457566', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test.jbryun.com:810/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('1989', '1', '1564457584', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Admin,控制器：Management,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Management&a=manager&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('1990', '1', '1564457610', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('1991', '1', '1564457613', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1992', '1', '1564457615', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1993', '1', '1564457616', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1994', '1', '1564457617', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1995', '1', '1564457618', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1996', '1', '1564457619', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1997', '1', '1564457619', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1998', '1', '1564457621', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('1999', '1', '1564457622', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2000', '1', '1564457623', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2001', '1', '1564457624', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2002', '1', '1564457625', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2003', '1', '1564457625', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2004', '1', '1564457626', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2005', '1', '1564457627', '219.140.226.35', '1', '提示语：删除成功！<br/>模块：Content,控制器：Urlrule,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule');
INSERT INTO `jbr_operationlog` VALUES ('2006', '1', '1564465391', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2007', '1', '1564465414', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2008', '1', '1564465428', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2009', '1', '1564465428', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2010', '1', '1564465429', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2011', '1', '1564465432', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2012', '1', '1564465432', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2013', '1', '1564465433', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2014', '1', '1564465433', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2015', '1', '1564465433', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2016', '1', '1564465434', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2017', '1', '1564465434', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2018', '1', '1564465434', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2019', '1', '1564465435', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2020', '1', '1564465435', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2021', '1', '1564465436', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2022', '1', '1564465436', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2023', '1', '1564465436', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2024', '1', '1564465437', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2025', '1', '1564465441', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2026', '1', '1564465443', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2027', '1', '1564465524', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2028', '1', '1564465551', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2029', '1', '1564465569', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2030', '1', '1564465570', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2031', '1', '1564465570', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2032', '1', '1564465573', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2033', '1', '1564465574', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2034', '1', '1564465574', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2035', '1', '1564465574', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2036', '1', '1564465575', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2037', '1', '1564465575', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2038', '1', '1564465576', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2039', '1', '1564465576', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2040', '1', '1564465576', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2041', '1', '1564465577', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2042', '1', '1564465577', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2043', '1', '1564465578', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2044', '1', '1564465578', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2045', '1', '1564465578', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2046', '1', '1564465581', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2047', '1', '1564465583', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2048', '1', '1564465697', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2049', '1', '1564465726', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2050', '1', '1564465747', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2051', '1', '1564465766', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2052', '1', '1564465773', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2053', '1', '1564465773', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2054', '1', '1564465773', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2055', '1', '1564465777', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2056', '1', '1564465777', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2057', '1', '1564465777', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2058', '1', '1564465778', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2059', '1', '1564465778', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2060', '1', '1564465778', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2061', '1', '1564465779', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2062', '1', '1564465779', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2063', '1', '1564465779', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2064', '1', '1564465780', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2065', '1', '1564465780', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2066', '1', '1564465780', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2067', '1', '1564465781', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2068', '1', '1564465781', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2069', '1', '1564465784', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2070', '1', '1564465785', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2071', '1', '1564466214', '219.140.226.35', '0', '提示语：删除附件失败！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2072', '1', '1564466218', '219.140.226.35', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2073', '1', '1564466228', '219.140.226.35', '0', '提示语：删除附件失败！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2074', '1', '1564466231', '219.140.226.35', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2075', '1', '1564466236', '219.140.226.35', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2076', '1', '1564466241', '219.140.226.35', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2077', '1', '1564466245', '219.140.226.35', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `jbr_operationlog` VALUES ('2078', '1', '1564466956', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Menu&a=edit&id=113');
INSERT INTO `jbr_operationlog` VALUES ('2079', '1', '1564467033', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Menu&a=edit&id=113');
INSERT INTO `jbr_operationlog` VALUES ('2080', '1', '1564467045', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Menu&a=edit&id=136');
INSERT INTO `jbr_operationlog` VALUES ('2081', '1', '1564467290', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Menu&a=edit&id=136');
INSERT INTO `jbr_operationlog` VALUES ('2082', '1', '1564472229', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2083', '1', '1564472251', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2084', '1', '1564472345', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2085', '0', '1564474249', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test.jbryun.com:810/index.php?g=Admin&m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('2086', '1', '1564535313', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2087', '4', '1564535344', '219.140.226.35', '0', '提示语：修改当前登录用户信息请进入[我的面板]中进行修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?m=Management&a=manager&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('2088', '4', '1564535352', '219.140.226.35', '0', '提示语：修改当前登录用户信息请进入[我的面板]中进行修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?m=Management&a=manager&menuid=22');
INSERT INTO `jbr_operationlog` VALUES ('2089', '4', '1564535365', '219.140.226.35', '0', '提示语：修改当前登录用户信息请进入[我的面板]中进行修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?m=Management&a=manager&role_id=1');
INSERT INTO `jbr_operationlog` VALUES ('2090', '4', '1564535368', '219.140.226.35', '0', '提示语：该帐号不允许修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?m=Management&a=manager&role_id=1');
INSERT INTO `jbr_operationlog` VALUES ('2091', '1', '1564627971', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2092', '1', '1564628001', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2093', '1', '1564628016', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2094', '1', '1564628016', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2095', '1', '1564628016', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2096', '1', '1564628020', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2097', '1', '1564628020', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2098', '1', '1564628020', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2099', '1', '1564628021', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2100', '1', '1564628021', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2101', '1', '1564628022', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2102', '1', '1564628022', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2103', '1', '1564628022', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2104', '1', '1564628023', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2105', '1', '1564628023', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2106', '1', '1564628023', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2107', '1', '1564628024', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2108', '1', '1564628024', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2109', '1', '1564628025', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2110', '1', '1564628027', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2111', '1', '1564628028', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2112', '1', '1564628082', '219.140.226.35', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/admin.php?m=Menu&a=edit&id=68');
INSERT INTO `jbr_operationlog` VALUES ('2113', '1', '1564628096', '219.140.226.35', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2114', '1', '1564630536', '219.140.226.35', '1', '提示语：添加成功！<br/>模块：Content,控制器：Urlrule,方法：add<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=add&menuid=74');
INSERT INTO `jbr_operationlog` VALUES ('2115', '1', '1564630560', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2116', '1', '1564630561', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2117', '1', '1564630561', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2118', '1', '1564630565', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2119', '1', '1564630566', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2120', '1', '1564630567', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2121', '1', '1564630568', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2122', '1', '1564630569', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2123', '1', '1564630570', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2124', '1', '1564630571', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2125', '1', '1564630572', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2126', '1', '1564630573', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2127', '1', '1564630574', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2128', '1', '1564630575', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2129', '1', '1564630575', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2130', '1', '1564630575', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2131', '1', '1564630576', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2132', '1', '1564630579', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2133', '1', '1564630581', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2134', '1', '1564630607', '219.140.226.35', '1', '提示语：修改成功！<br/>模块：Content,控制器：Urlrule,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=edit&urlruleid=7');
INSERT INTO `jbr_operationlog` VALUES ('2135', '1', '1564630618', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2136', '1', '1564630618', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2137', '1', '1564630619', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2138', '1', '1564630622', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2139', '1', '1564630622', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2140', '1', '1564630623', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2141', '1', '1564630623', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2142', '1', '1564630623', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2143', '1', '1564630624', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2144', '1', '1564630624', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2145', '1', '1564630625', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2146', '1', '1564630625', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2147', '1', '1564630625', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2148', '1', '1564630626', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2149', '1', '1564630626', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2150', '1', '1564630626', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2151', '1', '1564630627', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2152', '1', '1564630631', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2153', '1', '1564630633', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2154', '1', '1564630775', '219.140.226.35', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2155', '1', '1564638471', '219.140.226.35', '1', '提示语：修改成功！<br/>模块：Content,控制器：Urlrule,方法：edit<br/>请求方式：Ajax', 'http://test.jbryun.com:810/index.php?m=Urlrule&a=edit&urlruleid=6');
INSERT INTO `jbr_operationlog` VALUES ('2156', '1', '1564638500', '219.140.226.35', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2157', '1', '1564638501', '219.140.226.35', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site');
INSERT INTO `jbr_operationlog` VALUES ('2158', '1', '1564638501', '219.140.226.35', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `jbr_operationlog` VALUES ('2159', '1', '1564638504', '219.140.226.35', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `jbr_operationlog` VALUES ('2160', '1', '1564638505', '219.140.226.35', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=1');
INSERT INTO `jbr_operationlog` VALUES ('2161', '1', '1564638505', '219.140.226.35', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=2');
INSERT INTO `jbr_operationlog` VALUES ('2162', '1', '1564638505', '219.140.226.35', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=3');
INSERT INTO `jbr_operationlog` VALUES ('2163', '1', '1564638506', '219.140.226.35', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=4');
INSERT INTO `jbr_operationlog` VALUES ('2164', '1', '1564638506', '219.140.226.35', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=5');
INSERT INTO `jbr_operationlog` VALUES ('2165', '1', '1564638506', '219.140.226.35', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=6');
INSERT INTO `jbr_operationlog` VALUES ('2166', '1', '1564638507', '219.140.226.35', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=7');
INSERT INTO `jbr_operationlog` VALUES ('2167', '1', '1564638507', '219.140.226.35', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=8');
INSERT INTO `jbr_operationlog` VALUES ('2168', '1', '1564638507', '219.140.226.35', '1', '提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=9');
INSERT INTO `jbr_operationlog` VALUES ('2169', '1', '1564638508', '219.140.226.35', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=10');
INSERT INTO `jbr_operationlog` VALUES ('2170', '1', '1564638508', '219.140.226.35', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=11');
INSERT INTO `jbr_operationlog` VALUES ('2171', '1', '1564638508', '219.140.226.35', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=12');
INSERT INTO `jbr_operationlog` VALUES ('2172', '1', '1564638509', '219.140.226.35', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache&type=site&stop=13');
INSERT INTO `jbr_operationlog` VALUES ('2173', '1', '1564638512', '219.140.226.35', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2174', '1', '1564638514', '219.140.226.35', '1', '提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php?a=cache');
INSERT INTO `jbr_operationlog` VALUES ('2175', '1', '1564638793', '219.140.226.35', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2176', '1', '1564641352', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2177', '4', '1564641363', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2178', '1', '1564641376', '219.140.226.35', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://test.jbryun.com:810/admin.php');
INSERT INTO `jbr_operationlog` VALUES ('2179', '0', '1564641704', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test.jbryun.com:810/admin.php?m=Public&a=login');
INSERT INTO `jbr_operationlog` VALUES ('2180', '0', '1564641720', '219.140.226.35', '0', '提示语：用户名或者密码错误，登录失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://test.jbryun.com:810/admin.php?m=Public&a=login');

-- ----------------------------
-- Table structure for `jbr_page`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_page`;
CREATE TABLE `jbr_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL COMMENT '标题',
  `style` varchar(24) NOT NULL COMMENT '样式',
  `keywords` varchar(40) NOT NULL COMMENT '关键字',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of jbr_page
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_position`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_position`;
CREATE TABLE `jbr_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) DEFAULT '0' COMMENT '模型id',
  `catid` char(30) DEFAULT '0' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of jbr_position
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_position_data`;
CREATE TABLE `jbr_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) DEFAULT NULL COMMENT '模型',
  `modelid` smallint(6) unsigned DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`) USING BTREE,
  KEY `listorder` (`listorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- ----------------------------
-- Records of jbr_position_data
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_product`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_product`;
CREATE TABLE `jbr_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_product
-- ----------------------------
INSERT INTO `jbr_product` VALUES ('1', '7', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e1284d6dd5.jpg', '', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱</span></p>', '1', '/index.php?a=shows&catid=7&id=1', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413354133', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('2', '7', '0', 'YG751E系列', '', '/d/file/content/2014/10/543e152dde237.jpg', 'YG751E系列', '', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列<strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong><strong style=\"font-size: 16px; margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; line-height: 35px; background-color: rgb(249, 249, 249);\">YG751E系列</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></p>', '1', '/index.php?a=shows&catid=7&id=2', '0', '99', '1', '0', 'jbrcms', '1413354816', '1413354816', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('3', '8', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', '', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=8&id=3', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('4', '8', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=8&id=4', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('5', '8', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=8&id=5', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('6', '8', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=8&id=6', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('7', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=7', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('8', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=9&id=8', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('9', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=9', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('10', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=9&id=10', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('11', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=9&id=11', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('12', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=12', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('13', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=9&id=13', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('14', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=14', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('15', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=15', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('16', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=16', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('17', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=17', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('18', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=18', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('19', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=9&id=19', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('20', '9', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '1', '/index.php?a=shows&catid=9&id=20', '0', '99', '1', '0', 'jbrcms', '1413355723', '1413355723', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('21', '10', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=8&id=3', '0', '99', '0', '0', 'jbrcms', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('22', '11', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=8&id=3', '0', '99', '0', '0', 'jbrcms', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('23', '12', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=8&id=3', '0', '99', '0', '0', 'jbrcms', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jbr_product` VALUES ('24', '13', '0', 'YG751E系列智能型恒温恒湿箱', '', '/d/file/content/2014/10/543e191c39eea.png', 'YG751E系列', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18px; line-height: 62px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1</span></p>', '0', '/index.php?a=shows&catid=8&id=3', '0', '99', '0', '0', 'jbrcms', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `jbr_product_data`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_product_data`;
CREATE TABLE `jbr_product_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `xinghao` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Volume` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '暂无',
  `shiyong` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `guige` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `beizhu` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jbr_product_data
-- ----------------------------
INSERT INTO `jbr_product_data` VALUES ('1', '<p>暂无</p>', '', '0', '1', '', 'a:5:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e12931f7b8.jpg\";s:3:\"alt\";s:3:\"cp3\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e12934ce6b.jpg\";s:3:\"alt\";s:3:\"cp4\";}i:4;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1293822d9.jpg\";s:3:\"alt\";s:3:\"cp5\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p>暂无</p>', '<p>暂无</p>', '<p>暂无</p>');
INSERT INTO `jbr_product_data` VALUES ('2', '<p>暂无</p>', '', '0', '1', '', 'a:3:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce776e6ec3.jpg\";s:3:\"alt\";s:3:\"111\";}}', 'YG751E系列', 'YG751E系列', 'YG751E系列', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 16px; line-height: 35px; white-space: normal; background-color: rgb(249, 249, 249);\">YG751E系列</strong></p>', '<p>暂无</p>', '<p>暂无暂无</p>');
INSERT INTO `jbr_product_data` VALUES ('3', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱123</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('4', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('5', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('6', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('7', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('8', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('9', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('10', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('11', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('12', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('13', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('14', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('15', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('16', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('17', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('18', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('19', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('20', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('21', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('22', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('23', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');
INSERT INTO `jbr_product_data` VALUES ('24', '<p>暂无</p>', '', '0', '1', '', 'a:4:{i:0;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292c0afa.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:1;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1292f19c8.jpg\";s:3:\"alt\";s:3:\"cp2\";}i:2;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543e1284d6dd5.jpg\";s:3:\"alt\";s:3:\"cp1\";}i:3;a:2:{s:3:\"url\";s:41:\"/d/file/content/2014/10/543ce782743e2.png\";s:3:\"alt\";s:13:\"53bfa15af0362\";}}', 'YG751E系列', '100L-1000L（升）', '暂无', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱12</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, arial, &#39;Hiragino Sans GB&#39;, 宋体, sans-serif; font-size: 18.18181800842285px; line-height: 62.000003814697266px; background-color: rgb(249, 249, 249);\">YG751E系列智能型恒温恒湿箱1234</span></p>');

-- ----------------------------
-- Table structure for `jbr_role`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_role`;
CREATE TABLE `jbr_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `parentid` smallint(6) NOT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of jbr_role
-- ----------------------------
INSERT INTO `jbr_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `jbr_role` VALUES ('2', '管理员', '1', '1', '管理员', '1329633722', '1413255671', '0');

-- ----------------------------
-- Table structure for `jbr_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_role_user`;
CREATE TABLE `jbr_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_search`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_search`;
CREATE TABLE `jbr_search` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息id',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `modelid` smallint(5) NOT NULL COMMENT '模型id',
  `adddate` int(10) unsigned NOT NULL COMMENT '添加时间',
  `data` text NOT NULL COMMENT '数据',
  PRIMARY KEY (`searchid`),
  KEY `id` (`id`,`catid`,`adddate`) USING BTREE,
  KEY `modelid` (`modelid`,`catid`) USING BTREE,
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='全站搜索数据表';

-- ----------------------------
-- Records of jbr_search
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_search_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_search_keyword`;
CREATE TABLE `jbr_search_keyword` (
  `keyword` char(20) NOT NULL COMMENT '关键字',
  `pinyin` char(20) NOT NULL COMMENT '关键字拼音',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `data` char(20) NOT NULL,
  UNIQUE KEY `keyword` (`keyword`) USING BTREE,
  UNIQUE KEY `pinyin` (`pinyin`) USING BTREE,
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索关键字表';

-- ----------------------------
-- Records of jbr_search_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_tags`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_tags`;
CREATE TABLE `jbr_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `style` char(5) NOT NULL COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`) USING BTREE,
  KEY `usetimes` (`usetimes`,`listorder`) USING BTREE,
  KEY `hits` (`hits`,`listorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of jbr_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_tags_content`;
CREATE TABLE `jbr_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) DEFAULT NULL COMMENT '信息地址',
  `title` varchar(80) DEFAULT NULL COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`) USING BTREE,
  KEY `tag` (`tag`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of jbr_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_terms`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_terms`;
CREATE TABLE `jbr_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext NOT NULL COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE,
  KEY `module` (`module`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of jbr_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `jbr_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_urlrule`;
CREATE TABLE `jbr_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL COMMENT '所属模块',
  `file` varchar(20) NOT NULL COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL COMMENT 'url规则',
  `example` varchar(255) NOT NULL COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbr_urlrule
-- ----------------------------
INSERT INTO `jbr_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `jbr_urlrule` VALUES ('2', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `jbr_urlrule` VALUES ('3', 'content', 'category', '0', 'list/{$catid}.html|list/{$catid}/{$page}.html', '伪静态示例：list/1/1.html');
INSERT INTO `jbr_urlrule` VALUES ('4', 'content', 'show', '0', 'show/{$catid}/{$id}.html', '伪静态示例：show/1/1.html');
INSERT INTO `jbr_urlrule` VALUES ('5', 'content', 'category', '1', '{$categorydir}{$catdir}.html|{$categorydir}{$catdir}_{$page}.html', '静态：栏目静态规则');
INSERT INTO `jbr_urlrule` VALUES ('6', 'content', 'show', '1', '{$catdir}/{$id}.html', '静态：内容静态');
INSERT INTO `jbr_urlrule` VALUES ('7', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：首页静态');

-- ----------------------------
-- Table structure for `jbr_user`
-- ----------------------------
DROP TABLE IF EXISTS `jbr_user`;
CREATE TABLE `jbr_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称/姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `bind_account` varchar(50) NOT NULL COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL COMMENT '证验码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text NOT NULL COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of jbr_user
-- ----------------------------
INSERT INTO `jbr_user` VALUES ('1', 'jbrcms', '未知啊', 'e18c78ba11e121463bc4321d326b6e63', '', '1564641741', '219.140.226.35', 'su4u5f', 'admin@abc3210.com', '备注信息', '1407810785', '1407810785', '1', '1', '');
INSERT INTO `jbr_user` VALUES ('4', 'admin', ' 管理员', '237f4a34106d9cb33ea25f7b41f1f8fe', '', '1564641360', '219.140.226.35', 'e1emOC', 'admin@admin.com', '', '1413255818', '1413255818', '1', '1', '');

-- ----------------------------
-- Table structure for `jbren_message`
-- ----------------------------
DROP TABLE IF EXISTS `jbren_message`;
CREATE TABLE `jbren_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `name` char(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '留言者姓名',
  `Phone` varchar(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `content` text CHARACTER SET utf8 COMMENT '留言内容',
  `inputtime` int(11) NOT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jbren_message
-- ----------------------------
INSERT INTO `jbren_message` VALUES ('1', 'Lucile Man', '123456', 'pepdealc@gmail.com', 'Do you have a Facebook page,Twitter profile or YouTube Video. You can increase Fans/likes,followers,views with our affoardable promotional Packages. \r\n \r\nPackages: \r\n \r\n1) 5,000 Facebook Fans/Likes ($70) = Order at:- http://tinyurl.com/mpdnkle \r\n2) 5,000 Twitter followers ($70) = Order at:- http://tinyurl.com/mbuwx56 \r\n3) 50,000 YouTube views ($60) = Order at:- http://tinyurl.com/k964qre \r\n \r\nYou can also order smaller or bigger package from our official website.For query, please contact the official website. \r\n \r\nThank You', '1411677968');
INSERT INTO `jbren_message` VALUES ('4', 'inha ryoo', '', 'apsogane@naver.com', 'Hi there\r\nI am ryoo inha of Korea Co., Ltd. Minoan .\r\nTo know your company through Alibaba , I have a lot of interest for the product of your company .\r\nI  want know stock and to made or several handling  whether production possible after confirmation accodinge my attach the specifications and list of required products.\r\nI want to tell you that the overall process is possible.\r\nAfter consideration of the case to be sent (estimated , delivery , and technical data ) the basic data , immediately , \r\n\r\nif possible\r\nI hope that visit your company , it is an order by the conference details .\r\n\r\nIn South Korea , to create production facilities through the products , we , as an inspection of production equipment products\r\nBy leveraging is an object , there is the aim to ensure the reliability of the product .\r\n\r\nI think that we can hope a quick response , to meet the fast time.\r\n**plese sent your other e mail address or general.\r\nbscause i have a attatch file for your want products.\r\n \r\n\r\nbest regards\r\n', '1412900822');
