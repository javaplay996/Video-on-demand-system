/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shipindianbo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shipindianbo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shipindianbo`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'询问问题','2023-04-13 15:43:02',NULL,NULL,2,1,'2023-04-13 15:43:03'),(2,1,NULL,NULL,'111111111111111111111111111111','2023-04-13 15:43:34',NULL,2,'2023-04-13 15:43:34');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-13 15:10:39'),(2,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-13 15:10:39'),(3,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-13 15:10:39'),(4,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-13 15:10:39'),(5,'shipin_types','视频类型',1,'视频类型1',NULL,NULL,'2023-04-13 15:10:39'),(6,'shipin_types','视频类型',2,'视频类型2',NULL,NULL,'2023-04-13 15:10:39'),(7,'shipin_types','视频类型',3,'视频类型3',NULL,NULL,'2023-04-13 15:10:39'),(8,'shipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-13 15:10:39'),(9,'shipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-13 15:10:39'),(10,'shipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-13 15:10:39'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-13 15:10:39'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-13 15:10:39'),(13,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-13 15:10:39'),(14,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-13 15:10:39'),(15,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-13 15:10:39'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-13 15:10:39'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-13 15:10:39');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',108,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(2,'帖子标题2',1,NULL,'发布内容2',335,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(3,'帖子标题3',3,NULL,'发布内容3',212,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(4,'帖子标题4',3,NULL,'发布内容4',469,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(5,'帖子标题5',3,NULL,'发布内容5',52,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(6,'帖子标题6',3,NULL,'发布内容6',57,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(7,'帖子标题7',2,NULL,'发布内容7',108,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(8,'帖子标题8',2,NULL,'发布内容8',345,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(9,'帖子标题9',3,NULL,'发布内容9',145,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(10,'帖子标题10',1,NULL,'发布内容10',332,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(11,'帖子标题11',3,NULL,'发布内容11',142,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(12,'帖子标题12',1,NULL,'发布内容12',447,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(13,'帖子标题13',3,NULL,'发布内容13',363,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(14,'帖子标题14',2,NULL,'发布内容14',105,1,'2023-04-13 15:10:49','2023-04-13 15:10:49','2023-04-13 15:10:49'),(15,NULL,1,NULL,'用户登录后能删除自己发布的贴子和帖子评论111',14,2,'2023-04-13 15:42:32',NULL,'2023-04-13 15:42:32'),(17,NULL,NULL,1,'2222222222222222222222222222222222',14,2,'2023-04-13 15:43:43',NULL,'2023-04-13 15:43:43');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-13 15:10:49','公告详情1','2023-04-13 15:10:49'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-13 15:10:49','公告详情2','2023-04-13 15:10:49'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-13 15:10:49','公告详情3','2023-04-13 15:10:49'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-13 15:10:49','公告详情4','2023-04-13 15:10:49'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-13 15:10:49','公告详情5','2023-04-13 15:10:49'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-13 15:10:49','公告详情6','2023-04-13 15:10:49'),(7,'公告标题7',2,'upload/news7.jpg','2023-04-13 15:10:49','公告详情7','2023-04-13 15:10:49'),(8,'公告标题8',3,'upload/news8.jpg','2023-04-13 15:10:49','公告详情8','2023-04-13 15:10:49'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-13 15:10:49','公告详情9','2023-04-13 15:10:49'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-13 15:10:49','公告详情10','2023-04-13 15:10:49'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-13 15:10:49','公告详情11','2023-04-13 15:10:49'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-13 15:10:49','公告详情12','2023-04-13 15:10:49'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-13 15:10:49','公告详情13','2023-04-13 15:10:49'),(14,'公告标题14',3,'upload/news14.jpg','2023-04-13 15:10:49','公告详情14','2023-04-13 15:10:49');

/*Table structure for table `shipin` */

DROP TABLE IF EXISTS `shipin`;

CREATE TABLE `shipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题  Search111 ',
  `shipin_photo` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `shipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `shipin_clicknum` int(11) DEFAULT NULL COMMENT '视频热度',
  `shipin_content` longtext COMMENT '视频介绍',
  `shipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='视频信息';

/*Data for the table `shipin` */

insert  into `shipin`(`id`,`shipin_name`,`shipin_photo`,`shipin_video`,`zan_number`,`cai_number`,`shipin_types`,`shipin_clicknum`,`shipin_content`,`shipin_delete`,`insert_time`,`create_time`) values (1,'视频标题1','upload/shipin1.jpg','upload/video.mp4',161,382,2,358,'视频介绍1',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(2,'视频标题2','upload/shipin2.jpg','upload/video.mp4',290,257,1,184,'视频介绍2',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(3,'视频标题3','upload/shipin3.jpg','upload/video.mp4',310,56,2,189,'视频介绍3',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(4,'视频标题4','upload/shipin4.jpg','upload/video.mp4',382,432,1,461,'视频介绍4',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(5,'视频标题5','upload/shipin5.jpg','upload/video.mp4',97,406,2,97,'视频介绍5',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(6,'视频标题6','upload/shipin6.jpg','upload/video.mp4',200,220,1,480,'视频介绍6',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(7,'视频标题7','upload/shipin7.jpg','upload/video.mp4',383,372,2,160,'视频介绍7',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(8,'视频标题8','upload/shipin8.jpg','upload/video.mp4',61,132,3,86,'视频介绍8',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(9,'视频标题9','upload/shipin9.jpg','upload/video.mp4',365,372,1,437,'视频介绍9',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(10,'视频标题10','upload/shipin10.jpg','upload/video.mp4',320,102,2,77,'视频介绍10',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(11,'视频标题11','upload/shipin11.jpg','upload/video.mp4',65,254,2,166,'视频介绍11',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(12,'视频标题12','upload/shipin12.jpg','upload/video.mp4',152,192,1,27,'视频介绍12',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(13,'视频标题13','upload/shipin13.jpg','upload/video.mp4',296,401,2,209,'视频介绍13',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(14,'视频标题14','upload/shipin14.jpg','upload/video.mp4',213,51,2,138,'视频介绍14',1,'2023-04-13 15:10:49','2023-04-13 15:10:49');

/*Table structure for table `shipin_collection` */

DROP TABLE IF EXISTS `shipin_collection`;

CREATE TABLE `shipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='视频收藏';

/*Data for the table `shipin_collection` */

insert  into `shipin_collection`(`id`,`shipin_id`,`yonghu_id`,`shipin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(2,2,1,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(3,3,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(4,4,1,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(5,5,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(6,6,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(7,7,1,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(8,8,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(9,9,2,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(10,10,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(12,12,2,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(13,13,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(14,14,3,1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(15,1,1,2,'2023-04-13 15:41:41','2023-04-13 15:41:41'),(17,13,1,2,'2023-04-13 15:42:55','2023-04-13 15:42:55');

/*Table structure for table `shipin_liuyan` */

DROP TABLE IF EXISTS `shipin_liuyan`;

CREATE TABLE `shipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='视频留言';

/*Data for the table `shipin_liuyan` */

insert  into `shipin_liuyan`(`id`,`shipin_id`,`yonghu_id`,`shipin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-04-13 15:10:49','回复信息1','2023-04-13 15:10:49','2023-04-13 15:10:49'),(2,2,2,'留言内容2','2023-04-13 15:10:49','回复信息2','2023-04-13 15:10:49','2023-04-13 15:10:49'),(3,3,3,'留言内容3','2023-04-13 15:10:49','回复信息3','2023-04-13 15:10:49','2023-04-13 15:10:49'),(4,4,1,'留言内容4','2023-04-13 15:10:49','回复信息4','2023-04-13 15:10:49','2023-04-13 15:10:49'),(5,5,2,'留言内容5','2023-04-13 15:10:49','回复信息5','2023-04-13 15:10:49','2023-04-13 15:10:49'),(6,6,2,'留言内容6','2023-04-13 15:10:49','回复信息6','2023-04-13 15:10:49','2023-04-13 15:10:49'),(7,7,1,'留言内容7','2023-04-13 15:10:49','回复信息7','2023-04-13 15:10:49','2023-04-13 15:10:49'),(8,8,1,'留言内容8','2023-04-13 15:10:49','回复信息8','2023-04-13 15:10:49','2023-04-13 15:10:49'),(9,9,1,'留言内容9','2023-04-13 15:10:49','回复信息9','2023-04-13 15:10:49','2023-04-13 15:10:49'),(10,10,1,'留言内容10','2023-04-13 15:10:49','回复信息10','2023-04-13 15:10:49','2023-04-13 15:10:49'),(11,11,2,'留言内容11','2023-04-13 15:10:49','回复信息11','2023-04-13 15:10:49','2023-04-13 15:10:49'),(12,12,2,'留言内容12','2023-04-13 15:10:49','回复信息12','2023-04-13 15:10:49','2023-04-13 15:10:49'),(13,13,1,'留言内容13','2023-04-13 15:10:49','回复信息13','2023-04-13 15:10:49','2023-04-13 15:10:49'),(14,14,2,'留言内容14','2023-04-13 15:10:49','回复信息14','2023-04-13 15:10:49','2023-04-13 15:10:49'),(15,1,1,'登录后才能进入数据详情页进行评论收藏点赞等操作','2023-04-13 15:42:03','回复1111111111111','2023-04-13 15:44:12','2023-04-13 15:42:03');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','vpn8lhl9j4tqv6gfbiltgjmexx7z5y0x','2023-04-13 15:22:55','2023-04-13 16:44:43'),(2,1,'a1','yonghu','用户','vb2uh0vllxmqpfyqc9g1xdg3djdamrfy','2023-04-13 15:32:09','2023-04-13 16:41:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-13 15:10:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-04-13 15:10:49','2023-04-13 15:10:49'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-13 15:10:49','2023-04-13 15:10:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
