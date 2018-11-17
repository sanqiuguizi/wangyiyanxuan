package com.icss.dao;

import com.icss.dto.ShoppingCar;

public interface ShoppingCarDao {
	public boolean insert(ShoppingCar scar);
	
	public ShoppingCar findById(int id);
	
	public boolean deleteById(int id);
}
