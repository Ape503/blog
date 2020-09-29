/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_campus_market

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-18 18:10:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ylrc_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_comment`;
CREATE TABLE `ylrc_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `reply_to` varchar(64) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd01gnchhuj06oumqxrikccc3r` (`goods_id`),
  KEY `FKswirics8hhydki5ff0emtmbii` (`student_id`),
  CONSTRAINT `FKd01gnchhuj06oumqxrikccc3r` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`),
  CONSTRAINT `FKswirics8hhydki5ff0emtmbii` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_comment
-- ----------------------------
INSERT INTO `ylrc_comment` VALUES ('3', '2020-04-12 21:44:43', '2020-04-12 21:44:43', '现在还能用嘛？', null, '12', '5');
INSERT INTO `ylrc_comment` VALUES ('4', '2020-04-12 21:47:00', '2020-04-12 21:47:00', '应该有的吧？', '猿来入此', '12', '5');
INSERT INTO `ylrc_comment` VALUES ('5', '2020-04-12 22:07:22', '2020-04-12 22:07:22', '回复：“你好，现在还有货嘛？”\n应该没有了，这个很抢手的呀，你要抓紧才行。', '猿来入此', '12', '5');
INSERT INTO `ylrc_comment` VALUES ('6', '2020-04-12 22:08:09', '2020-04-12 22:08:09', '回复：“你好价格还能优惠点嘛？”<br>这个价格已经很公道了呀。', '猿来入此', '12', '5');
INSERT INTO `ylrc_comment` VALUES ('7', '2020-04-12 22:08:57', '2020-04-12 22:08:57', '回复：“现在还能用嘛？”<br>应该没问题的，这个机子很皮实的。', '158549530922', '12', '5');
INSERT INTO `ylrc_comment` VALUES ('8', '2020-04-12 22:11:54', '2020-04-12 22:11:54', '你好，价格能再优惠吗？', null, '13', '5');
INSERT INTO `ylrc_comment` VALUES ('9', '2020-04-12 22:12:59', '2020-04-12 22:12:59', '回复：“你好，价格能再优惠吗？”<br>亲，这个价格已经很优惠了哦，我这个电脑配置很高的，4g内存 320g硬盘，独立集成双显卡，疫情期间给孩子上网课，看看视频，办公学习都不错，双侧立体声音响，15.6寸大屏幕。', '起名字真难', '13', '3');
INSERT INTO `ylrc_comment` VALUES ('10', '2020-04-15 22:32:37', '2020-04-15 22:32:37', '看上去不错哦！', null, '31', '3');

-- ----------------------------
-- Table structure for `ylrc_database_bak`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------
INSERT INTO `ylrc_database_bak` VALUES ('10', '2020-03-22 19:36:47', '2020-03-22 19:36:47', 'db_boot_base_20200322193647.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('11', '2020-03-22 19:37:54', '2020-03-22 19:37:54', 'db_boot_base_20200322193754.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('12', '2020-03-22 19:40:04', '2020-03-22 19:40:04', 'db_boot_base_20200322194004.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('14', '2020-03-22 19:40:14', '2020-03-22 19:40:14', 'db_boot_base_20200322194014.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('15', '2020-03-22 19:40:19', '2020-03-22 19:40:19', 'db_boot_base_20200322194019.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('17', '2020-03-22 19:43:34', '2020-03-22 19:43:34', 'db_boot_base_20200322194334.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('18', '2020-03-22 19:43:39', '2020-03-22 19:43:39', 'db_boot_base_20200322194339.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('20', '2020-03-22 19:43:49', '2020-03-22 19:43:49', 'db_boot_base_20200322194349.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('21', '2020-03-22 19:43:54', '2020-03-22 19:43:54', 'db_boot_base_20200322194354.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('22', '2020-03-22 19:43:59', '2020-03-22 19:43:59', 'db_boot_base_20200322194359.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('23', '2020-03-22 19:44:04', '2020-03-22 19:44:04', 'db_boot_base_20200322194404.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('24', '2020-03-22 19:44:09', '2020-03-22 19:44:09', 'db_boot_base_20200322194409.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('25', '2020-03-22 19:44:14', '2020-03-22 19:44:14', 'db_boot_base_20200322194414.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('26', '2020-03-22 19:44:19', '2020-03-22 19:44:19', 'db_boot_base_20200322194419.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('27', '2020-03-22 19:44:24', '2020-03-22 19:44:24', 'db_boot_base_20200322194424.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('28', '2020-03-22 19:44:29', '2020-03-22 19:44:29', 'db_boot_base_20200322194429.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('29', '2020-03-22 19:44:34', '2020-03-22 19:44:34', 'db_boot_base_20200322194434.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('30', '2020-03-22 19:44:39', '2020-03-22 19:44:39', 'db_boot_base_20200322194439.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('31', '2020-03-23 17:46:49', '2020-03-23 17:46:49', 'db_boot_base_20200323174649.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');

-- ----------------------------
-- Table structure for `ylrc_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_friend_link`;
CREATE TABLE `ylrc_friend_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_friend_link
-- ----------------------------
INSERT INTO `ylrc_friend_link` VALUES ('1', '2020-04-18 14:32:25', '2020-04-18 15:39:51', '猿来入此', '1', 'http://programmer.ischoolbar.com');
INSERT INTO `ylrc_friend_link` VALUES ('11', '2020-04-18 15:49:20', '2020-04-18 15:56:11', '猿来入此Beta', '0', 'https://www.yuanlrc.com');
INSERT INTO `ylrc_friend_link` VALUES ('15', '2020-04-18 15:59:56', '2020-04-18 15:59:56', '猿来入此A', '2', 'http://www.yuanlrc.com');
INSERT INTO `ylrc_friend_link` VALUES ('16', '2020-04-18 16:00:20', '2020-04-18 16:00:20', '猿来入此B', '3', 'http://www.yuanlrc.com');
INSERT INTO `ylrc_friend_link` VALUES ('17', '2020-04-18 16:00:31', '2020-04-18 16:00:31', '猿来入此C', '4', 'http://programmer.ischoolbar.com');

-- ----------------------------
-- Table structure for `ylrc_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods`;
CREATE TABLE `ylrc_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `buy_price` float NOT NULL,
  `content` varchar(1024) NOT NULL,
  `flag` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `recommend` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `goods_category_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjtyl6pmb9j4aj64sm54xi1hbi` (`goods_category_id`),
  KEY `FKf68a0a9u8u8hqckg0ycnjarv6` (`student_id`),
  CONSTRAINT `FKf68a0a9u8u8hqckg0ycnjarv6` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`),
  CONSTRAINT `FKjtyl6pmb9j4aj64sm54xi1hbi` FOREIGN KEY (`goods_category_id`) REFERENCES `ylrc_goods_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_goods
-- ----------------------------
INSERT INTO `ylrc_goods` VALUES ('1', '2020-04-06 21:39:29', '2020-04-12 15:24:09', '128', '猿来入此1.0版本上线于2018年1月12日，现如今已经度过了652个日夜，当初的定位很简单，就是给大家分享站长在学习工作中积累的一些编程开发经验，使得大家能够在学习的道路上少走弯路。 快速掌握学习的方法，编程开发的思想。\r\n\r\n截止目前，猿来入此发布的实战开发教程累计学习人数已超过5万余人，有人赞赏就有人批评，一路走来，猿来入此赢得了不少好评，当然也有很多人痛骂我们、质疑我们，猿来入此的确有很多缺点，但我们相信生活不会拒绝一个想要变好的人，猿来入此正在不断的完善、改进。\r\n\r\n而今，推出猿来入此Beta版，旨在帮助更多更广层次的人，在猿来入此Beat版，你可以有很多个身份，你可以专心学习教程，做一个好学的小猿。也可以施展自己的技能，录制发布自己的教程资源，帮助别人学习的同时自己获得收入。你还可以推荐别的小猿来这里学习，你也有奖励哦！', '0', '猿来入此Java开发教程', '20200408/1586344264407.png', '0', '127', '1', '39', '2', '35');
INSERT INTO `ylrc_goods` VALUES ('5', '2020-04-06 21:54:28', '2020-04-11 15:17:45', '5888', '手机是iPhone5s，用了两年多，保养的很好，手机屏幕都没有换过，保存很完整的。有意向的请联系我。', '0', '八成新iPhone5s现低出售', '20200406/1586181213129.jpg', '0', '588', '1', '4', '2', '26');
INSERT INTO `ylrc_goods` VALUES ('6', '2020-04-11 15:13:43', '2020-04-15 19:20:15', '6999', '华硕平板电脑 超薄的 非常漂亮手感好 8寸左右屏幕​‌‌ 大小合适 携带方便 4Ｇ运行内存 64Ｇ储存的 并且可以插内存卡的 看电影 微信 视频 娱乐 游戏都很流畅 使用舒服。机器没拆没修过 全原装的 质量保证。带数据线充电器\r\nPlay Video \r\n联系我时，请说是在猿来入此二手网看到的，谢谢！', '0', '华硕P01MA 超薄平板电脑 4+6', '20200411/1586589170711.png', '1', '1698', '1', '11', '2', '1');
INSERT INTO `ylrc_goods` VALUES ('7', '2020-04-11 15:15:19', '2020-04-12 12:40:34', '399', '鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ 鞋子太多38码到41码9.5新​‌‌ ', '1', '耐克正品高帮鞋子一次都没穿过很新的', '20200411/1586589269693.png', '0', '159', '2', '35', '2', '0');
INSERT INTO `ylrc_goods` VALUES ('8', '2020-04-11 15:25:38', '2020-04-11 15:26:06', '59', '播讲： 路遥\r\n【原Ｙ版Ｂ音Ｙ频Ｐ，已完结】\r\n所​‌‌有有声均可以先试听，联系我获取\r\n立即添＋徽信：ｌｉｕ１６８８ｂ\r\n加我备注：猿来入此二手网过来的', '0', '平凡的世界小说路遥百度云mp3分享在', '20200411/1586589915016.png', '0', '5', '1', '17', '3', '1');
INSERT INTO `ylrc_goods` VALUES ('9', '2020-04-11 15:28:52', '2020-04-11 21:20:01', '9999', '二手卡地亚手表山度士大号表径：38.4×51mm ​‌‌9.99新全套自动机械，现货好价，手微同号l52～l077～663l，欢迎垂询。保真不贵，全国直销，无中间商赚差价，专注高端名表交易。本店承诺所售手表2年内可8折回购。\r\n卡地亚山度士大号表径：38.4×51mm \r\n9.99新全套自动机械，现货好价。', '0', '二手卡地亚手表山度士大号表径', '20200411/1586590067910.jpg', '0', '3999', '1', '54', '3', '2');
INSERT INTO `ylrc_goods` VALUES ('10', '2020-04-11 16:55:10', '2020-04-16 19:39:20', '25', '黑色两个8新苹果7/8 软手机套5元', '0', '黑色两个8新苹果7/8 软手机套5元', '20200411/1586595290815.jpg', '0', '5', '1', '5', '3', '8');
INSERT INTO `ylrc_goods` VALUES ('11', '2020-04-11 16:56:13', '2020-04-11 16:56:13', '399', '诺基亚的滑盖手机，买的时候一千多，具体什么型号搞不​‌‌清了。没有拆修过，功能一切正常。塞班系统，充电器电池都有到手即用。80元出售不议价。', '0', '诺基亚 滑盖手机 另还有个E71 智', '20200411/1586595364409.jpg', '0', '80', '1', '6', '3', '0');
INSERT INTO `ylrc_goods` VALUES ('12', '2020-04-11 16:57:12', '2020-04-15 22:26:42', '690', '夏普翻盖机，有太阳能电板辅助，之前一直是​‌‌女生使用，由于很早就使用智能机故一直闲置（为保持状态，开机充电维持正常频度），弃之可惜；机器保守说8成新，待机3-4天，作为备用机或老人机没问题，无拆无修无进水，可以使用移动，联通2G。', '0', '夏普翻盖机，有太阳能电板辅助', '20200411/1586595414403.jpeg', '0', '160', '1', '7', '3', '45');
INSERT INTO `ylrc_goods` VALUES ('13', '2020-04-11 21:05:32', '2020-04-15 22:26:32', '8999', '公司员工自用的电脑，功能都正常，正常使用痕迹，配置​‌‌​‌‌是i5处理器，4g内存 320g硬盘，独立集成双显卡，疫情期间给孩子上网课，看看视频，办公学习都不错，双侧立体声音响，15.6寸大屏幕，公司员工自用的电脑，不要电源适配器可以少一百元，低价处理了！', '0', 'macbook pro15寸笔记本', '20200411/1586610285979.jpg', '0', '1599', '1', '9', '3', '7');
INSERT INTO `ylrc_goods` VALUES ('14', '2020-04-11 21:08:41', '2020-04-15 19:19:08', '6999', '转让三台一样华牛苹果款i3一体电脑很新，出售100​‌‌​‌‌0元一台，配置如图；CPU;core i3 M380 @2.53GHz,\r\n主板；英特尔H55,\r\n主硬盘；固态；64G,\r\n内存；2G\r\n显示器；MS-0003\r\n注；以上三台i3出售1000元一台，\r\n二台AMD四核一体电脑很新出售1300元一台\r\n配置如图\r\nCPU;AMD A-5000四核\r\n主板；AMD AT3X2\r\n内存；4G，\r\n硬盘；64G主硬盘，\r\n显示器；AMD0006(25.2英寸）\r\n注；二台AMD四核很新出售1300元一台\r\n机器全好，正常使用中，配件齐全，拿回去就可以使用，公司搬家急需处理，没有质量问题\r\n配置如图，欢迎上门看货试机', '0', '华牛苹果款i3 四核一体电脑', '20200411/1586610506621.jpg', '0', '1269', '1', '10', '3', '7');
INSERT INTO `ylrc_goods` VALUES ('15', '2020-04-11 21:12:41', '2020-04-11 21:12:41', '299', '1.型号：美图耳机原装 线控入耳式音乐耳机 ; \r\n2 处理原因：设备闲置； \r\n3.成色描述：全新；’ \r\n4.包含配件：包装盒齐全； \r\n5.收到货物外观检测期：1天（网页照片均为实物图，商品都是实物图片 由于每个人对成色的理解不一样 所以发布所有物品均以实物图片为准 如收货后对外观有疑议，收货当日申请退款，当日、最迟次日发回） \r\n6.邮费：往返邮费全部由买家承担； \r\n其他说明：都是良心如实描述非诚勿扰！', '0', '美图耳机原装 线控入耳式音乐耳机 美', '20200411/1586610735654.jpg', '0', '29', '1', '16', '3', '0');
INSERT INTO `ylrc_goods` VALUES ('16', '2020-04-11 21:14:03', '2020-04-12 22:12:18', '8999', '出只惠普i5四核游戏机笔记本电脑,95新，4G内存！ \r\n\r\n当地的自提或者我送过去，外地的全部走担保交易！！！详细的你可以加我微信详聊！ \r\n\r\n出只i5四核游戏机笔记本电脑，可以小刀，大刀的不要来，那些开口就1000，800的对不起各位大神了。还有发货后电话找不到的人的，对不起了，不要拍！我不是专做电脑的，发货贵的要命！！!还有那些加我V信（V信qq871301232）的或者闲鱼私聊的，说帮你留意笔记本的，不要说等我收来了，然后就再也找不到人了！！！ \r\n\r\n笔记本是广州米光工作室出来的机子，这个配置只有几十台而已，这个配置全新价值多少，请自行百度！别问一些比较低的问题，好货只卖给有缘人，我一直都是相信有缘人！！ \r\n\r\n配置如下： \r\nCPU I5 ，4G DDR3（最新款） \r\n独立显卡512 \r\n250g硬盘（够你存多少嘿嘿嘿嘿了，你懂的） \r\n带键盘灯光，蓝牙，光驱，摄像头！！！样样齐全，办公娱乐家用都非常给力！ \r\n14英寸多高大山，重点是超薄，成色非常非常的爆新！！！ \r\nlol,地下城，都可以玩爆，不多，要的赶紧的！！ ', '0', 'i5四核游戏机笔记本电脑', '20200411/1586610811445.jpg', '0', '1700', '1', '18', '3', '1');
INSERT INTO `ylrc_goods` VALUES ('17', '2020-04-11 21:15:52', '2020-04-12 15:02:27', '599', 'SONY 索尼 VGP-WKB5IE 经典无线键盘 收藏级，品相不错，只有一点点使用痕迹。具体成色请看图片，实物拍摄。这个型号是索尼的经典设计款，市场上很少见的！键盘使用四姐5号电池供电，键盘上上电量显示。由于本人没有配套的电脑测试所以不能保证链接功能正常。（这需要索尼的主机配合使用）。 \r\n\r\n东西难得！ ', '0', 'SONY 索尼 经典无线键盘 收藏级', '20200411/1586610934287.jpg', '0', '200', '1', '19', '3', '97');
INSERT INTO `ylrc_goods` VALUES ('18', '2020-04-11 21:16:58', '2020-04-12 11:43:39', '580', '全新原装苹果鼠标没有开封，因为买了重复了，官网价格580元，我出500元。', '0', '苹果原装鼠标未开封', '20200411/1586610997167.jpg', '0', '500', '1', '20', '3', '1');
INSERT INTO `ylrc_goods` VALUES ('19', '2020-04-11 21:21:08', '2020-04-11 23:43:45', '998', '这款产品需要搭配存储使用；有了移动硬盘的各位，可以将移动硬盘连接魔盒，手机装个APP，就可以通过手机上传和下载所以移动硬盘的资料了，电脑装个客户端，也可以通过电脑上传下载，修改移动硬盘的资料。非常方便，相当于一个网盘。而且想分享的就分享，想加密的就加密，谁都看不到。并且是双重备份，就算硬盘坏了，丢了，也能一键恢复哦', '0', '1 2T移动硬盘、U盘秒变网盘', '20200411/1586611245599.jpg', '0', '289', '1', '22', '3', '1');
INSERT INTO `ylrc_goods` VALUES ('20', '2020-04-11 21:22:10', '2020-04-16 19:39:29', '1980', 'MINOX M3 LEICA 数码相机 功能好 带原厂电池一块，没有充电器，可以通过USB口充电，不带卡。只有机器一台。及其制作精美，适合收藏！关于机器参数请自行百度，本店不负责科普！ \r\n\r\n非常难得一见的数码相机。500万像素，可以拍视频。 \r\n\r\nhttps://item.taobao.com/item.htm?spm=a2126o.11854294.0.0.8ea94831d8VrRw&id=614654560447 \r\n不议价！慢出 ', '0', 'MINOX M3 LEICA 数码相', '20200411/1586611303491.jpg', '0', '920', '1', '23', '3', '4');
INSERT INTO `ylrc_goods` VALUES ('21', '2020-04-11 21:23:09', '2020-04-16 19:40:44', '2980', '1.型号要求：艺卓mx191 \r\n2.到手时间/使用时长：2016年12月产 \r\n3.成色描述：95新 \r\n4.器材情况：带配件公司替换品 \r\n5.包含配件：说明书，cd，电源线，数据线 \r\n6.其他说明：可直接微信：Allenfindu.邮费顺丰到付，可小刀。', '0', '艺卓MX191显示器', '20200411/1586611370203.jpg', '0', '1980', '1', '24', '3', '2');
INSERT INTO `ylrc_goods` VALUES ('22', '2020-04-11 21:25:14', '2020-04-11 21:25:14', '75', '得力安格耐特F11165号PU篮球青少年小学室内外训练篮球耐磨弹性好', '0', '得力安格耐特篮球', '20200411/1586611479618.jpg', '0', '57', '1', '26', '3', '0');
INSERT INTO `ylrc_goods` VALUES ('23', '2020-04-11 21:27:46', '2020-04-11 21:27:46', '78', '厂家直销儿童足球机缝足球4号5号足球六色可选耐磨足球体育用品', '0', '耐磨足球体育用品', '20200411/1586611630115.jpg', '0', '66', '1', '27', '3', '0');
INSERT INTO `ylrc_goods` VALUES ('24', '2020-04-11 21:30:06', '2020-04-16 19:38:47', '24', '广羽2号黑鹅毛羽毛球 批发12个装家庭娱乐型球馆训练超耐打羽毛球\r\n跨境属性\r\n跨境包裹重量0.2 kg 单位重量0.2 kg 产品体积 35.0 cm * 7.0 cm * 7.0 cm\r\n品牌	广羽	产品类别	鹅毛球	球头类别	双拼球头\r\n毛片样式	全圆	货号	羽毛球	产地	安徽\r\n加印LOGO	不可以	加工定制	否	规格	12只装\r\n适用场景	乒羽网球运动	颜色	【2号黑鹅毛】	是否跨境货源	否', '0', '球馆训练超耐打羽毛球12个', '20200411/1586611756004.jpg', '0', '22', '1', '28', '2', '2');
INSERT INTO `ylrc_goods` VALUES ('25', '2020-04-11 21:31:27', '2020-04-15 19:12:46', '37', '【品名】克洛斯威/crossway \r\n【名称】克洛斯威-乒乓球6星拍\r\n【货号】1122带球带拍套带护边贴\r\n【打法分类】攻防兼备型\r\n【底板材质】椴木5层\r\n【厚度】14.5mm\r\n【包套材料】拍包+6个乒乓球+1个护边贴', '0', '克洛斯威六星乒乓球拍', '20200411/1586611861285.jpg', '1', '27', '1', '29', '2', '0');
INSERT INTO `ylrc_goods` VALUES ('26', '2020-04-11 23:58:05', '2020-04-15 19:13:32', '35', '产品参数：\r\n品牌: 遇上适用年龄: 25-29周岁尺码: S M L XL 2XL 3XL图案: 字母风格: 通勤通勤: 韩版领型: 圆领流行元素: 印花主要颜色: 浅黄色 浅绿色 白色 黑色 酒红色 mystery白色 mystery姜黄 antique白色 antique黑色 WARNING砖红 WARNING白色 星空白色 火烈鸟白色 仙人掌白色 108白色 108黑色 099白色 101白色 Bike白色 another白色 day白色 night黑色 NY白色 sunny白色 GUCCL白色 california姜黄色 鲸鱼白色 化学白色 柠檬姜黄 牛油果绿茶色 山竹梦紫色 西瓜白色 刺绣款红色 刺绣款白色 yushang白色 猫猫和狗子姜黄色 梦紫色 灰色 大红 藕粉 姜黄 砖红 藏青色 孔雀蓝 烟灰色 橡皮粉袖型: 常规货号: YST086图案文化: 经典年份季节: 2020年夏季袖长: 短袖衣长: 常规款服装版型: 宽松销售渠道类型: 纯电商(只在线上销售)材质成分: 棉96% 聚氨酯弹性纤维(氨纶)4%', '0', '纯棉白色T恤女短袖夏装', '20200411/1586620659982.jpg', '1', '25', '1', '31', '4', '0');
INSERT INTO `ylrc_goods` VALUES ('27', '2020-04-11 23:59:22', '2020-04-15 19:13:27', '69', '产品参数：\r\n品牌: GW/哥维格面料: 罗马布货号: 52-173037弹力: 微弹基础风格: 青春流行上市年份季节: 2017年秋季厚薄: 常规销售渠道类型: 纯电商(只在线上销售)材质成分: 粘胶纤维(粘纤)66.6% 聚酯纤维29.', '0', '裤子男春季宽松九分休闲裤', '20200411/1586620738132.jpg', '1', '39', '1', '32', '4', '3');
INSERT INTO `ylrc_goods` VALUES ('28', '2020-04-12 00:01:34', '2020-04-15 19:13:23', '235', '品牌: other/其他质地: 尼龙布闭合方式: 拉链图案: 纯色风格: 日韩形状: 竖款方形成色: 全新性别: 男流行元素: 车缝线颜色分类: 浅灰色中号 黑色中号 黑色大号 浅灰色大号 黑色加大版内部结构: 手机袋 电脑插袋有无夹层: 有货号: 0701251361536适用场景: 休闲里料材质: 腈纶肩带样式: 双根适用对象: 青年提拎部件类型: 软把箱包外袋种类: 内贴袋箱包硬度: 软大小: 中防水程度: 防泼水是否有背部缓冲棉: 是容纳电脑尺寸: 14英寸', '0', '防水尼龙布双肩包纯色百搭滑面潮男', '20200412/1586620860709.png', '1', '125', '1', '33', '4', '0');
INSERT INTO `ylrc_goods` VALUES ('29', '2020-04-12 00:03:39', '2020-04-18 17:22:03', '65', '产品参数：\r\n品牌: 宝缇妃产地: 中国大陆省份: 浙江省地市: 金华市流行元素: 纯色颜色分类: 雨伞-8骨自动-藏蓝 雨伞8骨自动-黑色 雨伞8骨自动-酒红 两用-10骨自动黑胶-藏青色 两用-10骨自动黑胶-藏蓝 两用-10骨自动黑胶-酒红 普通折叠-宝蓝伞布: 黑胶打开方式: 全自动货号: A-123半径: 48cm(含)-53cm(含)伞面涂层: 黑胶上市年份季节: 2020年夏季伞的种类: 晴雨伞适用对象: 成人性别: 男女通用伞杆材质: 不锈钢款式: 三折伞设计使用年限: 5年', '0', '全自动商务伞晴雨两用防晒防紫外线', '20200412/1586620999408.jpg', '1', '25', '1', '34', '4', '26');
INSERT INTO `ylrc_goods` VALUES ('30', '2020-04-12 00:04:51', '2020-04-16 19:39:02', '56', '品牌: 红依材质: 混合材质适用性别: 女图案: 植物花卉风格: 民族风是否现货: 现货镶嵌材质: 未镶嵌成色: 全新价格区间: 10-19.99元新奇特: 新鲜出炉颜色分类: 【好事连连】', '0', '民族风穗子流苏胸针天然玉石珍珠', '20200412/1586621065769.jpg', '1', '25', '1', '36', '4', '6');
INSERT INTO `ylrc_goods` VALUES ('31', '2020-04-12 00:07:24', '2020-04-15 22:35:46', '799', '夏威夷小吉他斯达威SDW-UK268\r\n品牌: STARWAY材质: 其他', '0', '夏威夷小吉他斯达威SDW-UK268', '20200412/1586621219617.jpg', '0', '499', '1', '38', '4', '38');
INSERT INTO `ylrc_goods` VALUES ('32', '2020-04-12 13:02:48', '2020-04-15 19:18:33', '999', '微信公众号粉丝1万多，不想运营了，有需要的请联系我。', '0', '微信公众号粉丝1万多', '20200412/1586667722030.png', '0', '888', '3', '39', '3', '3');

-- ----------------------------
-- Table structure for `ylrc_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods_category`;
CREATE TABLE `ylrc_goods_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `name` varchar(18) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKos35mkmw4k5dvi4fi2govg2pa` (`parent_id`),
  CONSTRAINT `FKos35mkmw4k5dvi4fi2govg2pa` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_goods_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_goods_category
-- ----------------------------
INSERT INTO `ylrc_goods_category` VALUES ('1', '2020-04-02 20:20:05', '2020-04-02 21:35:15', '20200402/1585834512163.png', '手机', '0', null);
INSERT INTO `ylrc_goods_category` VALUES ('4', '2020-04-02 20:26:45', '2020-04-02 21:35:54', '20200402/1585834542235.png', '智能机', '1', '1');
INSERT INTO `ylrc_goods_category` VALUES ('5', '2020-04-02 21:13:04', '2020-04-02 21:36:24', '20200402/1585834572308.png', '手机配件', '2', '1');
INSERT INTO `ylrc_goods_category` VALUES ('6', '2020-04-02 21:37:05', '2020-04-02 21:37:05', '20200402/1585834607924.png', '滑盖机', '3', '1');
INSERT INTO `ylrc_goods_category` VALUES ('7', '2020-04-02 21:37:23', '2020-04-02 21:37:23', '20200402/1585834633735.png', '翻盖机', '4', '1');
INSERT INTO `ylrc_goods_category` VALUES ('8', '2020-04-02 21:37:50', '2020-04-02 21:37:50', '20200402/1585834662625.png', '电脑', '5', null);
INSERT INTO `ylrc_goods_category` VALUES ('9', '2020-04-02 21:38:08', '2020-04-02 21:38:08', '20200402/1585834679788.png', '笔记本', '6', '8');
INSERT INTO `ylrc_goods_category` VALUES ('10', '2020-04-02 21:38:26', '2020-04-02 21:38:26', '20200402/1585834694895.png', '台式机', '7', '8');
INSERT INTO `ylrc_goods_category` VALUES ('11', '2020-04-02 21:38:45', '2020-04-02 21:38:45', '20200402/1585834717184.png', '平板', '8', '8');
INSERT INTO `ylrc_goods_category` VALUES ('15', '2020-04-05 18:46:54', '2020-04-05 19:07:07', '20200405/1586084764264.png', '影音娱乐', '9', null);
INSERT INTO `ylrc_goods_category` VALUES ('16', '2020-04-05 19:06:56', '2020-04-05 19:07:20', '20200405/1586084805468.png', '耳机', '10', '15');
INSERT INTO `ylrc_goods_category` VALUES ('17', '2020-04-05 19:07:45', '2020-04-05 19:07:45', '20200405/1586084854001.png', 'MP3/MP4', '11', '15');
INSERT INTO `ylrc_goods_category` VALUES ('18', '2020-04-05 19:08:15', '2020-04-05 19:08:15', '20200405/1586084878657.png', '游戏机', '12', '15');
INSERT INTO `ylrc_goods_category` VALUES ('19', '2020-04-05 19:08:44', '2020-04-05 19:08:44', '20200405/1586084911580.png', '键盘', '13', '15');
INSERT INTO `ylrc_goods_category` VALUES ('20', '2020-04-05 19:09:04', '2020-04-05 19:09:04', '20200405/1586084936056.png', '鼠标', '14', '15');
INSERT INTO `ylrc_goods_category` VALUES ('21', '2020-04-05 19:10:14', '2020-04-05 19:10:14', '20200405/1586085005899.png', '数码配件', '15', null);
INSERT INTO `ylrc_goods_category` VALUES ('22', '2020-04-05 19:10:45', '2020-04-05 19:10:45', '20200405/1586085024716.png', '移动硬盘', '16', '21');
INSERT INTO `ylrc_goods_category` VALUES ('23', '2020-04-05 19:11:08', '2020-04-05 19:11:08', '20200405/1586085052292.png', '相机', '17', '21');
INSERT INTO `ylrc_goods_category` VALUES ('24', '2020-04-05 19:11:25', '2020-04-05 19:11:25', '20200405/1586085077518.png', '显示器', '18', '21');
INSERT INTO `ylrc_goods_category` VALUES ('25', '2020-04-05 19:11:50', '2020-04-05 19:11:50', '20200405/1586085102042.png', '运动健身', '19', null);
INSERT INTO `ylrc_goods_category` VALUES ('26', '2020-04-05 19:12:13', '2020-04-05 19:12:13', '20200405/1586085124703.png', '篮球', '20', '25');
INSERT INTO `ylrc_goods_category` VALUES ('27', '2020-04-05 19:12:34', '2020-04-05 19:12:34', '20200405/1586085152812.png', '足球', '21', '25');
INSERT INTO `ylrc_goods_category` VALUES ('28', '2020-04-05 19:12:53', '2020-04-05 19:12:53', '20200405/1586085164372.png', '羽毛球', '22', '25');
INSERT INTO `ylrc_goods_category` VALUES ('29', '2020-04-05 19:13:11', '2020-04-05 19:13:11', '20200405/1586085182130.png', '球拍', '23', '25');
INSERT INTO `ylrc_goods_category` VALUES ('30', '2020-04-05 19:13:50', '2020-04-05 19:13:50', '20200405/1586085217886.png', '衣物鞋帽', '24', null);
INSERT INTO `ylrc_goods_category` VALUES ('31', '2020-04-05 19:14:15', '2020-04-05 19:14:15', '20200405/1586085239138.png', '上衣', '25', '30');
INSERT INTO `ylrc_goods_category` VALUES ('32', '2020-04-05 19:14:30', '2020-04-05 19:14:30', '20200405/1586085262037.png', '裤子', '26', '30');
INSERT INTO `ylrc_goods_category` VALUES ('33', '2020-04-05 19:14:48', '2020-04-05 19:14:48', '20200405/1586085278533.png', '背包', '27', '30');
INSERT INTO `ylrc_goods_category` VALUES ('34', '2020-04-05 19:15:12', '2020-04-05 19:15:12', '20200405/1586085302412.png', '雨伞', '28', '30');
INSERT INTO `ylrc_goods_category` VALUES ('35', '2020-04-05 19:15:29', '2020-04-05 19:15:29', '20200405/1586085319791.png', '鞋子', '29', '30');
INSERT INTO `ylrc_goods_category` VALUES ('36', '2020-04-05 19:15:55', '2020-04-05 19:15:55', '20200405/1586085349204.png', '配饰', '30', '30');
INSERT INTO `ylrc_goods_category` VALUES ('37', '2020-04-05 19:16:38', '2020-04-05 19:16:38', '20200405/1586085388834.png', '生活娱乐', '31', null);
INSERT INTO `ylrc_goods_category` VALUES ('38', '2020-04-05 19:17:05', '2020-04-05 19:17:05', '20200405/1586085407122.png', '乐器', '32', '37');
INSERT INTO `ylrc_goods_category` VALUES ('39', '2020-04-05 19:17:22', '2020-04-05 19:17:22', '20200405/1586085433434.png', '虚拟账号', '33', '37');
INSERT INTO `ylrc_goods_category` VALUES ('40', '2020-04-05 19:17:39', '2020-04-05 19:17:39', '20200405/1586085449303.png', '会员卡', '34', '37');
INSERT INTO `ylrc_goods_category` VALUES ('41', '2020-04-05 19:18:00', '2020-04-05 19:18:00', '20200405/1586085471766.png', '化妆品', '35', '37');
INSERT INTO `ylrc_goods_category` VALUES ('42', '2020-04-05 19:18:31', '2020-04-05 19:18:31', '20200405/1586085499095.png', '图书教材', '36', null);
INSERT INTO `ylrc_goods_category` VALUES ('43', '2020-04-05 19:18:49', '2020-04-05 19:18:49', '20200405/1586085520436.png', '教材', '37', '42');
INSERT INTO `ylrc_goods_category` VALUES ('44', '2020-04-05 19:19:05', '2020-04-05 19:19:05', '20200405/1586085534371.png', '考研材料', '38', '42');
INSERT INTO `ylrc_goods_category` VALUES ('45', '2020-04-05 19:19:24', '2020-04-05 19:19:24', '20200405/1586085556673.png', '课外书', '39', '42');
INSERT INTO `ylrc_goods_category` VALUES ('46', '2020-04-05 19:19:54', '2020-04-05 19:19:54', '20200405/1586085585909.png', '交通出行', '40', null);
INSERT INTO `ylrc_goods_category` VALUES ('47', '2020-04-05 19:20:18', '2020-04-05 19:20:18', '20200405/1586085604095.png', '自行车', '41', '46');
INSERT INTO `ylrc_goods_category` VALUES ('48', '2020-04-05 19:20:35', '2020-04-05 19:20:35', '20200405/1586085624951.png', '电动车', '42', '46');
INSERT INTO `ylrc_goods_category` VALUES ('49', '2020-04-05 19:21:01', '2020-04-05 19:21:01', '20200405/1586085652162.png', '交通卡', '43', '46');
INSERT INTO `ylrc_goods_category` VALUES ('50', '2020-04-05 19:21:29', '2020-04-05 19:21:29', '20200405/1586085681117.png', '个人技能', '44', null);
INSERT INTO `ylrc_goods_category` VALUES ('51', '2020-04-05 19:21:47', '2020-04-05 19:21:47', '20200405/1586085696883.png', '摄影', '45', '50');
INSERT INTO `ylrc_goods_category` VALUES ('52', '2020-04-05 19:22:05', '2020-04-05 19:22:05', '20200405/1586085714915.png', '绘画', '46', '50');
INSERT INTO `ylrc_goods_category` VALUES ('53', '2020-04-05 19:22:29', '2020-04-05 19:22:29', '20200405/1586085739125.png', '其他', '46', null);
INSERT INTO `ylrc_goods_category` VALUES ('54', '2020-04-11 21:19:25', '2020-04-11 21:19:40', '20200411/1586611155253.png', '手表', '47', '21');
INSERT INTO `ylrc_goods_category` VALUES ('55', '2020-04-12 22:31:58', '2020-04-12 22:32:08', '20200412/1586701902327.png', '其他小类', '48', '53');

-- ----------------------------
-- Table structure for `ylrc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES ('2', '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('3', '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', '1', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('5', '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', '2', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('7', '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', '5', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('8', '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', '3', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('9', '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', '4', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('10', '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', '6', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('11', '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', '7', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('12', '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', '8', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('13', '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', '9', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('14', '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', '10', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('15', '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', '11', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('16', '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', '12', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('19', '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/admin/upload/upload_photo', 'mdi-arrow-up-bold-circle', '0', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('20', '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', '13', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('21', '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', '14', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('22', '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', '15', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('23', '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', '16', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('24', '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', '17', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('25', '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', '18', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('26', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', '19', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('27', '2020-04-01 20:35:09', '2020-04-01 20:35:09', '物品管理', '/admin/goods_category/list', 'mdi-dialpad', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('28', '2020-04-01 20:35:46', '2020-04-12 22:28:09', '分类管理', '/admin/goods_category/list', 'mdi-apps', '0', '27', '', '');
INSERT INTO `ylrc_menu` VALUES ('29', '2020-04-01 20:36:27', '2020-04-12 22:30:39', '物品管理', '/admin/goods/list', 'mdi-cart', '0', '27', '', '');
INSERT INTO `ylrc_menu` VALUES ('30', '2020-04-01 20:40:48', '2020-04-12 22:28:34', '添加', '/admin/goods_category/add', 'mdi-battery-positive', '0', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('31', '2020-04-01 20:41:33', '2020-04-12 22:30:02', '编辑', 'edit(\'/admin/goods_category/edit\')', 'mdi-border-color', '0', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('32', '2020-04-01 20:42:15', '2020-04-12 22:30:21', '删除', 'del(\'/admin/goods_category/delete\')', 'mdi-close', '0', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('33', '2020-04-13 18:52:12', '2020-04-13 18:52:12', '上架', 'up(\'/admin/goods/up_down\')', 'mdi-arrow-up-bold-box', '0', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('34', '2020-04-13 18:52:55', '2020-04-13 18:52:55', '下架', 'down(\'/admin/goods/up_down\')', 'mdi-arrow-down-bold-box', '0', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('35', '2020-04-13 18:54:10', '2020-04-15 19:17:48', '删除', 'del(\'/admin/goods/delete\')', 'mdi-close-box', '0', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('36', '2020-04-15 19:06:49', '2020-04-15 19:06:49', '推荐', 'recommend(\'/admin/goods/recommend\')', 'mdi-thumb-up', '0', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('37', '2020-04-15 19:07:45', '2020-04-15 19:07:45', '取消推荐', 'unrecommend(\'/admin/goods/recommend\')', 'mdi-thumb-down', '0', '29', '', '');
INSERT INTO `ylrc_menu` VALUES ('38', '2020-04-15 19:32:16', '2020-04-15 19:32:16', '求购物品', '/admin/wanted_goods/list', 'mdi-ticket', '0', '27', '', '');
INSERT INTO `ylrc_menu` VALUES ('39', '2020-04-15 19:32:55', '2020-04-15 19:59:53', '删除', 'del(\'/admin/wanted_goods/delete\')', 'mdi-close-box', '0', '38', '', '');
INSERT INTO `ylrc_menu` VALUES ('40', '2020-04-15 20:02:04', '2020-04-15 20:02:04', '学生管理', '/admin/student/list', 'mdi-account-multiple', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('41', '2020-04-15 20:02:38', '2020-04-15 20:02:38', '学生列表', '/admin/student/list', 'mdi-account-multiple', '0', '40', '', '');
INSERT INTO `ylrc_menu` VALUES ('42', '2020-04-15 20:06:28', '2020-04-15 20:06:28', '冻结', 'freeze(\'/admin/student/update_status\')', 'mdi-account-settings-variant', '0', '41', '', '');
INSERT INTO `ylrc_menu` VALUES ('43', '2020-04-15 20:06:59', '2020-04-15 21:45:31', '激活', 'openStudent(\'/admin/student/update_status\')', 'mdi-account-key', '0', '41', '', '');
INSERT INTO `ylrc_menu` VALUES ('44', '2020-04-15 20:07:33', '2020-04-15 20:07:33', '删除', 'del(\'/admin/student/delete\')', 'mdi-account-remove', '0', '41', '', '');
INSERT INTO `ylrc_menu` VALUES ('45', '2020-04-15 21:52:57', '2020-04-15 21:52:57', '评论管理', '/admin/comment/list', 'mdi-comment-account', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('46', '2020-04-15 21:53:39', '2020-04-15 21:53:39', '评论列表', '/admin/comment/list', 'mdi-comment-multiple-outline', '0', '45', '', '');
INSERT INTO `ylrc_menu` VALUES ('47', '2020-04-15 21:54:35', '2020-04-15 21:54:35', '删除', 'del(\'/admin/comment/delete\')', 'mdi-message-bulleted-off', '0', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('48', '2020-04-16 19:28:48', '2020-04-16 19:28:48', '举报管理', '/admin/report/list', 'mdi-alert', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('49', '2020-04-16 19:30:31', '2020-04-16 19:30:31', '举报列表', '/admin/report/list', 'mdi-view-headline', '0', '48', '', '');
INSERT INTO `ylrc_menu` VALUES ('50', '2020-04-16 19:31:09', '2020-04-16 19:31:09', '删除', 'del(\'/admin/report/delete\')', 'mdi-close-box', '0', '49', '', '');
INSERT INTO `ylrc_menu` VALUES ('51', '2020-04-16 19:46:08', '2020-04-16 19:46:08', '新闻公告', '/admin/news/list', 'mdi-onenote', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('52', '2020-04-16 19:46:39', '2020-04-16 19:46:39', '公告列表', '/admin/news/list', 'mdi-book-open', '0', '51', '', '');
INSERT INTO `ylrc_menu` VALUES ('53', '2020-04-16 19:48:01', '2020-04-16 19:48:01', '添加', '/admin/news/add', 'mdi-plus', '0', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('54', '2020-04-16 19:48:46', '2020-04-16 19:48:46', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', '0', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('55', '2020-04-16 19:49:37', '2020-04-16 19:49:37', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', '0', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('56', '2020-04-18 14:25:58', '2020-04-18 14:25:58', '网站设置', '', 'mdi-settings', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('57', '2020-04-18 14:27:31', '2020-04-18 14:27:31', '友情链接', '/admin/friend_link/list', 'mdi-vector-line', '0', '56', '', '');
INSERT INTO `ylrc_menu` VALUES ('58', '2020-04-18 14:28:36', '2020-04-18 14:28:36', '添加', '/admin/friend_link/add', 'mdi-plus', '0', '57', '', '');
INSERT INTO `ylrc_menu` VALUES ('59', '2020-04-18 14:29:17', '2020-04-18 15:38:53', '编辑', 'edit(\'/admin/friend_link/edit\')', 'mdi-border-color', '0', '57', '', '');
INSERT INTO `ylrc_menu` VALUES ('60', '2020-04-18 14:29:45', '2020-04-18 14:29:45', '删除', 'del(\'/admin/friend_link/delete\')', 'mdi-close-box', '0', '57', '', '');
INSERT INTO `ylrc_menu` VALUES ('61', '2020-04-18 16:26:45', '2020-04-18 16:26:45', '站点设置', '/admin/site_setting/setting', 'mdi-wrench', '0', '56', '', '');
INSERT INTO `ylrc_menu` VALUES ('62', '2020-04-18 16:28:25', '2020-04-18 16:28:25', '提交修改', '/admin/site_setting/save_setting', 'mdi-marker-check', '0', '61', '', '');

-- ----------------------------
-- Table structure for `ylrc_news`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(10024) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES ('1', '2020-04-16 21:29:17', '2020-04-16 21:54:38', '猿来入此校园二手市场平台，配备了详细的视频开发教程。猿来入此网址：https://www.yuanlrc.com/', '2', '关于猿来入此校园二手市场平台', '1');
INSERT INTO `ylrc_news` VALUES ('2', '2020-04-16 21:29:49', '2020-04-16 21:54:41', '1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则', '0', '猿来入此校园二手市场发布商品规则', '4');
INSERT INTO `ylrc_news` VALUES ('3', '2020-04-16 21:30:22', '2020-04-16 21:54:35', '注册时请填写详细的注册信息，学号为必填项。', '1', '猿来入此校园二手市场账号注册规则', '1');

-- ----------------------------
-- Table structure for `ylrc_operater_log`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES ('172', '2020-03-22 14:49:22', '2020-03-22 14:49:22', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('173', '2020-03-22 14:58:14', '2020-03-22 14:58:14', '用户【猿来入此】于【2020-03-22 14:58:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('174', '2020-03-22 15:09:49', '2020-03-22 15:09:49', '用户【猿来入此】于【2020-03-22 15:09:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('175', '2020-03-22 15:11:09', '2020-03-22 15:11:09', '用户【猿来入此】于【2020-03-22 15:11:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('176', '2020-03-22 15:13:41', '2020-03-22 15:13:41', '编辑菜单信息【Menu [name=备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=add(\'/database_bak/add\'), icon=mdi-database-plus, sort=17, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('177', '2020-03-22 16:16:31', '2020-03-22 16:16:31', '用户【猿来入此】于【2020-03-22 16:16:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('178', '2020-03-22 16:31:23', '2020-03-22 16:31:23', '用户【猿来入此】于【2020-03-22 16:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('179', '2020-03-22 16:56:25', '2020-03-22 16:56:25', '用户【猿来入此】于【2020-03-22 16:56:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('180', '2020-03-22 17:00:42', '2020-03-22 17:00:42', '用户【猿来入此】于【2020-03-22 17:00:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('181', '2020-03-22 17:13:01', '2020-03-22 17:13:01', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('182', '2020-03-22 17:15:04', '2020-03-22 17:15:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171504.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('183', '2020-03-22 17:15:14', '2020-03-22 17:15:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171514.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('184', '2020-03-22 17:21:02', '2020-03-22 17:21:02', '用户【猿来入此】于【2020-03-22 17:21:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('185', '2020-03-22 17:21:15', '2020-03-22 17:21:15', '添加角色【dsadsasadsa】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('186', '2020-03-22 18:09:55', '2020-03-22 18:09:55', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('187', '2020-03-22 18:59:16', '2020-03-22 18:59:16', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322185916.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('188', '2020-03-22 18:59:41', '2020-03-22 18:59:41', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('189', '2020-03-22 19:12:03', '2020-03-22 19:12:03', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('190', '2020-03-22 19:12:59', '2020-03-22 19:12:59', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('191', '2020-03-22 19:35:07', '2020-03-22 19:35:07', '用户【猿来入此】于【2020-03-22 19:35:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('192', '2020-03-22 19:35:21', '2020-03-22 19:35:21', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193521.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('193', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '添加菜单信息【Menu [name=还原, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=restore(\'/database_bak/restore\'), icon=mdi-database-minus, sort=19, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('194', '2020-03-22 19:36:34', '2020-03-22 19:36:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('195', '2020-03-22 19:36:47', '2020-03-22 19:36:47', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('196', '2020-03-22 19:37:21', '2020-03-22 19:37:21', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('197', '2020-03-22 19:37:54', '2020-03-22 19:37:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('198', '2020-03-22 19:38:15', '2020-03-22 19:38:15', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('199', '2020-03-22 19:43:34', '2020-03-22 19:43:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194334.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('200', '2020-03-22 19:43:39', '2020-03-22 19:43:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194339.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('201', '2020-03-22 19:43:44', '2020-03-22 19:43:44', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194344.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('202', '2020-03-22 19:43:49', '2020-03-22 19:43:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194349.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('203', '2020-03-22 19:43:52', '2020-03-22 19:43:52', '用户【猿来入此】于【2020-03-22 19:43:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('204', '2020-03-22 19:43:54', '2020-03-22 19:43:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194354.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('205', '2020-03-22 19:43:59', '2020-03-22 19:43:59', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194359.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('206', '2020-03-22 19:44:04', '2020-03-22 19:44:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194404.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('207', '2020-03-22 19:44:09', '2020-03-22 19:44:09', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194409.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('208', '2020-03-22 19:44:14', '2020-03-22 19:44:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194414.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('209', '2020-03-22 19:44:19', '2020-03-22 19:44:19', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194419.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('210', '2020-03-22 19:44:24', '2020-03-22 19:44:24', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194424.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('211', '2020-03-22 19:44:29', '2020-03-22 19:44:29', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194429.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('212', '2020-03-22 19:44:34', '2020-03-22 19:44:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194434.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('213', '2020-03-22 19:44:39', '2020-03-22 19:44:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194439.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('214', '2020-03-22 21:11:19', '2020-03-22 21:11:19', '用户【猿来入此】于【2020-03-22 21:11:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('215', '2020-03-22 21:18:12', '2020-03-22 21:18:12', '用户【猿来入此】于【2020-03-22 21:18:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('216', '2020-03-22 21:36:47', '2020-03-22 21:36:47', '用户【猿来入此】于【2020-03-22 21:36:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('217', '2020-03-22 21:43:51', '2020-03-22 21:43:51', '用户【猿来入此】于【2020-03-22 21:43:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('218', '2020-03-23 17:41:23', '2020-03-23 17:41:23', '用户【猿来入此】于【2020-03-23 17:41:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('219', '2020-03-23 17:41:49', '2020-03-23 17:41:49', '添加菜单信息【Menu [name=sdadsa递四方速递, parent=null, url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('220', '2020-03-23 17:42:02', '2020-03-23 17:42:02', '编辑菜单信息【Menu [name=sdadsa递四方速递, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=3, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('221', '2020-03-23 17:42:09', '2020-03-23 17:42:09', '删除菜单信息，菜单ID【27】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('222', '2020-03-23 17:42:32', '2020-03-23 17:42:32', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('223', '2020-03-23 17:42:45', '2020-03-23 17:42:45', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('224', '2020-03-23 17:42:56', '2020-03-23 17:42:56', '删除角色ID【7】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('225', '2020-03-23 17:43:16', '2020-03-23 17:43:16', '添加角色【撒旦撒】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('226', '2020-03-23 17:43:29', '2020-03-23 17:43:29', '删除角色ID【8】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('227', '2020-03-23 17:44:11', '2020-03-23 17:44:11', '添加用户，用户名：打撒大撒', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('228', '2020-03-23 17:44:29', '2020-03-23 17:44:29', '编辑用户，用户名：打撒大撒22', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('229', '2020-03-23 17:44:37', '2020-03-23 17:44:37', '添加用户，用户ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('230', '2020-03-23 17:44:55', '2020-03-23 17:44:55', '添加用户，用户ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('231', '2020-03-23 17:45:47', '2020-03-23 17:45:47', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('232', '2020-03-23 17:46:49', '2020-03-23 17:46:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('233', '2020-03-23 17:47:16', '2020-03-23 17:47:16', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('234', '2020-03-23 17:48:15', '2020-03-23 17:48:15', '用户【测试账号】于【2020-03-23 17:48:15】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('235', '2020-03-23 17:49:00', '2020-03-23 17:49:00', '编辑角色【测试角色】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('236', '2020-03-23 17:49:50', '2020-03-23 17:49:50', '用户【猿来入此】于【2020-03-23 17:49:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('237', '2020-03-23 17:50:03', '2020-03-23 17:50:03', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('238', '2020-03-23 17:50:19', '2020-03-23 17:50:19', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('239', '2020-03-23 17:50:56', '2020-03-23 17:50:56', '用户【猿来入此】于【2020-03-23 17:50:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('240', '2020-03-30 22:56:58', '2020-03-30 22:56:58', '用户【猿来入此】于【2020-03-30 22:56:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('241', '2020-03-30 22:59:02', '2020-03-30 22:59:02', '添加用户，用户名：张三同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('242', '2020-04-01 20:31:23', '2020-04-01 20:31:23', '用户【猿来入此】于【2020-04-01 20:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('243', '2020-04-01 20:35:09', '2020-04-01 20:35:09', '添加菜单信息【Menu [name=物品管理, parent=null, url=/admin/goods_category/list, icon=mdi-dialpad, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('244', '2020-04-01 20:35:46', '2020-04-01 20:35:46', '添加菜单信息【Menu [name=分类管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods_category/list, icon=mdi-apps, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('245', '2020-04-01 20:36:27', '2020-04-01 20:36:27', '添加菜单信息【Menu [name=物品管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods/list, icon=mdi-cart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('246', '2020-04-01 20:40:48', '2020-04-01 20:40:48', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods_category/add, icon=mdi-battery-positive, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('247', '2020-04-01 20:41:33', '2020-04-01 20:41:33', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/goods_category/add\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('248', '2020-04-01 20:42:15', '2020-04-01 20:42:15', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/goods_category/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('249', '2020-04-01 20:42:37', '2020-04-01 20:42:37', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('250', '2020-04-01 20:42:49', '2020-04-01 20:42:49', '用户【猿来入此】于【2020-04-01 20:42:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('251', '2020-04-01 20:57:35', '2020-04-01 20:57:35', '用户【猿来入此】于【2020-04-01 20:57:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('252', '2020-04-01 21:05:03', '2020-04-01 21:05:03', '用户【猿来入此】于【2020-04-01 21:05:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('253', '2020-04-02 20:16:33', '2020-04-02 20:16:33', '用户【猿来入此】于【2020-04-02 20:16:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('254', '2020-04-02 20:19:50', '2020-04-02 20:19:50', '用户【猿来入此】于【2020-04-02 20:19:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('255', '2020-04-02 20:22:22', '2020-04-02 20:22:22', '用户【猿来入此】于【2020-04-02 20:22:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('256', '2020-04-02 21:11:49', '2020-04-02 21:11:49', '用户【猿来入此】于【2020-04-02 21:11:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('257', '2020-04-02 21:25:55', '2020-04-02 21:25:55', '用户【猿来入此】于【2020-04-02 21:25:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('258', '2020-04-02 21:26:29', '2020-04-02 21:26:29', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/goods_category/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('259', '2020-04-02 21:26:40', '2020-04-02 21:26:40', '用户【猿来入此】于【2020-04-02 21:26:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('260', '2020-04-02 21:29:41', '2020-04-02 21:29:41', '用户【猿来入此】于【2020-04-02 21:29:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('261', '2020-04-05 18:44:22', '2020-04-05 18:44:22', '用户【猿来入此】于【2020-04-05 18:44:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('262', '2020-04-05 19:55:54', '2020-04-05 19:55:54', '用户【猿来入此】于【2020-04-05 19:55:54】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('263', '2020-04-11 21:18:28', '2020-04-11 21:18:28', '用户【猿来入此】于【2020-04-11 21:18:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('264', '2020-04-12 22:14:46', '2020-04-12 22:14:46', '用户【猿来入此】于【2020-04-12 22:14:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('265', '2020-04-12 22:28:09', '2020-04-12 22:28:09', '编辑菜单信息【Menu [name=分类管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods_category/list, icon=mdi-apps, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('266', '2020-04-12 22:28:34', '2020-04-12 22:28:34', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods_category/add, icon=mdi-battery-positive, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('267', '2020-04-12 22:30:02', '2020-04-12 22:30:02', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin_goods_category/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('268', '2020-04-12 22:30:21', '2020-04-12 22:30:21', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin_goods_category/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('269', '2020-04-12 22:30:39', '2020-04-12 22:30:39', '编辑菜单信息【Menu [name=物品管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods/list, icon=mdi-cart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('270', '2020-04-12 22:31:08', '2020-04-12 22:31:08', '用户【猿来入此】于【2020-04-12 22:31:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('271', '2020-04-13 18:36:22', '2020-04-13 18:36:22', '用户【猿来入此】于【2020-04-13 18:36:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('272', '2020-04-13 18:44:49', '2020-04-13 18:44:49', '用户【猿来入此】于【2020-04-13 18:44:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('273', '2020-04-13 18:52:12', '2020-04-13 18:52:12', '添加菜单信息【Menu [name=上架, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=up(\'/admin/goods/up_down\'), icon=mdi-arrow-up-bold-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('274', '2020-04-13 18:52:55', '2020-04-13 18:52:55', '添加菜单信息【Menu [name=下架, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=down(\'/admin/goods/up_down\'), icon=mdi-arrow-down-bold-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('275', '2020-04-13 18:54:10', '2020-04-13 18:54:10', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('276', '2020-04-13 18:54:27', '2020-04-13 18:54:27', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('277', '2020-04-13 18:54:40', '2020-04-13 18:54:40', '用户【猿来入此】于【2020-04-13 18:54:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('278', '2020-04-13 19:02:09', '2020-04-13 19:02:09', '用户【猿来入此】于【2020-04-13 19:02:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('279', '2020-04-13 19:34:51', '2020-04-13 19:34:51', '用户【猿来入此】于【2020-04-13 19:34:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('280', '2020-04-13 20:00:28', '2020-04-13 20:00:28', '用户【猿来入此】于【2020-04-13 20:00:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('281', '2020-04-13 21:02:50', '2020-04-13 21:02:50', '用户【猿来入此】于【2020-04-13 21:02:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('282', '2020-04-13 21:48:47', '2020-04-13 21:48:47', '用户【猿来入此】于【2020-04-13 21:48:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('283', '2020-04-13 21:54:05', '2020-04-13 21:54:05', '用户【猿来入此】于【2020-04-13 21:54:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('284', '2020-04-13 21:55:37', '2020-04-13 21:55:37', '用户【猿来入此】于【2020-04-13 21:55:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('285', '2020-04-15 19:04:02', '2020-04-15 19:04:02', '用户【猿来入此】于【2020-04-15 19:04:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('286', '2020-04-15 19:06:49', '2020-04-15 19:06:49', '添加菜单信息【Menu [name=推荐, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=recommend(\'/admin/goods/recommend\'), icon=mdi-thumb-up, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('287', '2020-04-15 19:07:45', '2020-04-15 19:07:45', '添加菜单信息【Menu [name=取消推荐, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=unrecommend(\'/admin/goods/recommend\'), icon=mdi-thumb-down, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('288', '2020-04-15 19:08:02', '2020-04-15 19:08:02', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('289', '2020-04-15 19:11:58', '2020-04-15 19:11:58', '用户【猿来入此】于【2020-04-15 19:11:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('290', '2020-04-15 19:17:48', '2020-04-15 19:17:48', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('291', '2020-04-15 19:18:01', '2020-04-15 19:18:01', '用户【猿来入此】于【2020-04-15 19:18:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('292', '2020-04-15 19:32:16', '2020-04-15 19:32:16', '添加菜单信息【Menu [name=求购物品, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/wanted_goods/list, icon=mdi-ticket, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('293', '2020-04-15 19:32:55', '2020-04-15 19:32:55', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/wanted_goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('294', '2020-04-15 19:33:03', '2020-04-15 19:33:03', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('295', '2020-04-15 19:54:57', '2020-04-15 19:54:57', '用户【猿来入此】于【2020-04-15 19:54:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('296', '2020-04-15 19:59:53', '2020-04-15 19:59:53', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/wanted_goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('297', '2020-04-15 20:00:14', '2020-04-15 20:00:14', '用户【猿来入此】于【2020-04-15 20:00:14】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('298', '2020-04-15 20:02:04', '2020-04-15 20:02:04', '添加菜单信息【Menu [name=学生管理, parent=null, url=/admin/student/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('299', '2020-04-15 20:02:38', '2020-04-15 20:02:38', '添加菜单信息【Menu [name=学生列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/student/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('300', '2020-04-15 20:06:28', '2020-04-15 20:06:28', '添加菜单信息【Menu [name=冻结, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=freeze(\'/admin/student/update_status\'), icon=mdi-account-settings-variant, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('301', '2020-04-15 20:06:59', '2020-04-15 20:06:59', '添加菜单信息【Menu [name=激活, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=open(\'/admin/student/update_status\'), icon=mdi-account-key, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('302', '2020-04-15 20:07:33', '2020-04-15 20:07:33', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/student/delete\'), icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('303', '2020-04-15 20:07:43', '2020-04-15 20:07:43', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('304', '2020-04-15 21:36:09', '2020-04-15 21:36:09', '用户【猿来入此】于【2020-04-15 21:36:09】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('305', '2020-04-15 21:45:31', '2020-04-15 21:45:31', '编辑菜单信息【Menu [name=激活, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=openStudent(\'/admin/student/update_status\'), icon=mdi-account-key, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('306', '2020-04-15 21:45:51', '2020-04-15 21:45:51', '用户【猿来入此】于【2020-04-15 21:45:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('307', '2020-04-15 21:52:57', '2020-04-15 21:52:57', '添加菜单信息【Menu [name=评论管理, parent=null, url=/admin/comment/list, icon=mdi-comment-account, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('308', '2020-04-15 21:53:39', '2020-04-15 21:53:39', '添加菜单信息【Menu [name=评论列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comment/list, icon=mdi-comment-multiple-outline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('309', '2020-04-15 21:54:35', '2020-04-15 21:54:35', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/comment/delete\'), icon=mdi-message-bulleted-off, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('310', '2020-04-15 21:54:45', '2020-04-15 21:54:45', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('311', '2020-04-15 22:22:56', '2020-04-15 22:22:56', '用户【猿来入此】于【2020-04-15 22:22:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('312', '2020-04-16 19:28:04', '2020-04-16 19:28:04', '用户【猿来入此】于【2020-04-16 19:28:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('313', '2020-04-16 19:28:48', '2020-04-16 19:28:48', '添加菜单信息【Menu [name=举报管理, parent=null, url=/admin/report/list, icon=mdi-alert, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('314', '2020-04-16 19:30:31', '2020-04-16 19:30:31', '添加菜单信息【Menu [name=举报列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/report/list, icon=mdi-view-headline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('315', '2020-04-16 19:31:09', '2020-04-16 19:31:09', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/report/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('316', '2020-04-16 19:31:17', '2020-04-16 19:31:17', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('317', '2020-04-16 19:33:58', '2020-04-16 19:33:58', '用户【猿来入此】于【2020-04-16 19:33:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('318', '2020-04-16 19:46:08', '2020-04-16 19:46:08', '添加菜单信息【Menu [name=新闻公告, parent=null, url=/admin/news/list, icon=mdi-onenote, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('319', '2020-04-16 19:46:39', '2020-04-16 19:46:39', '添加菜单信息【Menu [name=公告列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/list, icon=mdi-book-open, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('320', '2020-04-16 19:48:01', '2020-04-16 19:48:01', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('321', '2020-04-16 19:48:46', '2020-04-16 19:48:46', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/news/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('322', '2020-04-16 19:49:37', '2020-04-16 19:49:37', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/news/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('323', '2020-04-16 19:49:47', '2020-04-16 19:49:47', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('324', '2020-04-16 20:36:53', '2020-04-16 20:36:53', '用户【猿来入此】于【2020-04-16 20:36:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('325', '2020-04-16 21:22:24', '2020-04-16 21:22:24', '用户【猿来入此】于【2020-04-16 21:22:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('326', '2020-04-16 21:29:17', '2020-04-16 21:29:17', '添加新闻公告:News [title=fsdfsd, content=dsfds, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('327', '2020-04-16 21:29:49', '2020-04-16 21:29:49', '添加新闻公告:News [title=商品发布规则, content=这里是具体的商品发布规则。, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('328', '2020-04-16 21:30:22', '2020-04-16 21:30:22', '添加新闻公告:News [title=撒旦撒萨达萨达, content=萨达撒的撒旦撒, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('329', '2020-04-16 21:30:29', '2020-04-16 21:30:29', '添加新闻公告:News [title=萨芬广东省水电费, content=但是放水电费萨达但是发送到, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('330', '2020-04-16 21:30:35', '2020-04-16 21:30:35', '添加新闻公告:News [title=房顶上地方水电费, content=房顶上房顶上水电费但是, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('331', '2020-04-16 21:32:31', '2020-04-16 21:32:31', '编辑新闻公告：News [title=测试新闻, content=这里是测试的新闻dsfds, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('332', '2020-04-16 21:32:57', '2020-04-16 21:32:57', '编辑新闻公告：News [title=房顶上地方水电费, content=房顶上房顶上水电费但是, viewNumber=0, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('333', '2020-04-16 21:33:04', '2020-04-16 21:33:04', '编辑新闻公告：News [title=萨芬广东省水电费, content=但是放水电费萨达但是发送到, viewNumber=0, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('334', '2020-04-16 21:36:12', '2020-04-16 21:36:12', '删除新闻公告，新闻公告ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('335', '2020-04-16 21:36:18', '2020-04-16 21:36:18', '删除新闻公告，新闻公告ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('336', '2020-04-16 21:36:57', '2020-04-16 21:36:57', '编辑新闻公告：News [title=商品发布规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('337', '2020-04-16 21:44:28', '2020-04-16 21:44:28', '用户【猿来入此】于【2020-04-16 21:44:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('338', '2020-04-16 21:45:49', '2020-04-16 21:45:49', '编辑新闻公告：News [title=关于在猿来入此校园二手市场发布商品的规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('339', '2020-04-16 21:46:08', '2020-04-16 21:46:08', '编辑新闻公告：News [title=猿来入此校园二手市场发布商品规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('340', '2020-04-16 21:46:55', '2020-04-16 21:46:55', '编辑新闻公告：News [title=猿来入此校园二手市场账号注册规则, content=注册时请填写详细的注册信息，学号为必填项。, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('341', '2020-04-16 21:48:12', '2020-04-16 21:48:12', '编辑新闻公告：News [title=关于猿来入此校园二手市场平台, content=猿来入此校园二手市场平台，配备了详细的视频开发教程。猿来入此网址：https://www.yuanlrc.com/, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('342', '2020-04-16 21:48:24', '2020-04-16 21:48:24', '编辑新闻公告：News [title=关于猿来入此校园二手市场平台, content=猿来入此校园二手市场平台，配备了详细的视频开发教程。猿来入此网址：https://www.yuanlrc.com/, viewNumber=0, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('343', '2020-04-18 14:23:52', '2020-04-18 14:23:52', '用户【猿来入此】于【2020-04-18 14:23:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('344', '2020-04-18 14:25:58', '2020-04-18 14:25:58', '添加菜单信息【Menu [name=网站设置, parent=null, url=, icon=mdi-settings, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('345', '2020-04-18 14:27:31', '2020-04-18 14:27:31', '添加菜单信息【Menu [name=友情链接, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/friend_link/list, icon=mdi-vector-line, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('346', '2020-04-18 14:28:36', '2020-04-18 14:28:36', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/friend_link/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('347', '2020-04-18 14:29:17', '2020-04-18 14:29:17', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/friend_likn/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('348', '2020-04-18 14:29:45', '2020-04-18 14:29:45', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/friend_link/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('349', '2020-04-18 14:29:54', '2020-04-18 14:29:54', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('350', '2020-04-18 14:30:06', '2020-04-18 14:30:06', '用户【猿来入此】于【2020-04-18 14:30:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('351', '2020-04-18 14:32:25', '2020-04-18 14:32:25', '添加友情链接:FriendLink [name=猿来入此, url=http://programmer.ischoolbar.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('352', '2020-04-18 14:32:49', '2020-04-18 14:32:49', '添加友情链接:FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com/, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('353', '2020-04-18 15:38:16', '2020-04-18 15:38:16', '用户【猿来入此】于【2020-04-18 15:38:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('354', '2020-04-18 15:38:53', '2020-04-18 15:38:53', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/friend_link/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('355', '2020-04-18 15:39:04', '2020-04-18 15:39:04', '用户【猿来入此】于【2020-04-18 15:39:04】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('356', '2020-04-18 15:39:44', '2020-04-18 15:39:44', '编辑友情链接：FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com/, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('357', '2020-04-18 15:39:51', '2020-04-18 15:39:51', '编辑友情链接：FriendLink [name=猿来入此, url=http://programmer.ischoolbar.com, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('358', '2020-04-18 15:40:05', '2020-04-18 15:40:05', '添加友情链接:FriendLink [name=dsfsd , url=fsd sdf ds水电费, sort=54]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('359', '2020-04-18 15:40:13', '2020-04-18 15:40:13', '添加友情链接:FriendLink [name=房顶上 的, url=房顶上 水电费, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('360', '2020-04-18 15:40:20', '2020-04-18 15:40:20', '删除友情链接，友情链接ID：3', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('361', '2020-04-18 15:40:30', '2020-04-18 15:40:30', '添加友情链接:FriendLink [name=撒旦撒旦撒, url=撒旦撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('362', '2020-04-18 15:40:36', '2020-04-18 15:40:36', '添加友情链接:FriendLink [name=但撒旦撒撒, url=撒旦撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('363', '2020-04-18 15:40:43', '2020-04-18 15:40:43', '添加友情链接:FriendLink [name=的撒旦撒撒旦撒, url=萨达萨达, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('364', '2020-04-18 15:40:57', '2020-04-18 15:40:57', '添加友情链接:FriendLink [name=撒旦撒 萨达撒, url=萨达爱的撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('365', '2020-04-18 15:45:58', '2020-04-18 15:45:58', '添加友情链接:FriendLink [name=萨达, url=DSA, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('366', '2020-04-18 15:47:25', '2020-04-18 15:47:25', '添加友情链接:FriendLink [name=萨达, url=muyi.so, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('367', '2020-04-18 15:49:20', '2020-04-18 15:49:20', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=https://www.yuanlrc.com/	, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('368', '2020-04-18 15:49:30', '2020-04-18 15:49:30', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=http://www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('369', '2020-04-18 15:49:40', '2020-04-18 15:49:40', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('370', '2020-04-18 15:49:49', '2020-04-18 15:49:49', '添加友情链接:FriendLink [name=.yuanlrc.com, url=.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('371', '2020-04-18 15:49:59', '2020-04-18 15:49:59', '删除友情链接，友情链接ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('372', '2020-04-18 15:50:03', '2020-04-18 15:50:03', '删除友情链接，友情链接ID：13', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('373', '2020-04-18 15:54:44', '2020-04-18 15:54:44', '批量删除友情链接，友情链接IDS：9,7,6,5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('374', '2020-04-18 15:55:02', '2020-04-18 15:55:02', '批量删除友情链接，友情链接IDS：10,14,4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('375', '2020-04-18 15:55:49', '2020-04-18 15:55:49', '批量删除友情链接，友情链接IDS：8,12', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('376', '2020-04-18 15:56:11', '2020-04-18 15:56:11', '编辑友情链接：FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('377', '2020-04-18 15:59:23', '2020-04-18 15:59:23', '用户【猿来入此】于【2020-04-18 15:59:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('378', '2020-04-18 15:59:56', '2020-04-18 15:59:56', '添加友情链接:FriendLink [name=猿来入此A, url=http://www.yuanlrc.com, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('379', '2020-04-18 16:00:20', '2020-04-18 16:00:20', '添加友情链接:FriendLink [name=猿来入此B, url=http://www.yuanlrc.com, sort=3]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('380', '2020-04-18 16:00:31', '2020-04-18 16:00:31', '添加友情链接:FriendLink [name=猿来入此C, url=http://programmer.ischoolbar.com, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('381', '2020-04-18 16:24:49', '2020-04-18 16:24:49', '用户【猿来入此】于【2020-04-18 16:24:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('382', '2020-04-18 16:26:45', '2020-04-18 16:26:45', '添加菜单信息【Menu [name=站点设置, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/site_setting/setting, icon=mdi-wrench, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('383', '2020-04-18 16:28:25', '2020-04-18 16:28:25', '添加菜单信息【Menu [name=提交修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/site_setting/save_setting, icon=mdi-marker-check, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('384', '2020-04-18 16:28:37', '2020-04-18 16:28:37', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('385', '2020-04-18 16:29:27', '2020-04-18 16:29:27', '用户【猿来入此】于【2020-04-18 16:29:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('386', '2020-04-18 17:02:17', '2020-04-18 17:02:17', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('387', '2020-04-18 17:02:55', '2020-04-18 17:02:55', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('388', '2020-04-18 17:05:37', '2020-04-18 17:05:37', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('389', '2020-04-18 17:11:41', '2020-04-18 17:11:41', '用户【猿来入此】于【2020-04-18 17:11:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('390', '2020-04-18 17:11:50', '2020-04-18 17:11:50', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('391', '2020-04-18 17:12:40', '2020-04-18 17:12:40', '修改网站设置:SiteSetting [siteName=猿来入此校园二手市场, siteUrl=www.yuanlrc.com, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('392', '2020-04-18 17:21:09', '2020-04-18 17:21:09', '修改网站设置:SiteSetting [siteName=猿来入此校园二手市场, siteUrl=www.yuanlrc.com, logo1=20200418/1587201658762.png, logo2=20200418/1587201663687.png, qrcode=20200418/1587201667179.png, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');

-- ----------------------------
-- Table structure for `ylrc_report_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_report_goods`;
CREATE TABLE `ylrc_report_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6g0s4688rq2bnty1u1ev1rgly` (`goods_id`),
  KEY `FKmr7s3q3jpq824h69f5ip9gleq` (`student_id`),
  CONSTRAINT `FK6g0s4688rq2bnty1u1ev1rgly` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`),
  CONSTRAINT `FKmr7s3q3jpq824h69f5ip9gleq` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_report_goods
-- ----------------------------
INSERT INTO `ylrc_report_goods` VALUES ('5', '2020-04-12 12:00:49', '2020-04-12 12:00:49', '涉嫌广告传销！', '20', '2');

-- ----------------------------
-- Table structure for `ylrc_role`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES ('1', '2020-03-15 13:16:38', '2020-04-18 16:28:37', '超级管理员', '超级管理员拥有最高权限。', '1');
INSERT INTO `ylrc_role` VALUES ('2', '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', '1');
INSERT INTO `ylrc_role` VALUES ('4', '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', '0');

-- ----------------------------
-- Table structure for `ylrc_role_authorities`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES ('2', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '8');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '9');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '10');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '12');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '14');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '19');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '20');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '21');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '22');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '23');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '24');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '25');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '26');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '27');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '28');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '30');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '31');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '32');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '29');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '33');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '34');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '35');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '36');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '37');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '38');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '39');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '40');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '41');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '42');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '43');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '44');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '45');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '46');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '47');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '48');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '49');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '50');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '51');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '52');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '53');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '54');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '55');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '56');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '57');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '58');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '59');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '60');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '61');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '62');

-- ----------------------------
-- Table structure for `ylrc_site_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_site_setting`;
CREATE TABLE `ylrc_site_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `all_rights` varchar(256) NOT NULL,
  `logo_1` varchar(256) NOT NULL,
  `logo_2` varchar(256) NOT NULL,
  `qrcode` varchar(256) NOT NULL,
  `site_name` varchar(128) NOT NULL,
  `site_url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_site_setting
-- ----------------------------
INSERT INTO `ylrc_site_setting` VALUES ('1', '2020-04-18 17:02:17', '2020-04-18 17:21:09', '©2016-2020【猿来入此】 版权所有', '20200418/1587201658762.png', '20200418/1587201663687.png', '20200418/1587201667179.png', '猿来入此校园二手市场', 'www.yuanlrc.com');

-- ----------------------------
-- Table structure for `ylrc_studnet`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_studnet`;
CREATE TABLE `ylrc_studnet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `academy` varchar(18) DEFAULT NULL,
  `grade` varchar(18) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `qq` varchar(18) DEFAULT NULL,
  `school` varchar(18) DEFAULT NULL,
  `sn` varchar(18) NOT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(18) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5se32pxcytmbwgepjrjrdmvjr` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_studnet
-- ----------------------------
INSERT INTO `ylrc_studnet` VALUES ('2', '2020-04-06 12:52:02', '2020-04-18 18:05:56', '计算机科学与技术学院', '软件1102', '13656565656', '猿来入此', '11221232132', '东华大学', '158549530920', '20200406/1586162585279.jpg', '1', '111111');
INSERT INTO `ylrc_studnet` VALUES ('3', '2020-04-11 15:20:12', '2020-04-11 15:23:29', '计算机与科学技术学院', '计算机1103', '13946598956', '小猪爱佩琪', '11956256', '清华大学', '158549530921', '20200411/1586589655027.jpg', '1', '111111');
INSERT INTO `ylrc_studnet` VALUES ('4', '2020-04-11 23:35:40', '2020-04-15 21:48:47', '材料学院', '材料1104', '13656569456', '会飞的小乌龟', '1658555644', '同济大学', '158540174522', '20200411/1586619722105.png', '1', '111111');
INSERT INTO `ylrc_studnet` VALUES ('5', '2020-04-12 20:58:29', '2020-04-15 21:46:39', '材料学院', '材料2011级', '13656565656', '起名字真难', '1122123213', '上海交通大学', '158549530922', '20200412/1586700613292.png', '1', '111111');

-- ----------------------------
-- Table structure for `ylrc_user`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES ('1', '2020-03-18 19:18:53', '2020-03-22 12:43:54', 'ylrc@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', '1', '1', '猿来入此', '1');
INSERT INTO `ylrc_user` VALUES ('2', '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', '1', '1', '测试账号', '2');
INSERT INTO `ylrc_user` VALUES ('5', '2020-03-20 20:42:19', '2020-03-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565656', '123456', '1', '1', '小刘同志', '4');
INSERT INTO `ylrc_user` VALUES ('7', '2020-03-30 22:59:02', '2020-03-30 22:59:02', 'llq@qq.com', '20200330/1585580308721.jpg', '13656565656', '123456', '1', '1', '张三同志', '2');

-- ----------------------------
-- Table structure for `ylrc_wanted_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_wanted_goods`;
CREATE TABLE `ylrc_wanted_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `name` varchar(32) NOT NULL,
  `sell_price` float NOT NULL,
  `trade_place` varchar(128) NOT NULL,
  `view_number` int(11) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqvrfd43yhp11er38hkfcxi103` (`student_id`),
  CONSTRAINT `FKqvrfd43yhp11er38hkfcxi103` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_wanted_goods
-- ----------------------------
INSERT INTO `ylrc_wanted_goods` VALUES ('1', '2020-04-11 18:00:07', '2020-04-11 22:57:47', '想买iphoneX 256G的，有没有人需要出售的呢？有愿意卖的请联系我。', '想买iphoneX 256G的，有吗', '899', '男生宿舍楼17号宿舍楼', '0', '3');
INSERT INTO `ylrc_wanted_goods` VALUES ('4', '2020-04-11 23:29:32', '2020-04-11 23:29:32', '本人想买一个mac book pro，有没有人愿意卖的，有的话请联系我的QQ！', '想买一个mac book pro', '5999', '东华大学北门', '0', '3');
INSERT INTO `ylrc_wanted_goods` VALUES ('5', '2020-04-11 23:31:01', '2020-04-11 23:31:01', '有没有快要毕业的学长想卖掉自己自行车的，本人自行车骑了没两天就被偷了，想买个二手的来骑，有愿意卖的请联系我QQ！', '有没有学长想卖自行车？', '98', '文汇路300弄', '0', '2');
INSERT INTO `ylrc_wanted_goods` VALUES ('6', '2020-04-11 23:34:43', '2020-04-11 23:34:43', '本人笔记本电脑太卡了，想买一个配置比较高的笔记本电脑，有意者请联系我。', '想买一个笔记本电脑', '2699', '17号宿舍楼', '0', '2');
INSERT INTO `ylrc_wanted_goods` VALUES ('7', '2020-04-11 23:37:18', '2020-04-11 23:37:18', '有人愿意卖自己的球拍嘛？最好是一副，有的请联系我！', '有没有人手上有羽毛球拍要出售的？', '55', '同济大学嘉定小区北门', '0', '4');
