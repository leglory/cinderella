CREATE TABLE IF NOT EXISTS `dc_address` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
`token`  varchar(255) NOT NULL  COMMENT '公众号token',
`openid`  varchar(255) NOT NULL  COMMENT '微信用户id',
`name`  varchar(255) NOT NULL  COMMENT '姓名',
`sex`  int(10) NOT NULL  COMMENT '性别',
`mobile`  varchar(255) NOT NULL  COMMENT '手机号',
`address`  varchar(255) NOT NULL  COMMENT '详细地址',
`country`  varchar(255) NOT NULL  COMMENT '国家',
`province`  varchar(255) NOT NULL  COMMENT '省份',
`city`  varchar(255) NOT NULL  COMMENT '城市',
`area`  varchar(255) NOT NULL  COMMENT '地区',
`is_default`  int(10) NOT NULL  DEFAULT 0 COMMENT '是否默认',
`postcode`  varchar(255) NULL  COMMENT '邮政编码',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci CHECKSUM=0 ROW_FORMAT=DYNAMIC DELAY_KEY_WRITE=0;
INSERT INTO `dc_model` (`name`,`title`,`extend`,`relation`,`need_pk`,`field_sort`,`field_group`,`attribute_list`,`template_list`,`template_add`,`template_edit`,`list_grid`,`list_row`,`search_key`,`search_list`,`create_time`,`update_time`,`status`,`engine_type`,`addon`) VALUES ('address','用户地址表','0','','1','["name","sex","mobile","address","country","province","city","area","is_default","postcode"]','1:基础','','','','','openid|get_nickname:用户昵称\r\nname:用户姓名\r\nsex|getSex:用户性别\r\nmobile:用户手机号\r\nprovince:所在省份\r\ncity:所在城市\r\narea:所在地区\r\naddress:详细地址\r\npostcode:邮政编码\r\nis_default|getYesOrNo:是否默认\r\nid:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除','10','name','','1447736688','1452331063','1','MyISAM','');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('token','公众号token','varchar(255) NOT NULL','string','','','0','','0','0','1','1447736812','1447736812','','3','','regex','get_token','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('openid','微信用户id','varchar(255) NOT NULL','string','','','0','','0','0','1','1447736895','1447736895','','3','','regex','get_openid','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('name','姓名','varchar(255) NOT NULL','string','','','1','','0','0','1','1447736947','1447736947','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('sex','性别','int(10) NOT NULL','select','','','1','0:保密\r\n1:男性\r\n2:女性','0','0','1','1452331282','1447737042','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('mobile','手机号','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737168','1447737168','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('address','详细地址','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737246','1447737246','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('country','国家','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737319','1447737319','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('province','省份','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737345','1447737345','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('city','城市','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737405','1447737405','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('area','地区','varchar(255) NOT NULL','string','','','1','','0','0','1','1447737430','1447737430','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('is_default','是否默认','int(10) NOT NULL','select','0','','1','0:否\r\n1:是','0','0','1','1452331302','1447737493','','3','','regex','','3','function');
INSERT INTO `dc_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('postcode','邮政编码','varchar(255) NULL','string','','','1','','0','0','1','1452324019','1452324019','','3','','regex','','3','function');
UPDATE `dc_attribute` SET model_id= (SELECT MAX(id) FROM `dc_model`) WHERE model_id=0;