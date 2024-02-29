DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `event_information`;
CREATE TABLE `event_information`(
	   `event_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赛项信息ID',
`event_name` varchar(64) comment '赛项名称',
`event_type` varchar(64) comment '赛项类型',
`number_of_participants` varchar(64) comment '参与人数',
`event_date` date comment '赛项日期',
`event_introduction` text comment '赛项介绍',
`event_rules` text comment '赛项规则',
`participation_conditions` text comment '参与条件',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (event_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '赛项信息';
insert into `event_information` values (1,'赛项名称1','赛项类型1','参与人数1','2022-3-25','赛项介绍1','赛项规则1','参与条件1','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (2,'赛项名称2','赛项类型2','参与人数2','2022-3-25','赛项介绍2','赛项规则2','参与条件2','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (3,'赛项名称3','赛项类型3','参与人数3','2022-3-25','赛项介绍3','赛项规则3','参与条件3','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (4,'赛项名称4','赛项类型4','参与人数4','2022-3-25','赛项介绍4','赛项规则4','参与条件4','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (5,'赛项名称5','赛项类型5','参与人数5','2022-3-25','赛项介绍5','赛项规则5','参与条件5','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (6,'赛项名称6','赛项类型6','参与人数6','2022-3-25','赛项介绍6','赛项规则6','参与条件6','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (7,'赛项名称7','赛项类型7','参与人数7','2022-3-25','赛项介绍7','赛项规则7','参与条件7','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_information` values (8,'赛项名称8','赛项类型8','参与人数8','2022-3-25','赛项介绍8','赛项规则8','参与条件8','0','2022-03-25 19:37:55','2022-03-25 19:37:55');

DROP TABLE IF EXISTS `event_declaration`;
CREATE TABLE `event_declaration`(
	   `event_declaration_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赛项申报ID',
`declarant` int(11) DEFAULT 0 comment '申报人',
`event_name` varchar(64) comment '赛项名称',
`event_type` varchar(64) comment '赛项类型',
`number_of_participants` varchar(64) comment '参与人数',
`event_date` date comment '赛项日期',
`contact_information_of_the_applicant` varchar(64) comment '申报人联系方式',
`event_introduction` text comment '赛项介绍',
`event_rules` text comment '赛项规则',
`participation_conditions` text comment '参与条件',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (event_declaration_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '赛项申报';
insert into `event_declaration` values (1,0,'赛项名称1','赛项类型1','参与人数1','2022-3-25','申报人联系方式1','赛项介绍1','赛项规则1','参与条件1','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (2,0,'赛项名称2','赛项类型2','参与人数2','2022-3-25','申报人联系方式2','赛项介绍2','赛项规则2','参与条件2','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (3,0,'赛项名称3','赛项类型3','参与人数3','2022-3-25','申报人联系方式3','赛项介绍3','赛项规则3','参与条件3','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (4,0,'赛项名称4','赛项类型4','参与人数4','2022-3-25','申报人联系方式4','赛项介绍4','赛项规则4','参与条件4','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (5,0,'赛项名称5','赛项类型5','参与人数5','2022-3-25','申报人联系方式5','赛项介绍5','赛项规则5','参与条件5','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (6,0,'赛项名称6','赛项类型6','参与人数6','2022-3-25','申报人联系方式6','赛项介绍6','赛项规则6','参与条件6','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (7,0,'赛项名称7','赛项类型7','参与人数7','2022-3-25','申报人联系方式7','赛项介绍7','赛项规则7','参与条件7','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_declaration` values (8,0,'赛项名称8','赛项类型8','参与人数8','2022-3-25','申报人联系方式8','赛项介绍8','赛项规则8','参与条件8','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');

DROP TABLE IF EXISTS `event_registration`;
CREATE TABLE `event_registration`(
	   `event_registration_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赛项报名ID',
`applicant` int(11) DEFAULT 0 comment '报名人',
`event_name` varchar(64) comment '赛项名称',
`event_type` varchar(64) comment '赛项类型',
`event_date` date comment '赛项日期',
`remarks` varchar(64) comment '备注',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (event_registration_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '赛项报名';
insert into `event_registration` values (1,0,'赛项名称1','赛项类型1','2022-3-25','备注1','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (2,0,'赛项名称2','赛项类型2','2022-3-25','备注2','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (3,0,'赛项名称3','赛项类型3','2022-3-25','备注3','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (4,0,'赛项名称4','赛项类型4','2022-3-25','备注4','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (5,0,'赛项名称5','赛项类型5','2022-3-25','备注5','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (6,0,'赛项名称6','赛项类型6','2022-3-25','备注6','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (7,0,'赛项名称7','赛项类型7','2022-3-25','备注7','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_registration` values (8,0,'赛项名称8','赛项类型8','2022-3-25','备注8','未审核','','0','2022-03-25 19:37:55','2022-03-25 19:37:55');

DROP TABLE IF EXISTS `event_results`;
CREATE TABLE `event_results`(
	   `event_results_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赛项成果ID',
`event_name` varchar(64) comment '赛项名称',
`event_type` varchar(64) comment '赛项类型',
`event_date` date comment '赛项日期',
`remarks` varchar(64) comment '备注',
`schedule_results` longtext comment '赛程成果',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (event_results_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '赛项成果';
insert into `event_results` values (1,'赛项名称1','赛项类型1','2022-3-25','备注1','此处可上传文字、图片、视频、超链接、表格等内容区1','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (2,'赛项名称2','赛项类型2','2022-3-25','备注2','此处可上传文字、图片、视频、超链接、表格等内容区2','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (3,'赛项名称3','赛项类型3','2022-3-25','备注3','此处可上传文字、图片、视频、超链接、表格等内容区3','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (4,'赛项名称4','赛项类型4','2022-3-25','备注4','此处可上传文字、图片、视频、超链接、表格等内容区4','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (5,'赛项名称5','赛项类型5','2022-3-25','备注5','此处可上传文字、图片、视频、超链接、表格等内容区5','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (6,'赛项名称6','赛项类型6','2022-3-25','备注6','此处可上传文字、图片、视频、超链接、表格等内容区6','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (7,'赛项名称7','赛项类型7','2022-3-25','备注7','此处可上传文字、图片、视频、超链接、表格等内容区7','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_results` values (8,'赛项名称8','赛项类型8','2022-3-25','备注8','此处可上传文字、图片、视频、超链接、表格等内容区8','0','2022-03-25 19:37:55','2022-03-25 19:37:55');

DROP TABLE IF EXISTS `event_performance_information`;
CREATE TABLE `event_performance_information`(
	   `event_performance_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赛项成绩信息ID',
`event_name` varchar(64) comment '赛项名称',
`event_type` varchar(64) comment '赛项类型',
`event_date` date comment '赛项日期',
`remarks` varchar(64) comment '备注',
`event_results` text comment '赛项成绩',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (event_performance_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '赛项成绩信息';
insert into `event_performance_information` values (1,'赛项名称1','赛项类型1','2022-3-25','备注1','赛项成绩1','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (2,'赛项名称2','赛项类型2','2022-3-25','备注2','赛项成绩2','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (3,'赛项名称3','赛项类型3','2022-3-25','备注3','赛项成绩3','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (4,'赛项名称4','赛项类型4','2022-3-25','备注4','赛项成绩4','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (5,'赛项名称5','赛项类型5','2022-3-25','备注5','赛项成绩5','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (6,'赛项名称6','赛项类型6','2022-3-25','备注6','赛项成绩6','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (7,'赛项名称7','赛项类型7','2022-3-25','备注7','赛项成绩7','0','2022-03-25 19:37:55','2022-03-25 19:37:55');
insert into `event_performance_information` values (8,'赛项名称8','赛项类型8','2022-3-25','备注8','赛项成绩8','0','2022-03-25 19:37:55','2022-03-25 19:37:55');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-25 11:37:56.000 ","2022-03-25 11:37:56.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-25 11:37:56.000 ","2022-03-25 11:37:56.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','1',"2022-03-25 11:37:56.000 ","2022-03-25 11:37:56.000 ");
