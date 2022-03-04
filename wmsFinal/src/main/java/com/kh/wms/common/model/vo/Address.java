package com.kh.wms.common.model.vo;

public class Address {

	private int addressNo;
	private String sido;
	private String gu;
	private String dong;
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(int addressNo, String sido, String gu, String dong) {
		super();
		this.addressNo = addressNo;
		this.sido = sido;
		this.gu = gu;
		this.dong = dong;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	@Override
	public String toString() {
		return "Address [addressNo=" + addressNo + ", sido=" + sido + ", gu=" + gu + ", dong=" + dong + "]";
	}
}
