create database phpshop;

use phpshop;

set names utf8;

drop table if exists goods;

create table goods(
 id mediumint unsigned not null auto_increment comment 'Id',
 goods_name varchar(150) not null comment '商品名称',
 market_price decimal(10,2) not null comment '市场价格',
 shop_price decimal(10,2) not null comment '本店价格',
 goods_desc longtext comment '商品描述',
 is_no_sale enum('是','否') not null default '是'  comment '是否上架',
 is_delete enum('是','否') not null default '否' comment '是否放到回收站',
 addtime datetime not null comment '添加时间',
 primary key (id),
 key shop_price(shop_price),
 key adttime(addtime),
 key  is_no_sale( is_no_sale)
)engine=InnoDB default charset=utf8 comment '商品';