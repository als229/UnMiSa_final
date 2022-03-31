package com.kh.wms.board.model.vo;
import lombok.Data;


@Data
public class Reply {

	private int replyNo;
	private int memberNo;
	private int boardNo;
	private String replyContent;
	private String memberId;
	private String createDate;
	private int replyStatus;
	
	
}
