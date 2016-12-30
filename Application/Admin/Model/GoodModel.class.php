<?php
namespace Admin\Model;

use Think\Model;

class GoodsModel extends Model
{
    protected $_validate=array(
        array('goods_name','require','商品名称不能为空',1),
        array('market_price','currency','价格必须为货币类型',1),
        array('shop_price','currency','价格必须为货币类型',1),
    );
}

