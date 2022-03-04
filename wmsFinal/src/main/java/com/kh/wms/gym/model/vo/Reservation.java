package com.kh.wms.gym.model.vo;

public class Reservation {

	private int reservationNo;
	private int memberNo;
	private String startTime;
	private String endTime;
	private String reservationDate;
	private String memberId;
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Reservation(int reservationNo, int memberNo, String startTime, String endTime, String reservationDate,
			String memberId) {
		super();
		this.reservationNo = reservationNo;
		this.memberNo = memberNo;
		this.startTime = startTime;
		this.endTime = endTime;
		this.reservationDate = reservationDate;
		this.memberId = memberId;
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", memberNo=" + memberNo + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", reservationDate=" + reservationDate + ", memberId=" + memberId + "]";
	}
	
}
