package com.icss.dao;

import java.util.List;

import com.icss.dto.GoodsAndSCar;

public interface GoodsAndSCarDao {
	public List<GoodsAndSCar> findByCusId(int id);
	
	public List<GoodsAndSCar> findOrderByCus(int cudId);
}
