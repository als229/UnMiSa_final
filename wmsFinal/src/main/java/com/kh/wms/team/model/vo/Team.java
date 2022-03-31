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
public class Team {

	private int teamNo;
	private int sportsNo;
	private String teamName;
	private String createDate;
	private int winCount;
	private int drawCount;
	private int loseCount;
	private int winPoint;
	private String teamIntro;
	private String teamStatus;
	private int addressNo;
	private String sidoName;
	private String siGunGuName;
	private String sportsName;
	private String logoOriginName;
	private String logoChangeName;
	private String bossId;
	private int rowNum;
	private int winPercent;
	private int bossNo;

	
	
	

}
