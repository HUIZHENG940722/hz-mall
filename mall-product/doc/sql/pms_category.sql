drop table `pms_category`;
create table if not exists `pms_category`
(
    `cat_id`        bigint(20)  not null auto_increment comment '分类编码',
    `name`          varchar(50) not null comment '分类名称',
    `parent_cid`    bigint(20)  not null comment '父分类编码',
    `cat_level`     int(11)     not null comment '层级',
    `show_status`   tinyint(4)  not null default 0 comment '是否显示[0-不显示，1-显示]',
    `sort`          int(11) comment '排序',
    `icon`          varchar(255) comment '图标地址',
    `product_unit`  varchar(50) comment '计量单位',
    `product_count` int(11) comment '商品数量',
    primary key (`cat_id`)
) comment '商品三级分类';
