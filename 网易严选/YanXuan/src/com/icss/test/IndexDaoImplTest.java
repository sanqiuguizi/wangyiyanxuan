package com.icss.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.icss.dao.IndexDao;
import com.icss.dao.Impl.IndexDaoImpl;
import com.icss.dto.IndexBrand;
import com.icss.dto.IndexFlashSale;

public class IndexDaoImplTest {

	IndexDao dao = new IndexDaoImpl();
	@Test
	public void testFindAll() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindAllBrand() {
		for (IndexBrand i : dao.findAllBrand()) {
			System.out.println(i);
		}
	}

	@Test
	public void testFindFlashSale() {
		for (IndexFlashSale i : dao.findFlashSale()) {
			System.out.println(i);
		}
	}
	
}
