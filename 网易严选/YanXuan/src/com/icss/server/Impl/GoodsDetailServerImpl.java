package com.icss.server.Impl;

import com.icss.dao.GoodsDetailDao;
import com.icss.dao.Impl.GoodsDetailDaoImpl;
import com.icss.dto.GoodsDetail;
import com.icss.server.GoodsDetailServer;

public class GoodsDetailServerImpl implements GoodsDetailServer {

	GoodsDetailDao dao = new GoodsDetailDaoImpl();
	@Override
	public GoodsDetail showDetail(int id) {
		return dao.findById(id);
	}

}
