package com.icss.server.Impl;

import java.util.List;

import com.icss.dao.IndexDao;
import com.icss.dao.Impl.IndexDaoImpl;
import com.icss.dto.IndexBrand;
import com.icss.dto.IndexFlashSale;
import com.icss.dto.IndexImgs;
import com.icss.server.IndexServer;

public class IndexServerImpl implements IndexServer {

	IndexDao dao = new IndexDaoImpl();
	@Override
	public List<IndexImgs> findAll() {
		return dao.findAll();
	}
	@Override
	public List<IndexBrand> findAllBrand() {
		return dao.findAllBrand();
	}
	@Override
	public List<IndexFlashSale> findFlashSale() {
		return dao.findFlashSale();
	}

}
