package com.kh.wms.event.model.vo;

public class Attendance {

	private int attendanceNo;
	private int memberNo;
	private int attendanceCount;
	private String AttendanceDate;
	
	public Attendance() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Attendance(int attendanceNo, int memberNo, int attendanceCount, String attendanceDate) {
		super();
		this.attendanceNo = attendanceNo;
		this.memberNo = memberNo;
		this.attendanceCount = attendanceCount;
		AttendanceDate = attendanceDate;
	}

	public int getAttendanceNo() {
		return attendanceNo;
	}

	public void setAttendanceNo(int attendanceNo) {
		this.attendanceNo = attendanceNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getAttendanceCount() {
		return attendanceCount;
	}

	public void setAttendanceCount(int attendanceCount) {
		this.attendanceCount = attendanceCount;
	}

	public String getAttendanceDate() {
		return AttendanceDate;
	}

	public void setAttendanceDate(String attendanceDate) {
		AttendanceDate = attendanceDate;
	}

	@Override
	public String toString() {
		return "Attendance [attendanceNo=" + attendanceNo + ", memberNo=" + memberNo + ", attendanceCount="
				+ attendanceCount + ", AttendanceDate=" + AttendanceDate + "]";
	}
	
}
