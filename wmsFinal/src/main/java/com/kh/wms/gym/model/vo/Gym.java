package com.kh.wms.gym.model.vo;

public class Gym {

	private int gymNo;
	private int reservationNo;
	private int memberNo;
	private String gymName;
	private int gymStatus;
	private String memberId;
	private int addressNo;
	private String sidoName;
	private String gu;
	private String dong;
	
	public Gym() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Gym(int gymNo, int reservationNo, int memberNo, String gymName, int gymStatus, String memberId,
			int addressNo, String sidoName, String gu, String dong) {
		super();
		this.gymNo = gymNo;
		this.reservationNo = reservationNo;
		this.memberNo = memberNo;
		this.gymName = gymName;
		this.gymStatus = gymStatus;
		this.memberId = memberId;
		this.addressNo = addressNo;
		this.sidoName = sidoName;
		this.gu = gu;
		this.dong = dong;
	}

	public int getGymNo() {
		return gymNo;
	}

	public void setGymNo(int gymNo) {
		this.gymNo = gymNo;
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getGymName() {
		return gymName;
	}

	public void setGymName(String gymName) {
		this.gymName = gymName;
	}

	public int getGymStatus() {
		return gymStatus;
	}

	public void setGymStatus(int gymStatus) {
		this.gymStatus = gymStatus;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
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
		return "Gym [gymNo=" + gymNo + ", reservationNo=" + reservationNo + ", memberNo=" + memberNo + ", gymName="
				+ gymName + ", gymStatus=" + gymStatus + ", memberId=" + memberId + ", addressNo=" + addressNo
				+ ", sidoName=" + sidoName + ", gu=" + gu + ", dong=" + dong + "]";
	}
	
}
