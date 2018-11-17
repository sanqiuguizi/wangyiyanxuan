package com.icss.dao;

import com.icss.dto.Order;
import com.icss.dto.OrderDetail;

public interface OrderDao {
	public boolean insertO(Order order);
	
	public boolean insertOD(OrderDetail orderDe);
}
