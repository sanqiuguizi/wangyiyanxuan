package com.icss.dto;

public class GoodsImges {
	private int GoodImgId;
	private int GoodId;
	private String GoodImgUrl;
	public GoodsImges() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodsImges(int goodImgId, int goodId, String goodImgUrl) {
		super();
		GoodImgId = goodImgId;
		GoodId = goodId;
		GoodImgUrl = goodImgUrl;
	}
	public int getGoodImgId() {
		return GoodImgId;
	}
	public void setGoodImgId(int goodImgId) {
		GoodImgId = goodImgId;
	}
	public int getGoodId() {
		return GoodId;
	}
	public void setGoodId(int goodId) {
		GoodId = goodId;
	}
	public String getGoodImgUrl() {
		return GoodImgUrl;
	}
	public void setGoodImgUrl(String goodImgUrl) {
		GoodImgUrl = goodImgUrl;
	}
	@Override
	public String toString() {
		return "GoodsImges [GoodImgId=" + GoodImgId + ", GoodId=" + GoodId + ", GoodImgUrl=" + GoodImgUrl + "]";
	}
	
}
