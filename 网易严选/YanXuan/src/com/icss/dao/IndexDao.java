package com.icss.dao;

import java.util.List;

import com.icss.dto.IndexBrand;
import com.icss.dto.IndexFlashSale;
import com.icss.dto.IndexImgs;

public interface IndexDao {
	public List<IndexImgs> findAll();
	
	public List<IndexBrand> findAllBrand();
	
	public List<IndexFlashSale> findFlashSale();
}
