package com.kh.wms.board.model.vo;

public class Reply {

	private int replyNo;
	private int memberNo;
	private int boardNo;
	private String replyContent;
	private String memberId;
	private String createDate;
	private int replyStatus;
	
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Reply(int replyNo, int memberNo, int boardNo, String replyContent, String memberId, String createDate,
			int replyStatus) {
		super();
		this.replyNo = replyNo;
		this.memberNo = memberNo;
		this.boardNo = boardNo;
		this.replyContent = replyContent;
		this.memberId = memberId;
		this.createDate = createDate;
		this.replyStatus = replyStatus;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public int getReplyStatus() {
		return replyStatus;
	}

	public void setReplyStatus(int replyStatus) {
		this.replyStatus = replyStatus;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", memberNo=" + memberNo + ", boardNo=" + boardNo + ", replyContent="
				+ replyContent + ", memberId=" + memberId + ", createDate=" + createDate + ", replyStatus="
				+ replyStatus + "]";
	}

}
