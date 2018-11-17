package com.icss.server.Impl;

import com.icss.dao.ShoppingCarDao;
import com.icss.dao.Impl.ShoppingCarDaoImpl;
import com.icss.dto.ShoppingCar;
import com.icss.server.ShoppingCarServer;

public class ShoppingCarServerImpl implements ShoppingCarServer {

	ShoppingCarDao dao = new ShoppingCarDaoImpl();
	@Override
	public boolean insert(ShoppingCar scar) {
		return dao.insert(scar);
	}

}
