package com.icss.dao.Impl;

import java.util.List;

import com.icss.dao.IndexDao;
import com.icss.dto.IndexBrand;
import com.icss.dto.IndexFlashSale;
import com.icss.dto.IndexImgs;
import com.icss.util.DBUtil;

public class IndexDaoImpl implements IndexDao {

	@Override
	public List<IndexImgs> findAll() {
		return DBUtil.find("select * from Index_Imgs", null, IndexImgs.class);
	}

	@Override
	public List<IndexBrand> findAllBrand() {
		return DBUtil.find("select * from Index_Brand", null, IndexBrand.class);
	}

	@Override
	public List<IndexFlashSale> findFlashSale() {
		return DBUtil.find("select t1.GoodId,GoodName,GoodDescribe,GoodStock,GoodPrice,OldPrice,GoodImg,Time from goods t1,Index_FlashSale t2 where t1.GoodId=t2.GoodId", null, IndexFlashSale.class);
	}

}
