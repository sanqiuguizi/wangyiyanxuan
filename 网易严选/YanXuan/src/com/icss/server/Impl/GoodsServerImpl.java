package com.icss.server.Impl;

import java.util.List;

import com.icss.dao.GoodsDao;
import com.icss.dao.Impl.GoodsDaoImpl;
import com.icss.dto.Goods;
import com.icss.dto.GoodsColor;
import com.icss.dto.GoodsImges;
import com.icss.dto.GoodsSize;
import com.icss.server.GoodsServer;

public class GoodsServerImpl implements GoodsServer {

	GoodsDao dao = new GoodsDaoImpl();
	@Override
	public List<Goods> showAll(String bigKind,int fRank) {
		return dao.findAll(bigKind,fRank);
	}
	@Override
	public List<Goods> showCloByKind(String kind,int fRank) {
		return dao.findByKind(kind,fRank);
	}
	@Override
	public Goods findById(int id) {
		return dao.findById(id);
	}
	@Override
	public List<GoodsImges> findImgById(int id) {
		return dao.findImgById(id);
	}
	@Override
	public List<GoodsColor> findColById(int id) {
		return dao.findColById(id);
	}
	@Override
	public List<GoodsSize> FindSizeById(int id) {
		return dao.findSizeById(id);
	}
	@Override
	public boolean setGoodStock(int id, int num) {
		return dao.setGoodStock(id, num);
	}
	@Override
	public List<Goods> findByUpTime() {
		return dao.findByUpTime();
	}
	@Override
	public List<Goods> findHot() {
		return dao.findHot();
	}
	@Override
	public List<Goods> findAnLi() {
		return dao.findAnLi();
	}
	@Override
	public List<Goods> Search(String str,int flag) {
		return dao.Search(str,flag);
	}

}
