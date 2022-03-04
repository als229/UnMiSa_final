package com.kh.wms.payment.model.vo;

public class Payment {

	private int paymentNo;
	private int memberNo;
	private int markNo;
	private String paymentDate;
	private int paymentMethod;
	private String memberId;
	private String markName;
	private int price;
	
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Payment(int paymentNo, int memberNo, int markNo, String paymentDate, int paymentMethod, String memberId,
			String markName, int price) {
		super();
		this.paymentNo = paymentNo;
		this.memberNo = memberNo;
		this.markNo = markNo;
		this.paymentDate = paymentDate;
		this.paymentMethod = paymentMethod;
		this.memberId = memberId;
		this.markName = markName;
		this.price = price;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getMarkNo() {
		return markNo;
	}

	public void setMarkNo(int markNo) {
		this.markNo = markNo;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(int paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	@Override
	public String toString() {
		return "Payment [paymentNo=" + paymentNo + ", memberNo=" + memberNo + ", markNo=" + markNo + ", paymentDate="
				+ paymentDate + ", paymentMethod=" + paymentMethod + ", memberId=" + memberId + ", markName=" + markName
				+ ", price=" + price + "]";
	}
	
}
