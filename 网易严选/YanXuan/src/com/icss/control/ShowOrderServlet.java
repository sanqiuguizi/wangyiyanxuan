package com.icss.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dto.GoodsAndSCar;
import com.icss.server.GoodsAndSCarServer;
import com.icss.server.Impl.GoodsAndSCarServerImpl;

/**
 * Servlet implementation class ShowSCarServlet
 */
@WebServlet("/ShowOrderServlet")
public class ShowOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		GoodsAndSCarServer server = new GoodsAndSCarServerImpl();
		int cusId = Integer.parseInt(req.getParameter("id"));
		
		List<GoodsAndSCar> SCList = server.findOrderByCus(cusId);
		req.setAttribute("SCList", SCList);
		System.out.println(SCList);
		req.getRequestDispatcher("wangyi/LoginFilter/myOrder.jsp").forward(req, resp);
	}

}
