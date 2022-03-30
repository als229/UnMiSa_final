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
	private int homeTeamNo;
	private int awayTeamNo;
	private String sportsName;
	private String battleDate;
	private int agreeStatus;
	private int resultStatus;
	private String teamIntro;
	private String awayTeamName;
	private String awayBossNo;
	
	

	
}
