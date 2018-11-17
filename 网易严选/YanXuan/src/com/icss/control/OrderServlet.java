package com.icss.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.icss.dto.Customer;
import com.icss.dto.GoodsAndSCar;
import com.icss.server.GoodsAndSCarServer;
import com.icss.server.OrderServer;
import com.icss.server.Impl.GoodsAndSCarServerImpl;
import com.icss.server.Impl.OrderServerImpl;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String SCId = req.getParameter("SCId");
		String SCNum = req.getParameter("SCNum");
		Gson gson = new Gson();
		ArrayList<Integer> SCIdList = gson.fromJson(SCId,new TypeToken<ArrayList<Integer>>(){}.getType());
		ArrayList<Integer> SCNumList = gson.fromJson(SCNum,new TypeToken<ArrayList<Integer>>(){}.getType());
		
		HttpSession session = req.getSession();
		Customer cus = (Customer) session.getAttribute("cus");
		int CusId = cus.getCusId();
		
		OrderServer server = new OrderServerImpl();
		if(server.CreatOrder(SCIdList, SCNumList, CusId)){
			GoodsAndSCarServer server2 = new GoodsAndSCarServerImpl();
			List<GoodsAndSCar> SCList = server2.findByCusId(CusId);
			Map<String,List<GoodsAndSCar>> map = new HashMap<>();
			map.put("SCList", SCList);
			resp.getWriter().write(gson.toJson(map));
		}
	}

}
