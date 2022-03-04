package com.kh.wms.common.model.vo;

public class Mark {

	private int markNo;
	private String markName;
	private int price;
	private String markContent;
	private int refNo;
	
	public Mark() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mark(int markNo, String markName, int price, String markContent, int refNo) {
		super();
		this.markNo = markNo;
		this.markName = markName;
		this.price = price;
		this.markContent = markContent;
		this.refNo = refNo;
	}

	public int getMarkNo() {
		return markNo;
	}

	public void setMarkNo(int markNo) {
		this.markNo = markNo;
	}

	public String getMarkName() {
		return markName;
	}

	public void setMarkName(String markName) {
		this.markName = markName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMarkContent() {
		return markContent;
	}

	public void setMarkContent(String markContent) {
		this.markContent = markContent;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	@Override
	public String toString() {
		return "Mark [markNo=" + markNo + ", markName=" + markName + ", price=" + price + ", markContent=" + markContent
				+ ", refNo=" + refNo + "]";
	}
	
}
