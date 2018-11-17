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
import com.icss.dto.IndexImgs;
import com.icss.server.IndexServer;
import com.icss.server.Impl.IndexServerImpl;

/**
 * Servlet implementation class IndexImgs
 */
@WebServlet("/IndexImgsServlet")
public class IndexImgsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexImgsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IndexServer server = new IndexServerImpl();
		List<IndexImgs> ImgList = server.findAll();
		Gson gson = new Gson();
		Map<String,List<IndexImgs>> map = new HashMap<>();
		map.put("ImgList", ImgList);
		resp.getWriter().write(gson.toJson(map));
	}

}
