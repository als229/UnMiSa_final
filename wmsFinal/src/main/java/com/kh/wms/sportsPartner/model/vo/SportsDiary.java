package com.kh.wms.sportsPartner.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class SportsDiary {

	private int diaryNo;
	private int memberNo;
	private String diaryTitle;
	private String diaryContent;
	private String diaryPhoto;
	private String diaryDate;
	

}
