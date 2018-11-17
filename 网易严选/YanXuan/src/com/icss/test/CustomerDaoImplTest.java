package com.icss.test;

import org.junit.Test;

import com.icss.dao.CustomerDao;
import com.icss.dao.Impl.CustomerDaoImpl;
import com.icss.dto.Customer;

public class CustomerDaoImplTest {

	CustomerDao dao = new CustomerDaoImpl();
	@Test
	public void testInsert() {
		System.out.println(dao.insert(new Customer("474315963@qq.com","123456","13414850854")));
	}
	
	@Test
	public void testFindByEmail() {
		System.out.println(dao.findByEmail("474315963@qq.com"));
		System.out.println(dao.findByEmail("474315963@qq.com")==1);
	}

	@Test
	public void findByEmailAndPwd() {
		System.out.println(dao.findByEmailAndPwd("474315963@qq.com", "123456"));
	}
}
