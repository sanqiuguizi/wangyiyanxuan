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
import com.icss.dto.IndexFlashSale;
import com.icss.server.IndexServer;
import com.icss.server.Impl.IndexServerImpl;

/**
 * Servlet implementation class FlashSaleServlet
 */
@WebServlet("/FlashSaleServlet")
public class FlashSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlashSaleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IndexServer server = new IndexServerImpl();
		List<IndexFlashSale> FSList = server.findFlashSale();
		Map<String,List<IndexFlashSale>> map = new HashMap<>();
		map.put("FSList", FSList);
		Gson gson = new Gson();
		response.getWriter().write(gson.toJson(map));
		
	}

}
