package com.icss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dto.Customer;
import com.icss.server.CustomerServer;
import com.icss.server.Impl.CustomerServerImpl;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerServer server = new CustomerServerImpl();
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String phone = req.getParameter("phone");
		
		Customer cus = new Customer(email,pwd,phone);
		boolean flag = server.register(cus);
		if(flag){
			resp.sendRedirect(resp.encodeURL("wangyi/login.html"));
		}
	}
	
}
