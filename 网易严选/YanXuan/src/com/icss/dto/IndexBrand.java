package com.icss.dto;

public class IndexBrand {
	private int BrandId;
	private String BrandName;
	private double Price;
	private String ImgURL;
	private String URL;
	public IndexBrand() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexBrand(int brandId, String brandName, double price, String imgURL, String uRL) {
		super();
		BrandId = brandId;
		BrandName = brandName;
		Price = price;
		ImgURL = imgURL;
		URL = uRL;
	}
	public int getBrandId() {
		return BrandId;
	}
	public void setBrandId(int brandId) {
		BrandId = brandId;
	}
	public String getBrandName() {
		return BrandName;
	}
	public void setBrandName(String brandName) {
		BrandName = brandName;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public String getImgURL() {
		return ImgURL;
	}
	public void setImgURL(String imgURL) {
		ImgURL = imgURL;
	}
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}
	@Override
	public String toString() {
		return "IndexBrand [BrandId=" + BrandId + ", BrandName=" + BrandName + ", Price=" + Price + ", ImgURL=" + ImgURL
				+ ", URL=" + URL + "]";
	}
	
}
