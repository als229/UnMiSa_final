package com.kh.wms.chatting.model.vo;

public class ChattingMessage {

	private int MessageNo;
	private int roomNo;
	private int memberNo;
	private String message;
	private String messageTime;
	private String memberId;
	
	public ChattingMessage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChattingMessage(int messageNo, int roomNo, int memberNo, String message, String messageTime,
			String memberId) {
		super();
		MessageNo = messageNo;
		this.roomNo = roomNo;
		this.memberNo = memberNo;
		this.message = message;
		this.messageTime = messageTime;
		this.memberId = memberId;
	}

	public int getMessageNo() {
		return MessageNo;
	}

	public void setMessageNo(int messageNo) {
		MessageNo = messageNo;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(String messageTime) {
		this.messageTime = messageTime;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "ChattingMessage [MessageNo=" + MessageNo + ", roomNo=" + roomNo + ", memberNo=" + memberNo
				+ ", message=" + message + ", messageTime=" + messageTime + ", memberId=" + memberId + "]";
	}
	
}
