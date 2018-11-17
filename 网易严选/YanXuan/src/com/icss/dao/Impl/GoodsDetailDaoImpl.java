package com.icss.dao.Impl;

import com.icss.dao.GoodsDetailDao;
import com.icss.dto.GoodsDetail;
import com.icss.util.DBUtil;

public class GoodsDetailDaoImpl implements GoodsDetailDao {

	@Override
	public GoodsDetail findById(int id) {
		return DBUtil.findOne("select * from goods_detail where GoodId=?", new Object[]{id}, GoodsDetail.class);
	}

}
