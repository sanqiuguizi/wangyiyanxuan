package com.icss.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.icss.dto.Goods;
import com.icss.server.GoodsServer;
import com.icss.server.Impl.GoodsServerImpl;

@SuppressWarnings("serial")
public class ShowAllClothesServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		GoodsServer server = new GoodsServerImpl();
		int fRank = Integer.parseInt(req.getParameter("fRank"));
		String bigKind = req.getParameter("bigKind");
		List<Goods> Goodslist = server.showAll(bigKind,fRank);
		Map<String,List<Goods>> map = new HashMap<>();
		map.put("Goodslist", Goodslist);
		Gson gson = new Gson();
		PrintWriter  out = resp.getWriter();
		out.write(gson.toJson(map));
	}
	
}
