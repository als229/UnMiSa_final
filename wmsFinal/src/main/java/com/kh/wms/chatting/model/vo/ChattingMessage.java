package com.kh.wms.chatting.model.vo;


import lombok.Data;

@Data
public class ChattingMessage {

	private int messageNo;
	private int roomNo;
	private int memberNo;
	private int chatNo;
	private String roomId;
	private String message;
	private String messageTime;
	private String memberId;
	private String roomName;
	private String memberName;
	
	
}
