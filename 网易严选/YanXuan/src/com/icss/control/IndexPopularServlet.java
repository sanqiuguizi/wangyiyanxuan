package com.icss.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.icss.dto.Goods;
import com.icss.server.GoodsServer;
import com.icss.server.Impl.GoodsServerImpl;

/**
 * Servlet implementation class IndexPopularServlet
 */
@WebServlet("/IndexPopularServlet")
public class IndexPopularServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexPopularServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsServer server = new GoodsServerImpl();
		List<Goods> HotList = server.findHot();
		List<Goods> AnLiList = server.findAnLi();
		Map<String,List<Goods>> map = new HashMap<>();
		map.put("HotList", HotList);
		map.put("AnLiList", AnLiList);
		Gson gson = new Gson();
		response.getWriter().write(gson.toJson(map));
		
	}

}
