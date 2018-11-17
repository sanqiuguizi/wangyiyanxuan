package com.icss.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.icss.dao.ShoppingCarDao;
import com.icss.dao.Impl.ShoppingCarDaoImpl;
import com.icss.dto.ShoppingCar;

public class ShoppingCarDaoImplTest {

	ShoppingCarDao dao = new ShoppingCarDaoImpl();
	@Test
	public void testInsert() {
		System.out.println(dao.insert(new ShoppingCar(1,1,1,1,2,349)));
	}
	
	@Test
	public void testFindById() {
		System.out.println(dao.findById(2));
	}
	

}
