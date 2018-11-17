package com.icss.dto;

public class ShoppingCar {
	private int ShoppingCarId;
	private int CusId;
	private int GoodId;
	private int ColorId;
	private int SizePriId;
	private int Num;
	private double GoodPrice;
	private double Money;
	public ShoppingCar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShoppingCar(int cusId, int goodId, int colorId, int sizePriId, int num, double goodPrice) {
		super();
		CusId = cusId;
		GoodId = goodId;
		ColorId = colorId;
		SizePriId = sizePriId;
		Num = num;
		GoodPrice = goodPrice;
	}

	public ShoppingCar(int shoppingCarId, int cusId, int goodId, int colorId, int sizePriId, int num, double goodPrice,
			double money) {
		super();
		ShoppingCarId = shoppingCarId;
		CusId = cusId;
		GoodId = goodId;
		ColorId = colorId;
		SizePriId = sizePriId;
		Num = num;
		GoodPrice = goodPrice;
		Money = money;
	}
	public int getShoppingCarId() {
		return ShoppingCarId;
	}
	public void setShoppingCarId(int shoppingCarId) {
		ShoppingCarId = shoppingCarId;
	}
	public int getCusId() {
		return CusId;
	}
	public void setCusId(int cusId) {
		CusId = cusId;
	}
	public int getGoodId() {
		return GoodId;
	}
	public void setGoodId(int goodId) {
		GoodId = goodId;
	}
	public int getColorId() {
		return ColorId;
	}
	public void setColorId(int colorId) {
		ColorId = colorId;
	}
	public int getSizePriId() {
		return SizePriId;
	}
	public void setSizePriId(int sizePriId) {
		SizePriId = sizePriId;
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
		return "ShoppingCar [ShoppingCarId=" + ShoppingCarId + ", CusId=" + CusId + ", GoodId=" + GoodId + ", ColorId="
				+ ColorId + ", SizePriId=" + SizePriId + ", Num=" + Num + ", GoodPrice=" + GoodPrice + ", Money="
				+ Money + "]";
	}
	
	
}
