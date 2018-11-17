package com.icss.server.Impl;

import java.util.List;

import com.icss.dao.GoodsAndSCarDao;
import com.icss.dao.Impl.GoodsAndSCarDaoImpl;
import com.icss.dto.GoodsAndSCar;
import com.icss.server.GoodsAndSCarServer;

public class GoodsAndSCarServerImpl implements GoodsAndSCarServer {

	GoodsAndSCarDao dao = new GoodsAndSCarDaoImpl();
	@Override
	public List<GoodsAndSCar> findByCusId(int id) {
		return dao.findByCusId(id);
	}
	@Override
	public List<GoodsAndSCar> findOrderByCus(int cudId) {
		return dao.findOrderByCus(cudId);
	}

}
