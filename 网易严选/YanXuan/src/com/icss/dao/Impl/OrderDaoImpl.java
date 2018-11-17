package com.icss.dao.Impl;

import com.icss.dao.OrderDao;
import com.icss.dto.Order;
import com.icss.dto.OrderDetail;
import com.icss.util.DBUtil;

public class OrderDaoImpl implements OrderDao {

	@Override
	public boolean insertOD(OrderDetail orderDe) {
		return DBUtil.dml("insert into goods_orderdetail values(DEFAULT,?,?,?,?,?,?,?)", new Object[]{orderDe.getOrdId(),orderDe.getGoodId(),orderDe.getColorId(),orderDe.getSizePriId(),orderDe.getNum(),orderDe.getGoodPrice(),orderDe.getMoney()});
	}

	@Override
	public boolean insertO(Order order) {
		return DBUtil.dml("insert into goods_order values(?,?,null,DEFAULT,1,?)", new Object[]{order.getOrdId(),order.getCusId(),order.getOrdPrice()});
	}

	

}
