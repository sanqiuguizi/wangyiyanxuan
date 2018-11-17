package com.icss.server.Impl;

import java.util.List;
import java.util.UUID;

import com.icss.dao.OrderDao;
import com.icss.dao.ShoppingCarDao;
import com.icss.dao.Impl.OrderDaoImpl;
import com.icss.dao.Impl.ShoppingCarDaoImpl;
import com.icss.dto.Order;
import com.icss.dto.OrderDetail;
import com.icss.dto.ShoppingCar;
import com.icss.server.OrderServer;

public class OrderServerImpl implements OrderServer {

	OrderDao dao = new OrderDaoImpl();
	ShoppingCarDao dao2 = new ShoppingCarDaoImpl();
	@Override
	public boolean CreatOrder(List<Integer> SCId,List<Integer> SCNum,int CusId) {
		UUID uuid = UUID.randomUUID();
		double temp = 0;
		for (int i=0;i<SCId.size();i++) {
			ShoppingCar sc = dao2.findById(SCId.get(i));
			double Money = sc.getGoodPrice()*SCNum.get(i);
			OrderDetail od = new OrderDetail(uuid.toString(),sc.getGoodId(),sc.getSizePriId(),sc.getColorId(),SCNum.get(i),sc.getGoodPrice(),Money);
			dao.insertOD(od);
			temp+=Money;
			dao2.deleteById(SCId.get(i));
		}
		return dao.insertO(new Order(uuid.toString(),CusId,temp));
	}

}
