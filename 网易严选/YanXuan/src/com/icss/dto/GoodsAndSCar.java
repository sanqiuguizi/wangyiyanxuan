package com.icss.dto;

public class GoodsAndSCar {
	//ShoppingCarId,GoodImg,GoodName,t1.GoodPrice,Num,Money
	private int ShoppingCarId;
	private String GoodImg;
	private String GoodName;
	private double GoodPrice;
	private int Num;
	private double Money;
	private String Size;
	private String ColorName;
	public GoodsAndSCar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodsAndSCar(int shoppingCarId, String goodImg, String goodName, double goodPrice, int num, double money,
			String size, String colorName) {
		super();
		ShoppingCarId = shoppingCarId;
		GoodImg = goodImg;
		GoodName = goodName;
		GoodPrice = goodPrice;
		Num = num;
		Money = money;
		Size = size;
		ColorName = colorName;
	}
	public int getShoppingCarId() {
		return ShoppingCarId;
	}
	public void setShoppingCarId(int shoppingCarId) {
		ShoppingCarId = shoppingCarId;
	}
	public String getGoodImg() {
		return GoodImg;
	}
	public void setGoodImg(String goodImg) {
		GoodImg = goodImg;
	}
	public String getGoodName() {
		return GoodName;
	}
	public void setGoodName(String goodName) {
		GoodName = goodName;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
	public double getMoney() {
		return Money;
	}
	public void setMoney(double money) {
		Money = money;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public String getColorName() {
		return ColorName;
	}
	public void setColorName(String colorName) {
		ColorName = colorName;
	}
	@Override
	public String toString() {
		return "GoodsAndSCar [ShoppingCarId=" + ShoppingCarId + ", GoodImg=" + GoodImg + ", GoodName=" + GoodName
				+ ", GoodPrice=" + GoodPrice + ", Num=" + Num + ", Money=" + Money + ", Size=" + Size + ", ColorName="
				+ ColorName + "]";
	}
	
	
}
