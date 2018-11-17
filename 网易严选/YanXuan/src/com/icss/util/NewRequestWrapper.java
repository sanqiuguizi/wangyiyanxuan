package com.icss.util;

import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import com.icss.dao.CustomerDao;
import com.icss.dao.Impl.CustomerDaoImpl;
import com.icss.dto.Dirty;

public class NewRequestWrapper extends HttpServletRequestWrapper{
    private HttpServletRequest request=null;
	public NewRequestWrapper(HttpServletRequest request) {
		super(request);
		this.request = request;
	}

	@Override
	public String getParameter(String name) {
		String value = super.getParameter(name);
		if("GET".equals(request.getMethod())){
			try {
				if(value!=null){
					value=new String(value.getBytes("ISO-8859-1"),"UTF-8");
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		CustomerDao dao = new CustomerDaoImpl();
		List<Dirty> list = dao.findAllDirty();
		for (Dirty dirty : list){
			String temp = "";
			for(int i=0;i<dirty.getWord().length();i++){
				temp+="*";
			}
			value = value.replaceAll(dirty.getWord(), temp);
		}
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return value;
	}
}
