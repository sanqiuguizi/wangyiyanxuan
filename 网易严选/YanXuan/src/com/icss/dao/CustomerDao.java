package com.icss.dao;

import java.util.List;

import com.icss.dto.Customer;
import com.icss.dto.Dirty;

public interface CustomerDao {
	public boolean insert(Customer cus);
	
	public List<Dirty> findAllDirty();
	
	public int findByEmail(String email);
	
	public int findByPhone(String phone);
	
	public Customer findByEmailAndPwd(String email,String pwd);
}
