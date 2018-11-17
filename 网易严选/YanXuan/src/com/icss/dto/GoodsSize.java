package com.icss.dto;

public class GoodsSize {
	private int SizePriId;
	private String Size;
	private double SizePrice;
	public GoodsSize() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodsSize(int sizePriId, String size, double sizePrice) {
		super();
		SizePriId = sizePriId;
		Size = size;
		SizePrice = sizePrice;
	}
	public int getSizePriId() {
		return SizePriId;
	}
	public void setSizePriId(int sizePriId) {
		SizePriId = sizePriId;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public double getSizePrice() {
		return SizePrice;
	}
	public void setSizePrice(double sizePrice) {
		SizePrice = sizePrice;
	}
	@Override
	public String toString() {
		return "GoodsSize [SizePriId=" + SizePriId + ", Size=" + Size + ", SizePrice=" + SizePrice + "]";
	}
	
	
}
