package com.icss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.server.CustomerServer;
import com.icss.server.Impl.CustomerServerImpl;

@SuppressWarnings("serial")
public class CheckPhoneServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerServer server = new CustomerServerImpl();
		String phone = req.getParameter("phone");
		if(server.checkPhone(phone)){
			resp.getWriter().print("error");
		}else{
			resp.getWriter().print("ok");
		}
		
	}
	 
}
