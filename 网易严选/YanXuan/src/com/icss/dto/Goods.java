package com.icss.dto;

import java.util.Date;

public class Goods {
	private int GoodId;
	private String GoodName;
	private int GoodScore;
	private String GoodDescribe;
	private double GoodPrice;
	private int GoodStock;
	private int GoodIsNew;
	private int GoodStatus;
	private String GoodKind;
	private String GoodArea;
	private Date GoodUpTime;
	private String GoodImg;
	private int GoodColNum;
	private String GoodBigKind;
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int goodId, String goodName, int goodScore, String goodDescribe, double goodPrice, int goodStock,
			int goodIsNew, int goodStatus, String goodKind, String goodArea, Date goodUpTime, String goodImg,
			int goodColNum, String goodBigKind) {
		super();
		GoodId = goodId;
		GoodName = goodName;
		GoodScore = goodScore;
		GoodDescribe = goodDescribe;
		GoodPrice = goodPrice;
		GoodStock = goodStock;
		GoodIsNew = goodIsNew;
		GoodStatus = goodStatus;
		GoodKind = goodKind;
		GoodArea = goodArea;
		GoodUpTime = goodUpTime;
		GoodImg = goodImg;
		GoodColNum = goodColNum;
		GoodBigKind = goodBigKind;
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
	public int getGoodScore() {
		return GoodScore;
	}
	public void setGoodScore(int goodScore) {
		GoodScore = goodScore;
	}
	public String getGoodDescribe() {
		return GoodDescribe;
	}
	public void setGoodDescribe(String goodDescribe) {
		GoodDescribe = goodDescribe;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public int getGoodStock() {
		return GoodStock;
	}
	public void setGoodStock(int goodStock) {
		GoodStock = goodStock;
	}
	public int getGoodIsNew() {
		return GoodIsNew;
	}
	public void setGoodIsNew(int goodIsNew) {
		GoodIsNew = goodIsNew;
	}
	public int getGoodStatus() {
		return GoodStatus;
	}
	public void setGoodStatus(int goodStatus) {
		GoodStatus = goodStatus;
	}
	public String getGoodKind() {
		return GoodKind;
	}
	public void setGoodKind(String goodKind) {
		GoodKind = goodKind;
	}
	public String getGoodArea() {
		return GoodArea;
	}
	public void setGoodArea(String goodArea) {
		GoodArea = goodArea;
	}
	public Date getGoodUpTime() {
		return GoodUpTime;
	}
	public void setGoodUpTime(Date goodUpTime) {
		GoodUpTime = goodUpTime;
	}
	public String getGoodImg() {
		return GoodImg;
	}
	public void setGoodImg(String goodImg) {
		GoodImg = goodImg;
	}
	public int getGoodColNum() {
		return GoodColNum;
	}
	public void setGoodColNum(int goodColNum) {
		GoodColNum = goodColNum;
	}
	public String getGoodBigKind() {
		return GoodBigKind;
	}
	public void setGoodBigKind(String goodBigKind) {
		GoodBigKind = goodBigKind;
	}
	@Override
	public String toString() {
		return "Goods [GoodId=" + GoodId + ", GoodName=" + GoodName + ", GoodScore=" + GoodScore + ", GoodDescribe="
				+ GoodDescribe + ", GoodPrice=" + GoodPrice + ", GoodStock=" + GoodStock + ", GoodIsNew=" + GoodIsNew
				+ ", GoodStatus=" + GoodStatus + ", GoodKind=" + GoodKind + ", GoodArea=" + GoodArea + ", GoodUpTime="
				+ GoodUpTime + ", GoodImg=" + GoodImg + ", GoodColNum=" + GoodColNum + ", GoodBigKind=" + GoodBigKind
				+ "]";
	}
}
