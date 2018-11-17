package com.icss.dto;

import java.util.Date;

public class Order {
	private String OrdId;
	private Date OrdCreateTime;
	private int CoupId;
	private int OrdStatus;
	private int CusId;
	private double OrdPrice;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(String ordId, int cusId, double ordPrice) {
		super();
		OrdId = ordId;
		CusId = cusId;
		OrdPrice = ordPrice;
	}

	public Order(String ordId, Date ordCreateTime, int coupId, int ordStatus, int cusId, double ordPrice) {
		super();
		OrdId = ordId;
		OrdCreateTime = ordCreateTime;
		CoupId = coupId;
		OrdStatus = ordStatus;
		CusId = cusId;
		OrdPrice = ordPrice;
	}
	public String getOrdId() {
		return OrdId;
	}
	public void setOrdId(String ordId) {
		OrdId = ordId;
	}
	public Date getOrdCreateTime() {
		return OrdCreateTime;
	}
	public void setOrdCreateTime(Date ordCreateTime) {
		OrdCreateTime = ordCreateTime;
	}
	public int getCoupId() {
		return CoupId;
	}
	public void setCoupId(int coupId) {
		CoupId = coupId;
	}
	public int getOrdStatus() {
		return OrdStatus;
	}
	public void setOrdStatus(int ordStatus) {
		OrdStatus = ordStatus;
	}
	public int getCusId() {
		return CusId;
	}
	public void setCusId(int cusId) {
		CusId = cusId;
	}
	public double getOrdPrice() {
		return OrdPrice;
	}
	public void setOrdPrice(double ordPrice) {
		OrdPrice = ordPrice;
	}
	@Override
	public String toString() {
		return "Order [OrdId=" + OrdId + ", OrdCreateTime=" + OrdCreateTime + ", CoupId=" + CoupId + ", OrdStatus="
				+ OrdStatus + ", CusId=" + CusId + ", OrdPrice=" + OrdPrice + "]";
	}
	
}
