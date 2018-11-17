package com.icss.server;

import com.icss.dto.Customer;

public interface CustomerServer {
	public boolean register(Customer cus);
	
	public boolean checkEmail(String email);
	
	public boolean checkPhone(String phone);
	
	public Customer login(String email,String pwd);
}
