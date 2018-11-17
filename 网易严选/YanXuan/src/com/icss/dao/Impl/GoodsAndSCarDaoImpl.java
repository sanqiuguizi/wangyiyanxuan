package com.icss.dao.Impl;

import java.util.List;

import com.icss.dao.GoodsAndSCarDao;
import com.icss.dto.GoodsAndSCar;
import com.icss.util.DBUtil;

public class GoodsAndSCarDaoImpl implements GoodsAndSCarDao {

	@Override
	public List<GoodsAndSCar> findByCusId(int id) {
		return DBUtil.find("select ShoppingCarId,GoodImg,GoodName,t2.GoodPrice,Num,Money,Size,ColorName from shoppingcar t1,goods t2,goods_sizetype t3,goods_sizeprice t4,goods_color t5 where t1.goodId=t2.goodId and t1.SizePriId=t4.SizePriId and t3.SizeId=t4.SizeId and t1.ColorId=t5.ColorId and cusId=?", new Object[]{id}, GoodsAndSCar.class);
	}

	@Override
	public List<GoodsAndSCar> findOrderByCus(int cudId) {
		return DBUtil.find("select OrdDetailId,GoodImg,GoodName,t2.GoodPrice,Num,Money,Size,ColorName from goods_orderdetail t1,goods t2,goods_sizetype t3,goods_sizeprice t4,goods_color t5 where t1.goodId=t2.goodId and t1.SizePriId=t4.SizePriId and t3.SizeId=t4.SizeId and t1.ColorId=t5.ColorId and t1.ordId in(select ordId from goods_order where cusId=?)", new Object[]{cudId}, GoodsAndSCar.class);
	}

}
