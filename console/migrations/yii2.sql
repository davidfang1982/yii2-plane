/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : yii2

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-12-28 11:01:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ag_admin
-- ----------------------------
DROP TABLE IF EXISTS `ag_admin`;
CREATE TABLE `ag_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_admin
-- ----------------------------
INSERT INTO `ag_admin` VALUES ('1', 'admin', '4PBB6MTWO0ZNhgM8da2jONmIIhapjSlu', '$2y$13$NsZDszIEaDPGIjdExBXx7.POqEs/J4hQUVHChexLmCE4KRUZUvAIm', null, 'maclechan@qq.com', '10', '10', '1440946328', '1440946328');
INSERT INTO `ag_admin` VALUES ('2', 'maclechan', '4PBB6MTWO0ZNhgM8da2jONmIIhapjSlu', '$2y$13$OlDnlYgmB6XZXC77gzF.ButtshZzw31TClKGYYSQ2gy4JuOktAwou', null, 'macle@qq.com', '10', '10', '1441345298', '1441345298');

-- ----------------------------
-- Table structure for ag_article
-- ----------------------------
DROP TABLE IF EXISTS `ag_article`;
CREATE TABLE `ag_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) unsigned NOT NULL COMMENT '文章类别ID',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `cover` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图',
  `content` text COMMENT '内容',
  `created_at` char(11) NOT NULL DEFAULT '' COMMENT '添加时间',
  `updated_at` char(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_article
-- ----------------------------
INSERT INTO `ag_article` VALUES ('1', '1', '会员注册', '会员注册', 'uploads/article/20150810/77441439197320.jpg', '<p style=\"text-align: center;\"><strong><span style=\"font-size: larger\">一、登陆万色城，点击网站右上角“注册”链接</span></strong></p><p style=\"text-align: center;\"><img alt=\"1.jpg\" src=\"/uploads/ueditor/20150810/1439197309105221.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><span style=\"font-size: larger\">&nbsp;</span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><strong><span style=\"font-size: larger\">二、弹出“注册新用户”页面。如下图</span></strong></p><p style=\"text-align: center;\"><img alt=\"2.jpg\" src=\"/uploads/ueditor/20150810/1439197310480664.jpg\" border=\"0\"/>&nbsp;<br/>&nbsp;</p><p style=\"text-align: center;\"><strong><span style=\"font-size: larger\">按步骤注册完成，点击“提交”，您就成为万色城的会员了。 </span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><br/></span><strong><span style=\"font-size: larger\">三、填写注册账户名和密码“登陆”界面出现。点击“登陆”，您就可以随心所欲体验万色城开心网购旅程</span></strong></p><p style=\"text-align: center;\">&nbsp;<img alt=\"3.jpg\" src=\"/uploads/ueditor/20150810/1439197311123311.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><br/></p>', '1439197321', '1439197321');
INSERT INTO `ag_article` VALUES ('2', '1', '购物流程', '购物流程', 'uploads/article/20150810/38281439197381.jpg', '<p style=\"text-align: center;\"><span style=\"font-size: larger;\">1.注册会员或网商后，输入用户名、密码点击登录商城。</span></p><p style=\"text-align: center;\">&nbsp;<img alt=\"3.jpg\" src=\"/uploads/ueditor/20150810/1439197372616172.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\">2.选择商品后，点击商品查看商品详情，可以查看商品的价格、积分。选择好商品的数量之后点击“加入购物车”。</span></p><p style=\"text-align: center;\"><img alt=\"QQ图片20140928173809.jpg\" src=\"/uploads/ueditor/20150810/1439197372853965.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\">3.点击“购物车”进行结算，进入购物车后确认商品价格、积分、数量之后点击结算、或者继续购物。</span></p><p style=\"text-align: center;\"><img alt=\"QQ图片20140928173843.jpg\" src=\"/uploads/ueditor/20150810/1439197372110208.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\">4.进入结算页面，选择收货地址、支付方式确认无误后点击确认订单。</span></p><p style=\"text-align: center;\">&nbsp;<img alt=\"4.jpg\" src=\"/uploads/ueditor/20150810/1439197373672027.jpg\" border=\"0\"/></p><p style=\"text-align: center;\"><span style=\"font-size: larger;\">5.提交订单成功后，系统会提示“恭喜！您的订单已经提交成功”。点击“马上支付”，完成支付即可。祝您购物愉快。</span></p><p style=\"text-align: center;\"><img alt=\"QQ图片20140928173943.jpg\" src=\"/uploads/ueditor/20150810/1439197373593795.jpg\" border=\"0\"/></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger;\">温馨提示：支付成功后，可以在网页上方点击“我的订单”。进入我的订单查看订单的状态。点击“订单号”，可以进入订单，查看订单物流信息。</span></p><p style=\"text-align: center;\"><br/></p>', '1439197381', '1439197381');
INSERT INTO `ag_article` VALUES ('3', '2', '支付宝支付', '支付宝支付f', 'uploads/article/20150810/65571439197508.jpg', '<p style=\"text-align: center\"><span style=\"font-size: medium\"><span style=\"font-family: 宋体\">支付宝支付</span></span></p><p style=\"text-align: center\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\">第一步：挑选要购买的商品—放入购物车—点击结算</span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><img alt=\"10.jpg\" src=\"/uploads/ueditor/20150810/1439197493127343.jpg\" border=\"0\"/></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\">第二步：填写收货信息，选择网上支付，确认无误后点击“确认订单”</span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><img alt=\"11.jpg\" src=\"/uploads/ueditor/20150810/1439197494112872.jpg\" border=\"0\"/></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\">第三步：订单提交成功，点击“马上支付”</span></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><img alt=\"12.jpg\" src=\"/uploads/ueditor/20150810/1439197494532432.jpg\" border=\"0\"/></span></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\">第四步：选择付款方式，点击支付通界面</span></span></span></span></p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><img alt=\"13.jpg\" src=\"/uploads/ueditor/20150810/1439197494125093.jpg\" border=\"0\"/></span></span></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\"><span style=\"font-size: larger\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\"><span style=\"font-family: 宋体\">第五步：登录支付宝进行费用支付</span></span></span></span></span></p><p style=\"text-align: center;\">&nbsp;</p><p style=\"text-align: center;\">&nbsp;<img alt=\"1.jpg\" src=\"/uploads/ueditor/20150810/1439197494137499.jpg\" border=\"0\"/></p><p><br/></p>', '1439197508', '1442646800');
INSERT INTO `ag_article` VALUES ('5', '5', '退换货', '退换货', 'uploads/article/20150810/80421439198159.jpg', '<p><span style=\"font-family: Arial; font-size: 14px;\">1、\r\n收到包裹，请当着快递员的面，开箱验货，如有任何质量问题，比如破损等，请快递员在快递单上标注情况，并把破损物品拍照，第一时间致电\r\n400-612-5003客服电话。根据客服售后指导，将相关资料上传公司邮箱（邮箱：kefu@wansecheng.com）。客服售后收到后，会尽\r\n快跟踪处理。 <br/></span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><span style=\"font-family: Arial; font-size: 14px;\">2、如因个人原因需退换货，首先致电万色城客服热线，400-612-5003，说明退换货原因。如果审核通过，可以退换货，客服告知退换货地址，按照地址填写运单。寄出后及时拨打客服热线，告知使用的快递公司，运单号，以便客服跟踪商品退回信息。<br/></span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><span style=\"font-family: Arial; font-size: 14px;\">3、如确实是产品本身的质量问题，往返运费全部由公司承担，如因个人原因造成的退换货，商品本身无任何质量问题，运费需要自己承担。<br/></span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><span style=\"font-family: Arial; font-size: 14px;\">4、5日*8小时工作制 万色城售后处理退换货审核工作时间：早9点至晚上18点。</span></p><p><br/></p>', '1439198159', '1439198159');

-- ----------------------------
-- Table structure for ag_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `ag_article_cate`;
CREATE TABLE `ag_article_cate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(60) NOT NULL DEFAULT '' COMMENT '类别名称',
  `desc` varchar(120) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_article_cate
-- ----------------------------
INSERT INTO `ag_article_cate` VALUES ('1', '新手上路', '');
INSERT INTO `ag_article_cate` VALUES ('2', '支付方式', '');
INSERT INTO `ag_article_cate` VALUES ('3', '商城系统', '');
INSERT INTO `ag_article_cate` VALUES ('4', '配送服务', '');
INSERT INTO `ag_article_cate` VALUES ('5', '售后服务', '');

-- ----------------------------
-- Table structure for ag_attribute
-- ----------------------------
DROP TABLE IF EXISTS `ag_attribute`;
CREATE TABLE `ag_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性ID',
  `attr_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品属性名称',
  `type_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品属性所属类型ID',
  `attr_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '属性是否可选 0 为唯一，1为单选，2为多选',
  `attr_input_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '属性录入方式 0为手工录入，1为从列表中选择，2为文本域',
  `attr_value` text COMMENT '属性的值',
  `sort_order` tinyint(4) NOT NULL DEFAULT '50' COMMENT '属性排序依据',
  PRIMARY KEY (`attr_id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_attribute
-- ----------------------------
INSERT INTO `ag_attribute` VALUES ('1', '罩杯型', '1', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('2', '风格', '1', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('3', '面料图案', '1', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('4', '肩带', '1', '0', '1', '可拆卸双肩带\r\n不可拆卸双肩带', '50');
INSERT INTO `ag_attribute` VALUES ('5', '功能', '1', '0', '2', null, '50');
INSERT INTO `ag_attribute` VALUES ('6', '尺码', '2', '1', '1', '165/88A/XS\r\n170/90A/XS\r\n175/96A/XS\r\n', '50');
INSERT INTO `ag_attribute` VALUES ('7', '商品编号', '2', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('8', '人群', '2', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('9', '版型', '2', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('10', '流行元素', '2', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('11', '上市时间', '2', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('12', '商品毛重', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('13', '商品产地', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('14', '系统', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('15', '特性', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('16', '显卡', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('17', '厚度', '3', '0', '0', null, '50');
INSERT INTO `ag_attribute` VALUES ('18', '处理器', '3', '0', '0', null, '50');

-- ----------------------------
-- Table structure for ag_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `ag_auth_assignment`;
CREATE TABLE `ag_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `ag_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `ag_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for ag_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `ag_auth_item`;
CREATE TABLE `ag_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `ag_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `ag_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_auth_item
-- ----------------------------
INSERT INTO `ag_auth_item` VALUES ('', '1', '', null, null, '1438262112', '1438262112');
INSERT INTO `ag_auth_item` VALUES ('admin', '1', '管理员', null, 's:0:\"\";', '1401454436', '1401454436');
INSERT INTO `ag_auth_item` VALUES ('macle', '1', '编辑员', null, null, '1438259260', '1438259260');

-- ----------------------------
-- Table structure for ag_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `ag_auth_item_child`;
CREATE TABLE `ag_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `ag_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `ag_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ag_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `ag_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for ag_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ag_auth_rule`;
CREATE TABLE `ag_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ag_country
-- ----------------------------
DROP TABLE IF EXISTS `ag_country`;
CREATE TABLE `ag_country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_country
-- ----------------------------
INSERT INTO `ag_country` VALUES ('AU', 'Australia', '18886000');
INSERT INTO `ag_country` VALUES ('BR', 'Brazil', '170115000');
INSERT INTO `ag_country` VALUES ('CA', 'Canada', '1147000');
INSERT INTO `ag_country` VALUES ('CN', 'China', '1277558000');
INSERT INTO `ag_country` VALUES ('DE', 'Germany', '82164700');
INSERT INTO `ag_country` VALUES ('FR', 'France', '59225700');
INSERT INTO `ag_country` VALUES ('GB', 'United Kingdom', '59623400');
INSERT INTO `ag_country` VALUES ('IN', 'India', '1013662000');
INSERT INTO `ag_country` VALUES ('ma', 'mclechan', '2');
INSERT INTO `ag_country` VALUES ('RU', 'Russia', '146934000');
INSERT INTO `ag_country` VALUES ('US', 'United States', '278357000');

-- ----------------------------
-- Table structure for ag_goods
-- ----------------------------
DROP TABLE IF EXISTS `ag_goods`;
CREATE TABLE `ag_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goods_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简单描述',
  `seller_note` varchar(255) NOT NULL DEFAULT '' COMMENT '商家备注',
  `goods_content` text NOT NULL COMMENT '商品详情',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属类别ID',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属品牌ID',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价格',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `promote_start_time` int(10) unsigned NOT NULL COMMENT '促销起始时间',
  `promote_end_time` int(10) unsigned NOT NULL COMMENT '促销截止时间',
  `goods_img` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `goods_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '商品缩略图',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品库存',
  `warn_number` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '库存警告数量',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型ID',
  `is_shipping` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '免运费商品0否,1是',
  `is_promote` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否促销，默认为0不促销',
  `is_best` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否精品,默认为0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否新品，默认为0',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否热卖,默认为0',
  `is_onsale` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架,默认为1',
  `created_at` int(10) unsigned NOT NULL COMMENT '添加时间',
  `updated_at` int(10) unsigned NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`goods_id`),
  KEY `cat_id` (`cat_id`),
  KEY `brand_id` (`brand_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_goods
-- ----------------------------
INSERT INTO `ag_goods` VALUES ('1', '215321002', '杰克琼斯JackJones外套男装合体立领PU夹克外套E|215321002 010黑', 'jackjones皮衣', 'jackjones皮衣', '<p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582717201474.jpg\" data-lazyload=\"done\" alt=\"\" height=\"1048\" width=\"730\"/></p><p>&nbsp; &nbsp; 尺码信息：单位CM</p><table align=\"center\" width=\"710\" style=\"width: 659px;\"><tbody><tr style=\"background:#878787; color:#ffffff;\" class=\"firstRow\"><td align=\"center\" width=\"118\">身高/净腰围/尺码</td><td align=\"center\" width=\"118\">版型注释</td><td align=\"center\" width=\"118\">肩宽</td><td align=\"center\" width=\"118\">胸围</td><td align=\"center\" width=\"118\">腰围</td><td align=\"center\" width=\"118\">衣长</td><td align=\"center\" width=\"118\">袖长</td></tr><tr><td align=\"center\">165/88A/XS</td><td align=\"center\">XS标准</td><td align=\"center\">43</td><td align=\"center\">98</td><td align=\"center\">88</td><td align=\"center\">61</td><td align=\"center\">62.9</td></tr><tr><td align=\"center\">170/92A/S</td><td align=\"center\">S标准</td><td align=\"center\">44</td><td align=\"center\">102</td><td align=\"center\">92</td><td align=\"center\">62</td><td align=\"center\">63.4</td></tr><tr><td align=\"center\">175/96A/M</td><td align=\"center\">M标准</td><td align=\"center\">45.5</td><td align=\"center\">106</td><td align=\"center\">96</td><td align=\"center\">63.5</td><td align=\"center\">64.7</td></tr><tr><td align=\"center\">180/100A/L</td><td align=\"center\">L标准</td><td align=\"center\">47</td><td align=\"center\">110</td><td align=\"center\">100</td><td align=\"center\">65</td><td align=\"center\">66</td></tr><tr><td align=\"center\">185/104A/XL</td><td align=\"center\">XL标准</td><td align=\"center\">48.5</td><td align=\"center\">114</td><td align=\"center\">104</td><td align=\"center\">66.5</td><td align=\"center\">67.3</td></tr><tr><td align=\"center\">190/108A/XXL</td><td align=\"center\">XXL标准</td><td align=\"center\">49.5</td><td align=\"center\">118</td><td align=\"center\">108</td><td align=\"center\">68</td><td align=\"center\">67.8</td></tr><tr><td align=\"center\">195/112A/XXXL</td><td align=\"center\">XXXL标准</td><td align=\"center\">50.5</td><td align=\"center\">122</td><td align=\"center\">112</td><td align=\"center\">69.5</td><td align=\"center\">68.3&nbsp;</td></tr></tbody></table><table width=\"730\" style=\"width: 659px;\"><tbody><tr class=\"firstRow\"><td valign=\"top\" width=\"355\"><p>测量方式</p><p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582744615870.jpg\" data-lazyload=\"done\" alt=\"\" height=\"296\" width=\"355\"/> \r\n &nbsp; &nbsp;</p></td><td width=\"20\"><br/></td><td valign=\"top\" width=\"355\"><p>尺码建议</p><p style=\"border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: rgb(181, 181, 181); padding-top: 15px; padding-bottom: 15px;\">此类上衣，请先考虑胸围，同时考虑身高、衣长等因素</p><p style=\"border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: rgb(181, 181, 181); padding-top: 15px; padding-bottom: 15px;\">模特身高：186，胸围：97， 腰围：83， 臀围：96，穿着尺码：M码</p><p>符合标准尺码，请选择平时所穿尺码</p></td></tr></tbody></table><table width=\"730\" style=\"width: 659px;\"><tbody><tr class=\"firstRow\"><td valign=\"top\" width=\"130\"><p>商品信息</p></td><td width=\"40\"><br/></td><td valign=\"top\" width=\"560\"><p>货号215321002原价￥699款名E ABBY PU JACKET-R颜色黑</p><p><strong>表层</strong> \r\n &nbsp; &nbsp; &nbsp; <span style=\"margin-left:5px; color:#464646\">合成革 </span> \r\n &nbsp; &nbsp; &nbsp;</p><p><strong>基布</strong> \r\n &nbsp; &nbsp; &nbsp; <span style=\"margin-left:5px; color:#464646\">粘纤82% 聚酯纤维18%</span> \r\n &nbsp; &nbsp; &nbsp;</p><p><strong>里料</strong> \r\n &nbsp; &nbsp; &nbsp; <span style=\"margin-left:5px; color:#464646\">聚酯纤维100%（装饰物部分除外）</span> \r\n &nbsp; &nbsp; &nbsp;</p><p><strong>洗涤建议</strong> \r\n &nbsp; &nbsp; &nbsp;</p><p><span style=\" color:#464646\">适用手洗，不可漂白，悬挂晾干，不可熨烫，不可干洗，与相似颜色的制品一同水洗，轻柔手洗，最高温度30度，不可浸泡，请及时洗涤，并及时晾干</span> \r\n &nbsp; &nbsp;</p></td></tr></tbody></table><table width=\"730\" style=\"width: 659px;\"><tbody><tr class=\"firstRow\"><td valign=\"top\" width=\"130\"><p>设计特点</p></td><td width=\"40\"><br/></td><td style=\"border-top-color: rgb(119, 119, 119);\" valign=\"top\" width=\"560\"><p>○ 面料：高品质PU面料</p><p>○ 领型：立领</p><p>○ 内里：顺滑内里</p><p>○ 门襟：拉链</p><p>○ 侧袋：拉链侧口袋</p></td></tr></tbody></table><table width=\"730\" style=\"width: 659px;\"><tbody><tr class=\"firstRow\"><td valign=\"top\" width=\"130\"><p>温馨提示</p></td><td width=\"40\"><br/></td><td valign=\"top\" width=\"560\"><p>若皮革上有污渍，用干净湿海棉沾温性的洗涤剂抹拭，然后让其自然干 &nbsp; &nbsp; &nbsp; &nbsp;</p></td></tr></tbody></table><p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582766568880.jpg\" data-lazyload=\"done\" alt=\"\" height=\"50\" width=\"730\"/> \r\n </p><table cellpadding=\"0\" cellspacing=\"0\" width=\"730\" style=\"width: 659px;\"><tbody><tr class=\"firstRow\"><td valign=\"top\"><img class=\"\" src=\"/uploads/ueditor/20150930/1443582766102867.jpg\" data-lazyload=\"done\" alt=\"\" height=\"378\" width=\"236\"/> \r\n &nbsp; &nbsp;<p><strong>高品质PU面料</strong> \r\n &nbsp; &nbsp;</p></td><td style=\"padding:0 11px;\" valign=\"top\"><img class=\"\" src=\"/uploads/ueditor/20150930/1443582766127787.jpg\" data-lazyload=\"done\" alt=\"\" height=\"378\" width=\"236\"/> \r\n &nbsp; &nbsp;<p><strong>小型立领</strong> \r\n &nbsp; &nbsp;</p></td><td valign=\"top\"><img class=\"\" src=\"/uploads/ueditor/20150930/1443582766289216.jpg\" data-lazyload=\"done\" alt=\"\" height=\"378\" width=\"236\"/> \r\n &nbsp; &nbsp;<p><strong>拉链侧口袋</strong></p></td></tr></tbody></table><p>黑</p><p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582786104687.jpg\" data-lazyload=\"done\" alt=\"\" width=\"730\"/> \r\n </p><p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582787647197.jpg\" data-lazyload=\"done\" alt=\"\" width=\"730\"/> \r\n </p><p><img class=\"\" src=\"/uploads/ueditor/20150930/1443582787168340.jpg\" data-lazyload=\"done\" alt=\"\" height=\"430\" width=\"730\"/></p><p style=\"text-align: center;\"><br/></p>', '27', '0', '699.00', '699.00', '0.00', '0', '0', 'uploads/goods/20150930/57931443582918.jpg', 'uploads/goods/20150930/thumb57931443582918.jpg', '10000', '10', 'jackjones皮衣', '0', '2', '1', '0', '1', '1', '1', '1', '1443582918', '1443582918');
INSERT INTO `ag_goods` VALUES ('2', '1392357363', '都市丽人光面文胸 光面中膜杯小胸棉杯无痕内衣A/B杯 黑色', '都市丽人', '都市丽人', '<p style=\"text-align: center;\"><img class=\"\" src=\"/uploads/ueditor/20150930/1443583776278544.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583776107966.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583776477781.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583776223464.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583776531184.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583777389351.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583777824058.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583777100715.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583777138639.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/><img class=\"\" src=\"/uploads/ueditor/20150930/1443583777269378.jpg\" alt=\"\" data-lazyload=\"done\" align=\"absMiddle\" style=\"line-height: 1.5;\"/></p><p style=\"text-align: center;\"><br/></p>', '23', '5', '79.00', '79.00', '0.00', '0', '0', 'uploads/goods/20150930/58671443583920.jpg', 'uploads/goods/20150930/thumb58671443583920.jpg', '7000', '10', '都市丽人', '0', '1', '1', '0', '1', '1', '1', '1', '1443583920', '1443583920');
INSERT INTO `ag_goods` VALUES ('3', '1484505807', '都市丽人聚拢文胸 时尚女士聚拢丝滑无痕B杯内衣', '聚拢文胸', '聚拢文胸', '<p style=\"text-align: center;\"><img src=\"/uploads/ueditor/20150930/1443584740899278.jpg\" title=\"1443584740899278.jpg\" alt=\"552c9057Nd4475bbc.jpg\"/></p>', '23', '5', '99.00', '99.00', '0.00', '0', '0', 'uploads/goods/20150930/15001443584815.jpg', 'uploads/goods/20150930/thumb15001443584815.jpg', '900', '10', '聚拢文胸', '0', '1', '1', '0', '1', '1', '1', '1', '1443584816', '1443584816');
INSERT INTO `ag_goods` VALUES ('4', '1855935', 'ThinkPad X250 (20CLA1VFCD )', 'ThinkPad', '', '<p><img class=\"\" src=\"/uploads/ueditor/20150930/1443585103414568.jpg\" data-lazyload=\"done\"/></p><p style=\"text-align: center;\"><br/></p>', '14', '4', '5999.00', '5999.00', '0.00', '0', '0', 'uploads/goods/20150930/98221443585187.jpg', 'uploads/goods/20150930/thumb98221443585187.jpg', '100', '10', 'ThinkPad', '0', '3', '1', '0', '1', '1', '1', '1', '1443585187', '1443585187');
INSERT INTO `ag_goods` VALUES ('5', '1378525', 'Apple12英寸笔记本', 'AppleMacBook', 'AppleMacBook', 'alt=\"1443585289806071.jpg\"/></p>', '14', '3', '7888.00', '7888.00', '0.00', '0', '0', 'uploads/goods/20150930/52971443585763.jpg', 'uploads/goods/20150930/thumb52971443585763.jpg', '300', '10', 'AppleMacBook', '0', '3', '1', '0', '1', '1', '1', '1', '1443585763', '1443585763');
INSERT INTO `ag_goods` VALUES ('6', '1378525', 'Apple MacBook', 'AppleMacBook', 'AppleMacBook', '<p style=\"text-align: center;\"><img src=\"/uploads/ueditor/20150930/1443585289806071.jpg\" alt=\"1443585289806071.jpg\"/></p>', '14', '3', '7888.00', '7888.00', '0.00', '0', '0', 'uploads/goods/20150930/46711443595010.jpg', 'uploads/goods/20150930/thumb46711443595010.jpg', '300', '10', 'AppleMacBook', '0', '3', '1', '0', '1', '1', '1', '1', '1443595010', '1443595010');
INSERT INTO `ag_goods` VALUES ('7', 'FD60822_2', '范登柏格加绒机车皮衣韩版', '加绒机车皮衣韩版', '加绒机车皮衣韩版', '<p style=\"text-align: center;\"><img src=\"/uploads/ueditor/20150930/1443582786104687.jpg\" alt=\"1443582786104687.jpg\"/></p>', '27', '0', '338.00', '338.00', '0.00', '0', '0', 'uploads/goods/20150930/51691443597256.jpg', 'uploads/goods/20150930/thumb51691443597256.jpg', '10', '1', '加绒机车皮衣韩版', '0', '2', '1', '0', '1', '1', '1', '1', '1443597256', '1443597256');

-- ----------------------------
-- Table structure for ag_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `ag_goods_attr`;
CREATE TABLE `ag_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '属性ID',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值',
  `attr_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '属性价格',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_goods_attr
-- ----------------------------
INSERT INTO `ag_goods_attr` VALUES ('1', '1', '11', '2015年', '0.00');
INSERT INTO `ag_goods_attr` VALUES ('2', '2', '5', '蕾丝边', '0.00');
INSERT INTO `ag_goods_attr` VALUES ('3', '3', '5', '聚拢 ，调整 ', '0.00');
INSERT INTO `ag_goods_attr` VALUES ('4', '4', '18', '酷睿i5', '0.00');
INSERT INTO `ag_goods_attr` VALUES ('5', '6', '18', '其它', '0.00');
INSERT INTO `ag_goods_attr` VALUES ('6', '7', '11', '2015年', '0.00');

-- ----------------------------
-- Table structure for ag_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `ag_goods_brand`;
CREATE TABLE `ag_goods_brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_goods_brand
-- ----------------------------
INSERT INTO `ag_goods_brand` VALUES ('2', '三星', 'uploads/brand/20150814/57671439545528.jpg', '', 'www.sumsum.com', '20', '1');
INSERT INTO `ag_goods_brand` VALUES ('3', '苹果', 'uploads/brand/20150814/25301439545571.jpg', 'apple', 'www.apple.com', '20', '1');
INSERT INTO `ag_goods_brand` VALUES ('4', 'Thinkpad', 'uploads/brand/20150814/64461439545623.jpg', '', 'www.thinkpad.com', '50', '1');
INSERT INTO `ag_goods_brand` VALUES ('5', '夏姓之秀', 'uploads/brand/20150814/89961439546087.jpg', '', '', '50', '1');

-- ----------------------------
-- Table structure for ag_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ag_goods_category`;
CREATE TABLE `ag_goods_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(5) unsigned NOT NULL DEFAULT '5',
  `show_in_nav` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_goods_category
-- ----------------------------
INSERT INTO `ag_goods_category` VALUES ('1', '电脑办公', '0', '电脑办公', '电脑办公', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('9', '咸丰县', '9', '咸丰县', '咸丰县', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('11', '电脑整机', '1', '电脑整机', '电脑整机', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('14', '笔记本', '11', '笔记本', '笔记本', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('18', '台式机', '11', '台式机', '台式机', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('19', '服装', '0', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('20', '女装', '19', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('21', '男装', '19', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('22', '内衣', '19', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('23', '文胸', '22', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('24', '女式内裤', '22', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('25', '文胸套装', '22', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('26', 'T恤', '21', '', '', '50', '0', '1');
INSERT INTO `ag_goods_category` VALUES ('27', '真皮皮衣', '21', '', '', '50', '0', '1');

-- ----------------------------
-- Table structure for ag_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `ag_goods_type`;
CREATE TABLE `ag_goods_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_goods_type
-- ----------------------------
INSERT INTO `ag_goods_type` VALUES ('1', '文胸');
INSERT INTO `ag_goods_type` VALUES ('2', '共用');
INSERT INTO `ag_goods_type` VALUES ('3', '笔记本');

-- ----------------------------
-- Table structure for ag_mcate
-- ----------------------------
DROP TABLE IF EXISTS `ag_mcate`;
CREATE TABLE `ag_mcate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '行业分类名称',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '类别排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类别状态(0关闭 1开启)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_mcate
-- ----------------------------
INSERT INTO `ag_mcate` VALUES ('1', '房地产', '1', '1');
INSERT INTO `ag_mcate` VALUES ('2', '珠宝', '1', '1');
INSERT INTO `ag_mcate` VALUES ('3', '服装行业', '1', '1');
INSERT INTO `ag_mcate` VALUES ('4', '护肤品', '1', '0');
INSERT INTO `ag_mcate` VALUES ('5', '佛跳墙', '1', '0');
INSERT INTO `ag_mcate` VALUES ('6', '奶茶', '1', '1');
INSERT INTO `ag_mcate` VALUES ('7', '母婴', '1', '1');

-- ----------------------------
-- Table structure for ag_merch
-- ----------------------------
DROP TABLE IF EXISTS `ag_merch`;
CREATE TABLE `ag_merch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商家id',
  `cateid` mediumint(8) unsigned NOT NULL COMMENT '行业类别ID',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '商家登陆用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '登陆密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legalname` varchar(32) CHARACTER SET utf8 DEFAULT '' COMMENT '商家法人',
  `phone` char(11) CHARACTER SET utf8 NOT NULL COMMENT '联系手机',
  `compname` varchar(120) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '企业名称',
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT '商家状态(0关闭1开启)',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_merch
-- ----------------------------
INSERT INTO `ag_merch` VALUES ('1', '1', 'house', '5WC_us9L5CNc8stzvw9_D1pU-zD0YPsf', '123456', null, 'maclechan@qq.com', '代码如诗', '13251079793', '代码如诗科技', '10', '1', '1434281699', '1434281699');
INSERT INTO `ag_merch` VALUES ('2', '5', 'maclechan', 'mTxRvAzaMe6bWK084qb95ZOXMK8tGpWL', '$2y$13$LUMaSxm2k/7bB3ylD1S.R.6ae3oh8qiEzYCphRoiKJoFaBy9iQAH2', null, 'maa@qq.com', '代码如诗', '13251079793', '代码如诗科技', '10', '1', '1434284723', '1434284723');

-- ----------------------------
-- Table structure for ag_migration
-- ----------------------------
DROP TABLE IF EXISTS `ag_migration`;
CREATE TABLE `ag_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_migration
-- ----------------------------
INSERT INTO `ag_migration` VALUES ('m000000_000000_base', '1432482245');
INSERT INTO `ag_migration` VALUES ('m130524_201442_init', '1432482255');
INSERT INTO `ag_migration` VALUES ('m140506_102106_rbac_init', '1438159746');

-- ----------------------------
-- Table structure for ag_mnav
-- ----------------------------
DROP TABLE IF EXISTS `ag_mnav`;
CREATE TABLE `ag_mnav` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nav_cn` varchar(64) NOT NULL DEFAULT '' COMMENT '一级菜单中文名',
  `nav_en` varchar(32) NOT NULL DEFAULT '' COMMENT '一级菜单模块名',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0隐藏,1开启)',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_mnav
-- ----------------------------
INSERT INTO `ag_mnav` VALUES ('1', '文章管理', 'article', '1', '1');
INSERT INTO `ag_mnav` VALUES ('2', '商品管理', 'goods', '1', '1');

-- ----------------------------
-- Table structure for ag_mnavbar
-- ----------------------------
DROP TABLE IF EXISTS `ag_mnavbar`;
CREATE TABLE `ag_mnavbar` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL COMMENT '对应一级菜单ID',
  `cont` varchar(32) NOT NULL DEFAULT '' COMMENT '二级菜单控制器',
  `act_cn` varchar(64) NOT NULL DEFAULT '' COMMENT '二级菜单中文名',
  `act_en` varchar(32) NOT NULL DEFAULT '' COMMENT '二级菜单方法名',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0隐藏,1开启)',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_mnavbar
-- ----------------------------
INSERT INTO `ag_mnavbar` VALUES ('1', '1', 'article', '文章分类', 'catlist', '1', '1');
INSERT INTO `ag_mnavbar` VALUES ('2', '1', 'article', '文章列表', 'index', '1', '1');
INSERT INTO `ag_mnavbar` VALUES ('3', '2', 'goods', '商品分类', 'catlist', '1', '1');
INSERT INTO `ag_mnavbar` VALUES ('4', '2', 'brand', '商品品牌', 'brandlist', '1', '1');
INSERT INTO `ag_mnavbar` VALUES ('5', '2', 'goodstype', '商品类型', 'typelist', '1', '1');
INSERT INTO `ag_mnavbar` VALUES ('6', '2', 'goods', '添加商品', 'goodsadd', '1', '1');

-- ----------------------------
-- Table structure for ag_nav
-- ----------------------------
DROP TABLE IF EXISTS `ag_nav`;
CREATE TABLE `ag_nav` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nav_cn` varchar(64) NOT NULL DEFAULT '' COMMENT '一级菜单中文名',
  `nav_en` varchar(32) NOT NULL DEFAULT '' COMMENT '一级菜单模块名',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0隐藏,1开启)',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_nav
-- ----------------------------
INSERT INTO `ag_nav` VALUES ('1', '导航管理', 'set', '1', '1');
INSERT INTO `ag_nav` VALUES ('2', '商家管理', 'shop', '1', '1');

-- ----------------------------
-- Table structure for ag_navbar
-- ----------------------------
DROP TABLE IF EXISTS `ag_navbar`;
CREATE TABLE `ag_navbar` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nid` tinyint(3) unsigned NOT NULL COMMENT '对应一级菜单ID',
  `navbar_cn` varchar(64) NOT NULL DEFAULT '' COMMENT '二级菜单中文名',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0隐藏,1开启)',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_navbar
-- ----------------------------
INSERT INTO `ag_navbar` VALUES ('1', '1', '导航管理', '1', '1');
INSERT INTO `ag_navbar` VALUES ('2', '2', '商家中心', '1', '1');
INSERT INTO `ag_navbar` VALUES ('3', '1', '权限管理', '1', '1');

-- ----------------------------
-- Table structure for ag_navitem
-- ----------------------------
DROP TABLE IF EXISTS `ag_navitem`;
CREATE TABLE `ag_navitem` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nid` tinyint(3) unsigned NOT NULL COMMENT '对应一级菜单ID',
  `nbid` smallint(5) unsigned NOT NULL COMMENT '对应二级菜单ID',
  `cont` varchar(32) NOT NULL DEFAULT '' COMMENT '三级菜单控制器',
  `act_cn` varchar(64) NOT NULL DEFAULT '' COMMENT '三级菜单中文名',
  `act_en` varchar(32) NOT NULL DEFAULT '' COMMENT '三级菜单方法名',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0隐藏,1开启)',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_navitem
-- ----------------------------
INSERT INTO `ag_navitem` VALUES ('1', '1', '1', 'default', '菜单设置', 'index', '1', '1');
INSERT INTO `ag_navitem` VALUES ('2', '2', '2', 'cate', '行业类别', 'index', '1', '1');
INSERT INTO `ag_navitem` VALUES ('3', '2', '2', 'shop', '商户管理', 'index', '1', '1');
INSERT INTO `ag_navitem` VALUES ('4', '1', '1', 'merch', '商家导航', 'index', '1', '1');
INSERT INTO `ag_navitem` VALUES ('5', '1', '3', 'rbac', '角色管理', 'roles', '1', '1');
INSERT INTO `ag_navitem` VALUES ('6', '1', '3', 'permission', '授权管理', 'index', '1', '1');
INSERT INTO `ag_navitem` VALUES ('7', '1', '3', 'user', '用户管理', 'index', '1', '1');

-- ----------------------------
-- Table structure for ag_test
-- ----------------------------
DROP TABLE IF EXISTS `ag_test`;
CREATE TABLE `ag_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL DEFAULT '暂无',
  `desc` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ag_test
-- ----------------------------
INSERT INTO `ag_test` VALUES ('1', '图片咯', '<p><span style=\"text-decoration: underline;\"><strong>我来了</strong></span>，<em>看下</em><sup>这</sup><span style=\"background-color: rgb(255, 0, 0);\">个能</span>不能<span style=\"color: rgb(192, 0, 0);\">用呢</span>。。。。如果<span style=\"font-size: 20px; font-family: 隶书,SimLi;\">成功&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p><img src=\"http://api.map.baidu.com/staticimage?center=120.084095,30.336638&zoom=18&width=530&height=340&markers=120.084652,30.336622\" height=\"340\" width=\"530\"/></p>');
INSERT INTO `ag_test` VALUES ('2', '再试一次', '<p>我来度下&nbsp;&nbsp; <img alt=\"Hydrangeas.jpg\" src=\"/uploads/ueditor/20150607/1433676925840668.jpg\" title=\"1433676925840668.jpg\"/><br/></p>');

-- ----------------------------
-- Table structure for ag_user
-- ----------------------------
DROP TABLE IF EXISTS `ag_user`;
CREATE TABLE `ag_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ag_user
-- ----------------------------
INSERT INTO `ag_user` VALUES ('1', 'maclechan', 'LeJw4x2_1yacFRssBR9lyA90frHKJBBx', '$2y$13$21X6DSXSph8nvzmbn5TDieODj/13Ks7BOusV3iRUM9QKL/6VZSKkq', null, 'maclechan@qq.com', '10', '1442077705', '1442077705');
INSERT INTO `ag_user` VALUES ('2', 'chan', 'XfzrMU-u9Gmq2SH20CfhQQSal3sX46qp', '$2y$13$66E.0t0eYqBLUlPlPdEp4uebQf611Es7YZDwfFQZZ9cCb/MDNHzNC', null, 'maclechen@qq.com', '10', '1442798692', '1442798692');
