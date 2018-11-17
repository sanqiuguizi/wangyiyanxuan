package com.icss.dao.Impl;

import java.util.List;

import com.icss.dao.ShoppingCarDao;
import com.icss.dto.ShoppingCar;
import com.icss.util.DBUtil;

public class ShoppingCarDaoImpl implements ShoppingCarDao {

	@Override
	public boolean insert(ShoppingCar scar) {
		return DBUtil.dml("insert into ShoppingCar values(null,?,?,?,?,?,?,?)",new Object[]{scar.getCusId(),scar.getGoodId(),scar.getColorId(),scar.getSizePriId(),scar.getNum(),scar.getGoodPrice(),scar.getGoodPrice()*scar.getNum()});
	}

	@Override
	public ShoppingCar findById(int id) {
		return DBUtil.findOne("select * from shoppingcar where ShoppingCarId=?", new Object[]{id},ShoppingCar.class);
	}

	@Override
	public boolean deleteById(int id) {
		return DBUtil.dml("delete from shoppingcar where ShoppingCarId=?", new Object[]{id});
	}

}
