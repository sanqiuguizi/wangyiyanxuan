package com.icss.server;

import java.util.List;

import com.icss.dto.IndexBrand;
import com.icss.dto.IndexFlashSale;
import com.icss.dto.IndexImgs;

public interface IndexServer {
	public List<IndexImgs> findAll();
	
	public List<IndexBrand>	findAllBrand();
	
	public List<IndexFlashSale> findFlashSale();
}
