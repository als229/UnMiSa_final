package com.kh.wms.board.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.Data;

@Data
public class Board {

	private int boardNo;
	private int memberNo;
	private String boardTitle;
	private String boardContent;
	private int count;
	private String changeName;
	private String originName;
	private String boardType;
	private String createDate;
	private String boardStatus;
	private String memberId;
	private int addressNo;
	private String sidoName;
	private String gu;
	private String dong;
	

}
