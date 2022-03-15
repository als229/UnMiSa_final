package com.kh.wms.member.model.vo;

public class Member {

	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String email;
	private String phone;
	private String memberStatus;
	private String mark;
	private String address;
	private String birthDate;
	private int point;
	private int platForm;
	private String authKey; 
	private String yyyy;
	private String mm;
	private String dd;
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(int memberNo, String memberId, String memberPwd, String memberName, String email, String phone,
			String memberStatus, String mark, String address, String birthDate, int point, int platForm, String authKey,
			String yyyy, String mm, String dd) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.email = email;
		this.phone = phone;
		this.memberStatus = memberStatus;
		this.mark = mark;
		this.address = address;
		this.birthDate = birthDate;
		this.point = point;
		this.platForm = platForm;
		this.authKey = authKey;
		this.yyyy = yyyy;
		this.mm = mm;
		this.dd = dd;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getPlatForm() {
		return platForm;
	}

	public void setPlatForm(int platForm) {
		this.platForm = platForm;
	}

	public String getAuthKey() {
		return authKey;
	}

	public void setAuthKey(String authKey) {
		this.authKey = authKey;
	}

	public String getYyyy() {
		return yyyy;
	}

	public void setYyyy(String yyyy) {
		this.yyyy = yyyy;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberName="
				+ memberName + ", email=" + email + ", phone=" + phone + ", memberStatus=" + memberStatus + ", mark="
				+ mark + ", address=" + address + ", birthDate=" + birthDate + ", point=" + point + ", platForm="
				+ platForm + ", authKey=" + authKey + ", yyyy=" + yyyy + ", mm=" + mm + ", dd=" + dd + "]";
	}

	
	
}
