package com.kh.wms.sportsPartner.model.vo;

public class SportsDiary {

	private int diaryNo;
	private int memberNo;
	private String memberName;
	private String mark;
	private String diaryTitle;
	private String diaryContent;
	private String diaryPhoto;
	private String diaryDate;
	
	public SportsDiary() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SportsDiary(int diaryNo, int memberNo, String memberName, String mark, String diaryTitle,
			String diaryContent, String diaryPhoto, String diaryDate) {
		super();
		this.diaryNo = diaryNo;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.mark = mark;
		this.diaryTitle = diaryTitle;
		this.diaryContent = diaryContent;
		this.diaryPhoto = diaryPhoto;
		this.diaryDate = diaryDate;
	}

	public int getDiaryNo() {
		return diaryNo;
	}

	public void setDiaryNo(int diaryNo) {
		this.diaryNo = diaryNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getDiaryTitle() {
		return diaryTitle;
	}

	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}

	public String getDiaryContent() {
		return diaryContent;
	}

	public void setDiaryContent(String diaryContent) {
		this.diaryContent = diaryContent;
	}

	public String getDiaryPhoto() {
		return diaryPhoto;
	}

	public void setDiaryPhoto(String diaryPhoto) {
		this.diaryPhoto = diaryPhoto;
	}

	public String getDiaryDate() {
		return diaryDate;
	}

	public void setDiaryDate(String diaryDate) {
		this.diaryDate = diaryDate;
	}

	@Override
	public String toString() {
		return "SportsDiary [diaryNo=" + diaryNo + ", memberNo=" + memberNo + ", memberName=" + memberName + ", mark="
				+ mark + ", diaryTitle=" + diaryTitle + ", diaryContent=" + diaryContent + ", diaryPhoto=" + diaryPhoto
				+ ", diaryDate=" + diaryDate + "]";
	}
	
}
