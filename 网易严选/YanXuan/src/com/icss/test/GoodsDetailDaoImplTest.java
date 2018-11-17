package com.icss.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.icss.dao.GoodsDetailDao;
import com.icss.dao.Impl.GoodsDetailDaoImpl;

public class GoodsDetailDaoImplTest {

	GoodsDetailDao dao = new GoodsDetailDaoImpl();
	@Test
	public void testFindById() {
		System.out.println(dao.findById(1));
	}

}
