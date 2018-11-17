package com.icss.dto;

public class IndexImgs {
	private int ImgId;
	private String ImgURL;
	public IndexImgs() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexImgs(String imgURL) {
		super();
		ImgURL = imgURL;
	}
	public IndexImgs(int imgId, String imgURL) {
		super();
		ImgId = imgId;
		ImgURL = imgURL;
	}
	public int getImgId() {
		return ImgId;
	}
	public void setImgId(int imgId) {
		ImgId = imgId;
	}
	public String getImgURL() {
		return ImgURL;
	}
	public void setImgURL(String imgURL) {
		ImgURL = imgURL;
	}
	@Override
	public String toString() {
		return "IndexImgs [ImgId=" + ImgId + ", ImgURL=" + ImgURL + "]";
	}
	
}
