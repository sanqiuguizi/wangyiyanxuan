package com.icss.dto;

public class GoodsColor {
	private int ColorId;
	private int GoodId;
	private String ImgUrl;
	private String ColorName;
	public GoodsColor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodsColor(int colorId, int goodId, String imgUrl, String colorName) {
		super();
		ColorId = colorId;
		GoodId = goodId;
		ImgUrl = imgUrl;
		ColorName = colorName;
	}
	public int getColorId() {
		return ColorId;
	}
	public void setColorId(int colorId) {
		ColorId = colorId;
	}
	public int getGoodId() {
		return GoodId;
	}
	public void setGoodId(int goodId) {
		GoodId = goodId;
	}
	public String getImgUrl() {
		return ImgUrl;
	}
	public void setImgUrl(String imgUrl) {
		ImgUrl = imgUrl;
	}
	public String getColorName() {
		return ColorName;
	}
	public void setColorName(String colorName) {
		ColorName = colorName;
	}
	@Override
	public String toString() {
		return "GoodsColor [ColorId=" + ColorId + ", GoodId=" + GoodId + ", ImgUrl=" + ImgUrl + ", ColorName="
				+ ColorName + "]";
	}
	
}
