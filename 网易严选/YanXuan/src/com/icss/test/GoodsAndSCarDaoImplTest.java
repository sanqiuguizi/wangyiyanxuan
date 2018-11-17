package com.icss.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.icss.dao.GoodsAndSCarDao;
import com.icss.dao.Impl.GoodsAndSCarDaoImpl;
import com.icss.dto.GoodsAndSCar;

public class GoodsAndSCarDaoImplTest {

	GoodsAndSCarDao dao = new GoodsAndSCarDaoImpl();
	@Test
	public void testFindByCusId() {
		for (GoodsAndSCar i : dao.findByCusId(1)) {
			System.out.println(i);
		}
	}
	
	@Test
	public void testFindOrdByCusId() {
		for (GoodsAndSCar i : dao.findOrderByCus(1)) {
			System.out.println(i);
		}
	}

}
