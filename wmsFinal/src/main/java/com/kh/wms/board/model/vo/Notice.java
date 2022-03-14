package com.kh.wms.board.model.vo;

public class Notice {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private int count;
	private String changeName;
	private String originName;
	private String noticeType;
	private String createDate;
	private String noticeStatus;
	public Notice() {
		super();
	}
	public Notice(int noticeNo, String noticeTitle, String noticeContent, int count, String changeName,
			String originName, String noticeType, String createDate, String noticeStatus) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.count = count;
		this.changeName = changeName;
		this.originName = originName;
		this.noticeType = noticeType;
		this.createDate = createDate;
		this.noticeStatus = noticeStatus;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getNoticeType() {
		return noticeType;
	}
	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getNoticeStatus() {
		return noticeStatus;
	}
	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}
	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", count=" + count + ", changeName=" + changeName + ", originName=" + originName + ", noticeType="
				+ noticeType + ", createDate=" + createDate + ", noticeStatus=" + noticeStatus + "]";
	}
	
}
	
	