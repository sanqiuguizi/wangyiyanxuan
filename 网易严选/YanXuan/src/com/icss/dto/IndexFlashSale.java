package com.icss.dto;

import java.util.Date;

public class IndexFlashSale {
	private int GoodId;
	private String GoodName;
	private String GoodDescribe;
	private int GoodStock;
	private double GoodPrice;
	private double OldPrice;
	private String GoodImg;
	private Date Time;
	public IndexFlashSale() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexFlashSale(int goodId, String goodName, String goodDescribe, int goodStock, double goodPrice,
			double oldPrice, String goodImg, Date time) {
		super();
		GoodId = goodId;
		GoodName = goodName;
		GoodDescribe = goodDescribe;
		GoodStock = goodStock;
		GoodPrice = goodPrice;
		OldPrice = oldPrice;
		GoodImg = goodImg;
		Time = time;
	}
	public int getGoodId() {
		return GoodId;
	}
	public void setGoodId(int goodId) {
		GoodId = goodId;
	}
	public String getGoodName() {
		return GoodName;
	}
	public void setGoodName(String goodName) {
		GoodName = goodName;
	}
	public String getGoodDescribe() {
		return GoodDescribe;
	}
	public void setGoodDescribe(String goodDescribe) {
		GoodDescribe = goodDescribe;
	}
	public int getGoodStock() {
		return GoodStock;
	}
	public void setGoodStock(int goodStock) {
		GoodStock = goodStock;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public double getOldPrice() {
		return OldPrice;
	}
	public void setOldPrice(double oldPrice) {
		OldPrice = oldPrice;
	}
	public String getGoodImg() {
		return GoodImg;
	}
	public void setGoodImg(String goodImg) {
		GoodImg = goodImg;
	}
	public Date getTime() {
		return Time;
	}
	public void setTime(Date time) {
		Time = time;
	}
	@Override
	public String toString() {
		return "IndexFlashSale [GoodId=" + GoodId + ", GoodName=" + GoodName + ", GoodDescribe=" + GoodDescribe
				+ ", GoodStock=" + GoodStock + ", GoodPrice=" + GoodPrice + ", OldPrice=" + OldPrice + ", GoodImg="
				+ GoodImg + ", Time=" + Time + "]";
	}
	
	
}
