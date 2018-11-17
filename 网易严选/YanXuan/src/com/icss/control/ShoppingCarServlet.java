package com.icss.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dto.ShoppingCar;
import com.icss.server.GoodsServer;
import com.icss.server.ShoppingCarServer;
import com.icss.server.Impl.GoodsServerImpl;
import com.icss.server.Impl.ShoppingCarServerImpl;

/**
 * Servlet implementation class ShoppingCarServlet
 */
@WebServlet("/ShoppingCarServlet")
public class ShoppingCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		GoodsServer server = new GoodsServerImpl();
		ShoppingCarServer server2 = new ShoppingCarServerImpl();
		
		int cusId = Integer.parseInt(req.getParameter("cusId"));
		int goodId = Integer.parseInt(req.getParameter("goodId"));
		int colorId = Integer.parseInt(req.getParameter("colorId"));
		int rulerId = Integer.parseInt(req.getParameter("rulerId"));
		int num = Integer.parseInt(req.getParameter("num"));
		double money = Double.parseDouble(req.getParameter("money"));
		
		int stock = server.findById(goodId).getGoodStock();
		if(num<=stock){
			ShoppingCar scar = new ShoppingCar(cusId,goodId,colorId,rulerId,num,money);
			if(server2.insert(scar)){
				server.setGoodStock(goodId, stock-num);
				resp.getWriter().write("已加入购物车");
			}
//			System.out.println(goodId+","+colorId+","+rulerId+","+num+","+money);
		}else{
			resp.getWriter().write("库存不足,库存数:"+stock);
		}
	}

}
