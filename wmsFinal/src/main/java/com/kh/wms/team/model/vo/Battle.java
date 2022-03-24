package com.kh.wms.team.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Battle {

	private int battleNo;
	private int hometeamNo;
	private int awayteamNo;
	private int sportsNo;
	private String battleDate;
	private int agreeStatus;
	private int resultStatus;
	

	
}
