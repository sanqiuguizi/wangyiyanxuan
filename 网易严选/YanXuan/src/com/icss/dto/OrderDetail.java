package com.icss.dto;

public class OrderDetail {
	private int OrdDetailId;
	private String OrdId;
	private int GoodId;
	private int SizePriId;
	private int ColorId;
	private int Num;
	private double GoodPrice;
	private double Money;
	
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public OrderDetail(String ordId, int goodId, int sizePriId, int colorId, int num, double goodPrice, double money) {
		super();
		OrdId = ordId;
		GoodId = goodId;
		SizePriId = sizePriId;
		ColorId = colorId;
		Num = num;
		GoodPrice = goodPrice;
		Money = money;
	}
	public OrderDetail(int ordDetailId, String ordId, int goodId, int sizePriId, int colorId, int num, double goodPrice,
			double money) {
		super();
		OrdDetailId = ordDetailId;
		OrdId = ordId;
		GoodId = goodId;
		SizePriId = sizePriId;
		ColorId = colorId;
		Num = num;
		GoodPrice = goodPrice;
		Money = money;
	}
	public int getOrdDetailId() {
		return OrdDetailId;
	}
	public void setOrdDetailId(int ordDetailId) {
		OrdDetailId = ordDetailId;
	}
	public String getOrdId() {
		return OrdId;
	}
	public void setOrdId(String ordId) {
		OrdId = ordId;
	}
	public int getGoodId() {
		return GoodId;
	}
	public void setGoodId(int goodId) {
		GoodId = goodId;
	}
	public int getSizePriId() {
		return SizePriId;
	}
	public void setSizePriId(int sizePriId) {
		SizePriId = sizePriId;
	}
	public int getColorId() {
		return ColorId;
	}
	public void setColorId(int colorId) {
		ColorId = colorId;
	}
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public double getMoney() {
		return Money;
	}
	public void setMoney(double money) {
		Money = money;
	}
	@Override
	public String toString() {
		return "OrderDetail [OrdDetailId=" + OrdDetailId + ", OrdId=" + OrdId + ", GoodId=" + GoodId + ", SizePriId="
				+ SizePriId + ", ColorId=" + ColorId + ", Num=" + Num + ", GoodPrice=" + GoodPrice + ", Money=" + Money
				+ "]";
	}
	
	
}
