package com.icss.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dto.Goods;
import com.icss.dto.GoodsColor;
import com.icss.dto.GoodsDetail;
import com.icss.dto.GoodsImges;
import com.icss.dto.GoodsSize;
import com.icss.server.GoodsDetailServer;
import com.icss.server.GoodsServer;
import com.icss.server.Impl.GoodsDetailServerImpl;
import com.icss.server.Impl.GoodsServerImpl;

@SuppressWarnings("serial")
public class GoodsDetailServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		GoodsServer gserver = new GoodsServerImpl();
		GoodsDetailServer gdserver = new GoodsDetailServerImpl();
		
		int id = Integer.parseInt(req.getParameter("Id"));
		
		Goods goods = gserver.findById(id);
		GoodsDetail goodsDetail = gdserver.showDetail(id);
		List<GoodsImges> imgesList = gserver.findImgById(id);
		List<GoodsColor> ColorList = gserver.findColById(id);
		List<GoodsSize> sizeList = gserver.FindSizeById(id);
		
		req.setAttribute("goods", goods);
		req.setAttribute("goodsDetail", goodsDetail);
		req.setAttribute("imgesList", imgesList);
		req.setAttribute("ColorList", ColorList);
		req.setAttribute("sizeList", sizeList);
		
		req.getRequestDispatcher(resp.encodeURL("wangyi/k_clothesdetail.jsp")).forward(req, resp);
	}
	
}
