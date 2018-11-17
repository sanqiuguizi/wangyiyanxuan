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
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str = req.getParameter("searchStr");
		int flag = Integer.parseInt(req.getParameter("flag"));
		String byForm = req.getParameter("byForm");
		
		GoodsServer server = new GoodsServerImpl();
		List<Goods> searchList = server.Search(str,flag);
		
		if(byForm.equals("1")){
			req.setAttribute("searchList", searchList);
			req.setAttribute("searchStr", str);
			req.getRequestDispatcher(resp.encodeURL("wangyi/search.jsp")).forward(req, resp);
		}else{
			Map<String,Object> map = new HashMap<>();
			map.put("searchList", searchList);
			map.put("searchStr", str);
			Gson gson = new Gson();
			resp.getWriter().write(gson.toJson(map));
		}
		
	}

}
