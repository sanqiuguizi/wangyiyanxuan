package com.icss.dao;

import java.util.List;

import com.icss.dto.Goods;
import com.icss.dto.GoodsColor;
import com.icss.dto.GoodsImges;
import com.icss.dto.GoodsSize;

public interface GoodsDao {
	public List<Goods> findAll(String bigKind,int fRank);
	
	public List<Goods> findByKind(String kind,int fRank);
	
	public Goods findById(int id);
	
	public List<GoodsImges> findImgById(int id);
	
	public List<GoodsColor> findColById(int id);
	
	public List<GoodsSize> findSizeById(int id);
	
	public boolean setGoodStock(int id,int num);
	
	public List<Goods> findByUpTime();
	
	public List<Goods> findHot();
	
	public List<Goods> findAnLi();
	
	public List<Goods> Search(String str,int flag);
}
