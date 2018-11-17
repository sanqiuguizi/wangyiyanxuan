package com.icss.server;

import java.util.List;

public interface OrderServer {
	public boolean CreatOrder(List<Integer> SCId,List<Integer> SCNum,int CusId);
}
