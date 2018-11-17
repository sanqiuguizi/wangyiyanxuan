package com.icss.dao.Impl;

import java.util.List;

import com.icss.dao.CustomerDao;
import com.icss.dto.Count;
import com.icss.dto.Customer;
import com.icss.dto.Dirty;
import com.icss.util.DBUtil;

public class CustomerDaoImpl implements CustomerDao {

	@Override
	public boolean insert(Customer cus) {
		return DBUtil.dml("insert into customer values(null,?,?,?,0,1,0)",new Object[]{cus.getCusEmail(),cus.getCusPwd(),cus.getCusPhone()});
	}

	@Override
	public List<Dirty> findAllDirty() {
		return DBUtil.find("select * from dirty", null, Dirty.class);
	}

	@Override
	public int findByEmail(String email) {
		return ((Count)DBUtil.findOne("select count(*) as countInt from customer where CusEmail=?",new Object[]{email},Count.class)).getCountInt();
	}
	
	@Override
	public int findByPhone(String phone) {
		return ((Count)DBUtil.findOne("select count(*) as countInt from customer where CusPhone=?",new Object[]{phone},Count.class)).getCountInt();
	}

	@Override
	public Customer findByEmailAndPwd(String email, String pwd) {
		return DBUtil.findOne("select * from customer where CusEmail=? and CusPwd=?", new Object[]{email,pwd}, Customer.class);
	}
}
