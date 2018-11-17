package com.icss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.server.CustomerServer;
import com.icss.server.Impl.CustomerServerImpl;

@SuppressWarnings("serial")
public class CheckEmailServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerServer server = new CustomerServerImpl();
		String email = req.getParameter("email");
		if(server.checkEmail(email)){
			resp.getWriter().print("error");
		}else{
			resp.getWriter().print("ok");
		}
		
	}
	 
}
