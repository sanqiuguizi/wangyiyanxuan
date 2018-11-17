/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : yanxuan

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-11-07 19:57:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CusId` int(11) NOT NULL AUTO_INCREMENT,
  `CusEmail` varchar(50) NOT NULL,
  `CusPwd` varchar(50) NOT NULL,
  `CusPhone` varchar(50) NOT NULL,
  `CusIsAdmin` int(11) NOT NULL DEFAULT '1',
  `CusStatus` int(11) NOT NULL DEFAULT '1',
  `CusIsVip` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CusId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '474315963@qq.com', '123456', '13414850854', '0', '1', '0');
INSERT INTO `customer` VALUES ('5', '2405837791@qq.com', '123456', '13414850850', '0', '1', '0');
INSERT INTO `customer` VALUES ('6', '474315966@qq.com', '123456', '13414850855', '0', '1', '0');

-- ----------------------------
-- Table structure for customer_infor
-- ----------------------------
DROP TABLE IF EXISTS `customer_infor`;
CREATE TABLE `customer_infor` (
  `CusInforId` int(11) NOT NULL AUTO_INCREMENT,
  `CusId` int(11) DEFAULT NULL,
  `RedPacket` decimal(7,2) DEFAULT '0.00',
  `Rebate` decimal(7,2) DEFAULT '0.00',
  `GiftCard` decimal(7,2) DEFAULT '0.00',
  `WaitRedPa` int(11) DEFAULT '0',
  `MyScore` int(11) DEFAULT '0',
  `CouponsNum` int(11) DEFAULT '0',
  PRIMARY KEY (`CusInforId`),
  KEY `FK_Reference_1` (`CusId`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_infor
-- ----------------------------

-- ----------------------------
-- Table structure for dirty
-- ----------------------------
DROP TABLE IF EXISTS `dirty`;
CREATE TABLE `dirty` (
  `dirty_id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  PRIMARY KEY (`dirty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dirty
-- ----------------------------
INSERT INTO `dirty` VALUES ('1', '傻逼');
INSERT INTO `dirty` VALUES ('2', '垃圾');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `GoodId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodName` varchar(50) NOT NULL,
  `GoodScore` int(11) NOT NULL,
  `GoodDescribe` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GoodPrice` decimal(7,2) NOT NULL,
  `GoodStock` int(11) NOT NULL,
  `GoodIsNew` int(11) NOT NULL,
  `GoodStatus` int(11) NOT NULL,
  `GoodKind` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GoodArea` varchar(100) DEFAULT NULL,
  `GoodUpTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `GoodImg` varchar(150) NOT NULL,
  `GoodColNum` int(11) DEFAULT '1',
  `GoodBigKind` varchar(100) NOT NULL,
  PRIMARY KEY (`GoodId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '意大利纱 女式蝙蝠袖廓形毛衫', '34', '熠熠生辉，慵懒率性中的优雅时髦感', '349.00', '49', '1', '1', '毛衫', null, '2018-10-31 19:30:47', 'img/sweater/881daed4f018a5c2fdb75ae1be367419.png', '4', '衣服');
INSERT INTO `goods` VALUES ('3', '意大利纱 女式喇叭袖金银丝毛衫', '34', '复古奢华，拂袖间浪漫风情尽现', '349.00', '94', '1', '1', '毛衫', null, '2018-10-31 19:33:27', 'img/sweater/9410d4d7235df122253767819676aac1.png', '2', '衣服');
INSERT INTO `goods` VALUES ('4', '100%baby羊绒 女式V领小山羊绒衫', '69', '性感显瘦，简洁坦率，自信展露天鹅颈', '699.00', '50', '1', '1', '毛衫', null, '2018-10-31 19:37:32', 'img/sweater/af5c48d8c4495b7f94340c6b86a8035a.png', '1', '衣服');
INSERT INTO `goods` VALUES ('5', '100%baby羊绒 女式高领小山羊绒衫', '69', '经典百搭，亲近温暖，拥抱温柔与纯粹', '699.00', '50', '0', '1', '毛衫', null, '2018-10-31 19:38:31', 'img/sweater/2160d7af7e3141fa270b72968eeae857.png', '4', '衣服');
INSERT INTO `goods` VALUES ('6', '100%baby羊绒 女式圆领小山羊绒衫', '69', '经典百搭，亲近温暖，拥抱温柔与纯粹', '699.00', '50', '0', '1', '毛衫', null, '2018-10-31 19:40:16', 'img/sweater/71bf22c2cacade761032ec38410e6c71.png', '5', '衣服');
INSERT INTO `goods` VALUES ('7', ' 100%山羊绒 女式坑条圆领羊绒衫', '89', '别样清新，以井然有序的优雅迎浪漫...', '899.00', '50', '0', '1', '毛衫', null, '2018-10-31 19:41:32', 'img/sweater/52ee91bb64a19c645934ba85185560c4.png', '2', '衣服');
INSERT INTO `goods` VALUES ('8', '女式牦牛绒珍珠针织连衣裙', '59', '来自牦牛绒的软糯轻盈，莹亮珍珠赋...', '599.00', '100', '1', '1', '毛衫', null, '2018-10-31 19:43:55', 'img/sweater/fb1ff71d4d9f31496e88e2b2f4486be3.png', '2', '衣服');
INSERT INTO `goods` VALUES ('9', '女式马海毛绞花毛衫', '38', '灵动甜蜜色马海毛，复古绞花编织', '389.00', '100', '1', '1', '毛衫', null, '2018-10-31 19:46:01', 'img/sweater/48c053d0b9334ad11682bfaf8f529efe.png', '4', '衣服');
INSERT INTO `goods` VALUES ('10', '地表强温 女式鹅绒羽绒服', '97', '充分锁绒保暖，升级温暖抗冬无惧', '974.10', '10', '0', '1', '羽绒', null, '2018-11-01 10:35:34', 'img/coat/23ee93c2708c58bae000a67d69e82bba.png', '3', '衣服');
INSERT INTO `goods` VALUES ('11', '女式大廓形百搭羽绒服', '59', '包容大廓型，给身体慵懒体验', '599.00', '10', '0', '1', '羽绒', null, '2018-11-01 10:37:08', 'img/coat/3ddd2dab70037385ab13e8bb4f6c66db.png', '3', '衣服');
INSERT INTO `goods` VALUES ('12', '女式中长羽绒服', '29', '完全不挑人的中长款，穿上就是街拍...', '299.00', '10', '0', '1', '羽绒', null, '2018-11-01 10:39:57', 'img/coat/28e64b26ec5462a4ba3fc6fe0c8214d3.png', '2', '衣服');
INSERT INTO `goods` VALUES ('13', '女式双色修身长款羽绒服', '49', '丰富双色效果，轻松搭配时尚感', '499.00', '10', '1', '1', '羽绒', null, '2018-11-01 10:41:54', 'img/coat/d92013198edcd7472f47f2c7c5a1466c.png', '3', '衣服');
INSERT INTO `goods` VALUES ('14', '女式连帽收腰中长羽绒服', '69', '低调的颜色，丰富的层次，打破寒冬...', '699.00', '10', '1', '1', '羽绒', null, '2018-11-01 10:43:12', 'img/coat/b464314a47c8d167930b99b4b690dbc4.png', '1', '衣服');
INSERT INTO `goods` VALUES ('15', ' 女式超轻便携羽绒服', '29', '秋冬脱不掉的温暖随行', '299.00', '50', '1', '1', '羽绒', null, '2018-11-01 10:54:36', 'img/coat/7562a7cbfc293477544dbafd6b3caabe.png', '3', '衣服');
INSERT INTO `goods` VALUES ('16', '女式轻磨毛高腰牛仔裤', '20', '体验精致超细纤维的磨毛质感', '209.00', '200', '0', '1', '牛仔裤', null, '2018-11-01 18:43:49', 'img/jeans/a5e56de170df43b1d59f93af8e845779.png', '1', '衣服');
INSERT INTO `goods` VALUES ('17', '女式天鹅绒保暖牛仔裤', '19', '内里厚实天鹅绒，暖意更浓', '199.30', '200', '0', '1', '牛仔裤', null, '2018-11-01 18:44:52', 'img/jeans/60a27485a068170e3eb7d39cc8fae407.png', '1', '衣服');
INSERT INTO `goods` VALUES ('18', '女式超弹高腰牛仔裤', '22', '享受弹力的同时，分分钟拥有惊艳长腿', '229.00', '150', '0', '1', '牛仔裤', null, '2018-11-01 18:46:11', 'img/jeans/baa2950a23f5021d5588766022ed9236.png', '1', '衣服');
INSERT INTO `goods` VALUES ('19', '女式都市轻生活弹力牛仔裤', '26', '让双腿放纵愉悦的新玩法', '269.00', '100', '0', '1', '牛仔裤', null, '2018-11-01 18:48:13', 'img/jeans/4ee9918c819db0df3282b5343332c8a1.png', '1', '衣服');
INSERT INTO `goods` VALUES ('20', '重返校园 女式侧边条纹牛仔裤', '26', '视觉冲浪的侧边对撞，让腿型更好看', '269.00', '100', '1', '1', '牛仔裤', null, '2018-11-01 18:49:25', 'img/jeans/e9177dd6bcc794c7e0c23d5166cd6065.png', '1', '衣服');
INSERT INTO `goods` VALUES ('21', '女式基础修身直脚牛仔裤', '19', '秋冬包身款，提拉显瘦', '199.00', '300', '1', '1', '牛仔裤', null, '2018-11-01 18:50:21', 'img/jeans/3f57e9fa295863a9aad4b1aa40c178d7.png', '1', '衣服');
INSERT INTO `goods` VALUES ('22', '24寸 颐和园六合太平纯PC铝框拉杆箱', '56', '71升容量升级 轻松出行', '569.00', '97', '1', '1', '行李箱', null, '2018-11-07 18:46:47', 'img/trunkboot/d4d9f56fe954fd3009597c5061f78d25.png', '3', '鞋包');
INSERT INTO `goods` VALUES ('23', '20寸 印花 纯PC拉链登机箱', '43', '40L升轻巧出行 支持3-5天短途', '439.00', '68', '1', '1', '行李箱', null, '2018-11-07 18:48:15', 'img/trunkboot/8768cc2d1b72626d06522d864a395dfc.png', '2', '鞋包');

-- ----------------------------
-- Table structure for goods_color
-- ----------------------------
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color` (
  `ColorId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodId` int(11) DEFAULT NULL,
  `ImgUrl` varchar(150) NOT NULL,
  `ColorName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ColorId`),
  KEY `FK_Reference_8` (`GoodId`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`ColorId`) REFERENCES `goods` (`GoodId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_color
-- ----------------------------
INSERT INTO `goods_color` VALUES ('1', '1', 'img/sweater/detail01/dd2cecd4316e0941113478e62b2a7a90.png', 'choker-神秘黑');
INSERT INTO `goods_color` VALUES ('3', '1', 'img/sweater/detail01/b6aed1f667fd05a52315c13e61c4b21c.png', 'choker-高级灰');
INSERT INTO `goods_color` VALUES ('4', '1', 'img/sweater/detail01/88f97a6500c937dcbdcc9c19fcc1d802.png', '高级灰');
INSERT INTO `goods_color` VALUES ('5', '1', 'img/sweater/detail01/f9c8db1b03d8209ee0fa3d3eda568428.png', '高级黑');
INSERT INTO `goods_color` VALUES ('6', '3', 'img/sweater/detail02/49e4e09424272c8a08d80f3b2fef392e.png', '神秘黑');
INSERT INTO `goods_color` VALUES ('7', '3', 'img/sweater/detail02/6794e0221b39db1c6dd17bf9c0f29d8b.png', '深海蓝');
INSERT INTO `goods_color` VALUES ('8', '22', 'img/trunkboot/detail02/ca97939aeed57bd97b78856613164f8e.png', '白鹤高升');
INSERT INTO `goods_color` VALUES ('9', '22', 'img/trunkboot/detail02/ec32f40a4101074c8312dd8e623f64f5.png', '神鹿追梦');
INSERT INTO `goods_color` VALUES ('10', '22', 'img/trunkboot/detail02/af18bcd44e7b5d4ad87b2705db733218.png', '宝瓶护佑');
INSERT INTO `goods_color` VALUES ('11', '23', 'img/trunkboot/detail02/154d8bec87c11f9ea2c03b60da42dd38.png', '大理石纹');
INSERT INTO `goods_color` VALUES ('12', '23', 'img/trunkboot/detail02/cb10bab2cd769e65b72cbf4e4a8475e3.png', '迷彩');

-- ----------------------------
-- Table structure for goods_coupons
-- ----------------------------
DROP TABLE IF EXISTS `goods_coupons`;
CREATE TABLE `goods_coupons` (
  `CoupId` int(11) NOT NULL AUTO_INCREMENT,
  `CoupDescribe` varbinary(50) NOT NULL,
  `ReMoney` decimal(7,2) NOT NULL,
  `RequireMon` decimal(7,2) NOT NULL,
  PRIMARY KEY (`CoupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for goods_detail
-- ----------------------------
DROP TABLE IF EXISTS `goods_detail`;
CREATE TABLE `goods_detail` (
  `GoodDetId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodId` int(11) DEFAULT NULL,
  `Msg01` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Msg02` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Msg03` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Msg04` varchar(200) DEFAULT NULL,
  `Msg05` varchar(200) DEFAULT NULL,
  `Msg06` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Msg07` varchar(200) DEFAULT NULL,
  `AfterSale` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VIPPrice` decimal(7,2) DEFAULT NULL,
  `Img1` varchar(150) NOT NULL,
  `Img2` varchar(150) NOT NULL,
  `Img3` varchar(150) NOT NULL,
  `Img4` varchar(150) NOT NULL,
  `Img5` varchar(150) NOT NULL,
  `Title01` varchar(255) DEFAULT NULL,
  `Title02` varchar(255) DEFAULT NULL,
  `Title03` varchar(255) DEFAULT NULL,
  `Title04` varchar(255) DEFAULT NULL,
  `Title05` varchar(255) DEFAULT NULL,
  `Title06` varchar(255) DEFAULT NULL,
  `Title07` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GoodDetId`),
  KEY `FK_Reference_2` (`GoodId`) USING BTREE,
  CONSTRAINT `goods_detail_ibfk_1` FOREIGN KEY (`GoodId`) REFERENCES `goods` (`GoodId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_detail
-- ----------------------------
INSERT INTO `goods_detail` VALUES ('1', '1', '宽松型', '女士', '春季、冬季、秋季', 'XL、L、M、S', '休闲时尚', '神秘黑 choker-神秘黑 高级灰 choker-高级灰', '90%羊毛 5%锦纶 5%金属镀膜纤维', '售后服务本品适用服装产品退换货政策，承诺7天无忧退换。非质量问题的退换货请确保商品无磨损、污渍等影响二次销售的影响因素，不要剪开吊牌、吊线（如有），并保持内包装完好，否则不予退换，敬请谅解。', '325.90', 'img/sweater/detail01/8f7d3c2ca3388a6fab3288e34108833a.png', 'img/sweater/detail01/8959e2833c91e405c4a3e9ce5121da54.png', 'img/sweater/detail01/6b96bbcf8f3a101ab505aac4dc71cd22.png', 'img/sweater/detail01/486e67ba8ecbc896b35f2644da771962.jpg', 'img/sweater/detail01/29a7bf30d4f764bb7f0483b812758bee.jpg', '版型', '适用人群', '适用季节', '尺码', '风格', '颜色', '成分');
INSERT INTO `goods_detail` VALUES ('2', '3', '修身型', '女士', '春季、冬季、秋季', 'XL、L、M、S', '休闲时尚', '神秘黑 深海蓝', '羊毛90% 6%锦纶 4%金属镀膜纤维', '售后服务本品适用服装产品退换货政策，承诺7天无忧退换。非质量问题的退换货请确保商品无磨损、污渍等影响二次销售的影响因素，不要剪开吊牌、吊线（如有），并保持内包装完好，否则不予退换，敬请谅解。', '325.90', 'img/sweater/detail02/998d6c13011bfb67c47d26d64ff539d5.jpg', 'img/sweater/detail02/218511ca7e9e90399e2b895ceb1f65b6.jpg', 'img/sweater/detail02/3e5893394f8d31345c13fd077f426e14.jpg', 'img/sweater/detail02/6debd4fd276ba88ea16cfc01b432796f.png', 'img/sweater/detail02/30d380f7b938d487a3cf0c6b93619ec1.jpg', '版型', '适用人群', '适用季节', '尺码', '风格', '颜色', '成分');
INSERT INTO `goods_detail` VALUES ('3', '22', '71L', '4.8KG', '德国拜耳PC', null, null, null, null, '一年保修，30天保退', '540.60', 'img/trunkboot/d2d58bd324cf2858ca8850b7004642ec.png', 'img/trunkboot/de1564581d02dc1570de97a800921316.jpg', 'img/trunkboot/2ffd574e9aa55bcf8d9b10e1002c6e67.jpg', 'img/trunkboot/d1784833276f9669a54beae387903959.jpg', 'img/trunkboot/899b56ab68ef3adee70bc19c00715c82.jpg', '容量', '自重', '主材质', null, null, null, null);
INSERT INTO `goods_detail` VALUES ('4', '23', '40L', '2.9KG', '德国拜耳PC', null, null, null, null, '一年保修，30天保退', '540.60', 'img/trunkboot/20d0bdb692176e4669699ecdbe160b71.png', 'img/trunkboot/2fb2f02b2da458f47f38a5320c541732.jpg', 'img/trunkboot/4941cec7370edf640549037d2d6f7a47.jpg', 'img/trunkboot/66e4dae1d4aeb0bae41bf33c6a28340a.jpg', 'img/trunkboot/cb8fd4e9f4ae0451e0889e266c82a26f.jpg', '容量', '自重', '主材质', null, null, null, null);

-- ----------------------------
-- Table structure for goods_imges
-- ----------------------------
DROP TABLE IF EXISTS `goods_imges`;
CREATE TABLE `goods_imges` (
  `GoodImgId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodId` int(11) DEFAULT NULL,
  `GoodImgUrl` varchar(150) NOT NULL,
  PRIMARY KEY (`GoodImgId`),
  KEY `FK_Reference_5` (`GoodId`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`GoodId`) REFERENCES `goods` (`GoodId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_imges
-- ----------------------------
INSERT INTO `goods_imges` VALUES ('1', '1', 'img/sweater/detail01/20181102113406.png');
INSERT INTO `goods_imges` VALUES ('2', '3', 'img/sweater/detail02/20181105190230.png');

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order` (
  `OrdId` varchar(255) NOT NULL,
  `CusId` int(11) DEFAULT NULL,
  `CoupId` int(11) DEFAULT NULL,
  `OrdCreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrdStatus` int(11) NOT NULL,
  `OrdPrice` decimal(7,2) NOT NULL,
  PRIMARY KEY (`OrdId`),
  KEY `FK_Reference_6` (`CusId`),
  KEY `FK_Reference_7` (`CoupId`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`CoupId`) REFERENCES `goods_coupons` (`CoupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES ('06d33ec1-437f-474f-9326-ecfdc53505f6', '1', null, '2018-11-07 09:04:20', '1', '699.00');
INSERT INTO `goods_order` VALUES ('2cd9f27c-d026-4aa8-bee4-cddbf6cc866d', '1', null, '2018-11-05 17:32:21', '1', '700.00');
INSERT INTO `goods_order` VALUES ('34a7fc1f-4f2a-489a-b203-64530c03103b', '1', null, '2018-11-07 19:54:08', '1', '439.00');
INSERT INTO `goods_order` VALUES ('57f162b3-7a37-427f-9cd2-51596cbd8b6c', '1', null, '2018-11-05 18:01:50', '1', '700.00');
INSERT INTO `goods_order` VALUES ('6178f5dc-fd8d-46ba-ac97-15266b070832', '1', null, '2018-11-05 17:43:07', '1', '698.00');
INSERT INTO `goods_order` VALUES ('6672d3ee-6087-4fbe-9dc1-6ec657e7afd4', '1', null, '2018-11-05 18:46:58', '1', '1050.00');
INSERT INTO `goods_order` VALUES ('6b9c0582-76ac-49a1-98c4-525d38bc7578', '1', null, '2018-11-05 18:37:18', '1', '701.00');
INSERT INTO `goods_order` VALUES ('6f31de06-dfc6-44ec-87a5-42bdd9f624f5', '1', null, '2018-11-07 19:53:34', '1', '569.00');
INSERT INTO `goods_order` VALUES ('7514f509-2f12-45fd-bbd9-3dff2c76cf7a', '1', null, '2018-11-06 10:23:20', '1', '349.00');
INSERT INTO `goods_order` VALUES ('f7315ae3-3a58-4d26-8e7e-79b37f8cf7e3', '1', null, '2018-11-05 18:21:41', '1', '351.00');

-- ----------------------------
-- Table structure for goods_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `goods_orderdetail`;
CREATE TABLE `goods_orderdetail` (
  `OrdDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `OrdId` varchar(255) DEFAULT NULL,
  `GoodId` int(11) DEFAULT NULL,
  `ColorId` int(11) DEFAULT NULL,
  `SizePriId` int(11) DEFAULT NULL,
  `Num` int(11) NOT NULL,
  `GoodPrice` decimal(7,2) NOT NULL,
  `Money` decimal(7,2) NOT NULL,
  PRIMARY KEY (`OrdDetailId`),
  KEY `FK_Reference_20` (`GoodId`),
  KEY `FK_Reference_21` (`ColorId`),
  KEY `FK_Reference_22` (`SizePriId`),
  KEY `FK_Reference_19` (`OrdId`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`GoodId`) REFERENCES `goods` (`GoodId`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`ColorId`) REFERENCES `goods_color` (`ColorId`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`SizePriId`) REFERENCES `goods_sizeprice` (`SizePriId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_orderdetail
-- ----------------------------
INSERT INTO `goods_orderdetail` VALUES ('2', '2cd9f27c-d026-4aa8-bee4-cddbf6cc866d', '1', '3', '2', '2', '350.00', '700.00');
INSERT INTO `goods_orderdetail` VALUES ('3', '6178f5dc-fd8d-46ba-ac97-15266b070832', '1', '1', '1', '2', '349.00', '698.00');
INSERT INTO `goods_orderdetail` VALUES ('4', '57f162b3-7a37-427f-9cd2-51596cbd8b6c', '1', '4', '1', '1', '349.00', '349.00');
INSERT INTO `goods_orderdetail` VALUES ('5', '57f162b3-7a37-427f-9cd2-51596cbd8b6c', '1', '5', '3', '1', '351.00', '351.00');
INSERT INTO `goods_orderdetail` VALUES ('6', 'f7315ae3-3a58-4d26-8e7e-79b37f8cf7e3', '1', '1', '3', '1', '351.00', '351.00');
INSERT INTO `goods_orderdetail` VALUES ('7', '6b9c0582-76ac-49a1-98c4-525d38bc7578', '1', '1', '1', '1', '349.00', '349.00');
INSERT INTO `goods_orderdetail` VALUES ('8', '6b9c0582-76ac-49a1-98c4-525d38bc7578', '1', '4', '4', '1', '352.00', '352.00');
INSERT INTO `goods_orderdetail` VALUES ('9', '6672d3ee-6087-4fbe-9dc1-6ec657e7afd4', '1', '4', '2', '3', '350.00', '1050.00');
INSERT INTO `goods_orderdetail` VALUES ('10', '7514f509-2f12-45fd-bbd9-3dff2c76cf7a', '3', '6', '5', '1', '349.00', '349.00');
INSERT INTO `goods_orderdetail` VALUES ('11', '06d33ec1-437f-474f-9326-ecfdc53505f6', '1', '4', '2', '1', '350.00', '350.00');
INSERT INTO `goods_orderdetail` VALUES ('12', '06d33ec1-437f-474f-9326-ecfdc53505f6', '3', '7', '6', '1', '349.00', '349.00');
INSERT INTO `goods_orderdetail` VALUES ('13', '6f31de06-dfc6-44ec-87a5-42bdd9f624f5', '22', '9', '10', '1', '569.00', '569.00');
INSERT INTO `goods_orderdetail` VALUES ('14', '34a7fc1f-4f2a-489a-b203-64530c03103b', '23', '12', '9', '1', '439.00', '439.00');

-- ----------------------------
-- Table structure for goods_sizeprice
-- ----------------------------
DROP TABLE IF EXISTS `goods_sizeprice`;
CREATE TABLE `goods_sizeprice` (
  `SizePriId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodId` int(11) DEFAULT NULL,
  `SizeId` int(11) DEFAULT NULL,
  `SizePrice` decimal(7,2) NOT NULL,
  PRIMARY KEY (`SizePriId`),
  KEY `FK_Reference_3` (`GoodId`),
  KEY `FK_Reference_4` (`SizeId`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`GoodId`) REFERENCES `goods` (`GoodId`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`SizeId`) REFERENCES `goods_sizetype` (`SizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_sizeprice
-- ----------------------------
INSERT INTO `goods_sizeprice` VALUES ('1', '1', '1', '349.00');
INSERT INTO `goods_sizeprice` VALUES ('2', '1', '2', '350.00');
INSERT INTO `goods_sizeprice` VALUES ('3', '1', '3', '351.00');
INSERT INTO `goods_sizeprice` VALUES ('4', '1', '4', '352.00');
INSERT INTO `goods_sizeprice` VALUES ('5', '3', '5', '349.00');
INSERT INTO `goods_sizeprice` VALUES ('6', '3', '6', '349.00');
INSERT INTO `goods_sizeprice` VALUES ('7', '3', '7', '354.90');
INSERT INTO `goods_sizeprice` VALUES ('8', '3', '8', '354.90');
INSERT INTO `goods_sizeprice` VALUES ('9', '23', '10', '439.00');
INSERT INTO `goods_sizeprice` VALUES ('10', '22', '10', '569.00');

-- ----------------------------
-- Table structure for goods_sizetype
-- ----------------------------
DROP TABLE IF EXISTS `goods_sizetype`;
CREATE TABLE `goods_sizetype` (
  `SizeId` int(11) NOT NULL AUTO_INCREMENT,
  `Size` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_sizetype
-- ----------------------------
INSERT INTO `goods_sizetype` VALUES ('1', 'S（160/84A）');
INSERT INTO `goods_sizetype` VALUES ('2', 'M（165/88A）');
INSERT INTO `goods_sizetype` VALUES ('3', 'L（170/92A）');
INSERT INTO `goods_sizetype` VALUES ('4', 'XL（175/96A）');
INSERT INTO `goods_sizetype` VALUES ('5', 'S');
INSERT INTO `goods_sizetype` VALUES ('6', 'M');
INSERT INTO `goods_sizetype` VALUES ('7', 'L');
INSERT INTO `goods_sizetype` VALUES ('8', 'XL');
INSERT INTO `goods_sizetype` VALUES ('10', '默认');

-- ----------------------------
-- Table structure for index_brand
-- ----------------------------
DROP TABLE IF EXISTS `index_brand`;
CREATE TABLE `index_brand` (
  `BrandId` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(255) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `ImgURL` varchar(150) NOT NULL,
  `URL` varchar(150) NOT NULL,
  PRIMARY KEY (`BrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_brand
-- ----------------------------
INSERT INTO `index_brand` VALUES ('1', '海外制造商', '9.90', 'img/zt-img/i1.jpg', 'http://you.163.com/item/manufacturer?tagId=1080000&_stat_area=mod_manufacturer_1&_stat_referer=index');
INSERT INTO `index_brand` VALUES ('2', 'CK制造商', '25.00', 'img/zt-img/i2.png', 'http://you.163.com/item/manufacturer?tagId=1026000&_stat_area=mod_manufacturer_2&_stat_referer=index');
INSERT INTO `index_brand` VALUES ('3', '新秀丽制造商', '159.00', 'img/zt-img/i3.png', 'http://you.163.com/item/manufacturer?tagId=1001037&_stat_area=mod_manufacturer_3&_stat_referer=index');
INSERT INTO `index_brand` VALUES ('4', 'Nine West制造商', '209.00', 'img/zt-img/i4.png', 'http://you.163.com/item/manufacturer?tagId=1001000&_stat_area=mod_manufacturer_4&_stat_referer=index');

-- ----------------------------
-- Table structure for index_flashsale
-- ----------------------------
DROP TABLE IF EXISTS `index_flashsale`;
CREATE TABLE `index_flashsale` (
  `FlashSaleId` int(11) NOT NULL AUTO_INCREMENT,
  `GoodId` int(11) NOT NULL,
  `OldPrice` decimal(7,2) DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  PRIMARY KEY (`FlashSaleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_flashsale
-- ----------------------------
INSERT INTO `index_flashsale` VALUES ('1', '1', '499.00', '2018-11-11 00:00:00');
INSERT INTO `index_flashsale` VALUES ('2', '3', '455.00', '2018-11-11 00:00:00');
INSERT INTO `index_flashsale` VALUES ('3', '3', '456.00', '2018-11-11 00:00:00');
INSERT INTO `index_flashsale` VALUES ('4', '1', '498.00', '2018-11-01 00:00:00');

-- ----------------------------
-- Table structure for index_imgs
-- ----------------------------
DROP TABLE IF EXISTS `index_imgs`;
CREATE TABLE `index_imgs` (
  `ImgId` int(11) NOT NULL AUTO_INCREMENT,
  `ImgURL` varchar(150) NOT NULL,
  PRIMARY KEY (`ImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_imgs
-- ----------------------------
INSERT INTO `index_imgs` VALUES ('1', 'img/zt-img/bn1.jpg');
INSERT INTO `index_imgs` VALUES ('2', 'img/zt-img/bn2.jpg');
INSERT INTO `index_imgs` VALUES ('3', 'img/zt-img/bn3.jpg');
INSERT INTO `index_imgs` VALUES ('4', 'img/zt-img/bn4.jpg');
INSERT INTO `index_imgs` VALUES ('5', 'img/zt-img/bn5.jpg');
INSERT INTO `index_imgs` VALUES ('6', 'img/zt-img/bn6.jpg');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `ShoppingCarId` int(11) NOT NULL AUTO_INCREMENT,
  `CusId` int(11) DEFAULT NULL,
  `GoodId` int(11) DEFAULT NULL,
  `ColorId` int(11) DEFAULT NULL,
  `SizePriId` int(11) DEFAULT NULL,
  `Num` int(11) NOT NULL,
  `GoodPrice` decimal(7,2) NOT NULL,
  `Money` decimal(7,2) NOT NULL,
  PRIMARY KEY (`ShoppingCarId`),
  KEY `FK_Reference_10` (`GoodId`),
  KEY `FK_Reference_11` (`ColorId`),
  KEY `FK_Reference_12` (`SizePriId`),
  KEY `CusId` (`CusId`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`GoodId`) REFERENCES `goods` (`GoodId`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`ColorId`) REFERENCES `goods_color` (`ColorId`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`SizePriId`) REFERENCES `goods_sizeprice` (`SizePriId`),
  CONSTRAINT `shoppingcar_ibfk_1` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------
INSERT INTO `shoppingcar` VALUES ('15', '1', '3', '7', '6', '3', '349.00', '1047.00');
INSERT INTO `shoppingcar` VALUES ('16', '1', '1', '4', '2', '1', '350.00', '350.00');
INSERT INTO `shoppingcar` VALUES ('17', '1', '3', '7', '6', '1', '349.00', '349.00');
INSERT INTO `shoppingcar` VALUES ('20', '1', '22', '9', '10', '1', '569.00', '569.00');
INSERT INTO `shoppingcar` VALUES ('21', '1', '22', '10', '10', '1', '569.00', '569.00');
INSERT INTO `shoppingcar` VALUES ('22', '1', '23', '12', '9', '1', '439.00', '439.00');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
