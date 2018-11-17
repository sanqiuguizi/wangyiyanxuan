package com.icss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.dto.Customer;
import com.icss.server.CustomerServer;
import com.icss.server.Impl.CustomerServerImpl;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerServer server = new CustomerServerImpl();
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		Customer cus = server.login(email, pwd);
		if(cus!=null){
			HttpSession session = req.getSession();
			session.setAttribute("cus", cus);
			String url = resp.encodeURL("wangyi/index.jsp");
			resp.sendRedirect(url);
		}else{
			resp.sendRedirect("wangyi/login.html");
		}
	}
	
}
