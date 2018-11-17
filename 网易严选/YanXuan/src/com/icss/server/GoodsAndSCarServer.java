package com.icss.server;

import java.util.List;

import com.icss.dto.GoodsAndSCar;

public interface GoodsAndSCarServer {
	public List<GoodsAndSCar> findByCusId(int id);
	
	public List<GoodsAndSCar> findOrderByCus(int cudId);
}
