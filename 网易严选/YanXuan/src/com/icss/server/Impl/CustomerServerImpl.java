package com.icss.server.Impl;

import com.icss.dao.CustomerDao;
import com.icss.dao.Impl.CustomerDaoImpl;
import com.icss.dto.Customer;
import com.icss.server.CustomerServer;

public class CustomerServerImpl implements CustomerServer {

	CustomerDao dao = new CustomerDaoImpl();
	@Override
	public boolean register(Customer cus) {
		return dao.insert(cus);
	}
	@Override
	public boolean checkEmail(String email) {
		if(dao.findByEmail(email)!=0){
			return true;
		}
		return false;
	}
	@Override
	public boolean checkPhone(String phone) {
		if(dao.findByPhone(phone)!=0){
			return true;
		}
		return false;
	}
	@Override
	public Customer login(String email, String pwd) {
		return dao.findByEmailAndPwd(email, pwd);
	}

}
