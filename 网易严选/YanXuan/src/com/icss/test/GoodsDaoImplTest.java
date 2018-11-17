package com.icss.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.icss.dao.GoodsDao;
import com.icss.dao.Impl.GoodsDaoImpl;
import com.icss.dto.Goods;
import com.icss.dto.GoodsColor;
import com.icss.dto.GoodsImges;
import com.icss.dto.GoodsSize;

public class GoodsDaoImplTest {

	GoodsDao dao = new GoodsDaoImpl();
	@Test
	public void testFindAll() {
		for (Goods list : dao.findAll("衣服",1)) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindByKind() {
		for (Goods list : dao.findByKind("羽绒",1)) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindById() {
		System.out.println(dao.findById(1));
	}

	@Test
	public void testFindImgById() {
		for (GoodsImges list : dao.findImgById(1)) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindColById() {
		for (GoodsColor list : dao.findColById(1)) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindSizeById() {
		for (GoodsSize list : dao.findSizeById(1)) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testSetNum() {
		System.out.println(dao.setGoodStock(1, 15));
	}
	
	@Test
	public void testFindByUptime() {
		for (Goods list : dao.findByUpTime()) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindHot() {
		for (Goods list : dao.findHot()) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testFindAnLi() {
		for (Goods list : dao.findAnLi()) {
			System.out.println(list);
		}
	}
	
	@Test
	public void testSearch() {
		for (Goods list : dao.Search("毛",3)) {
			System.out.println(list);
		}
	}
	
}
