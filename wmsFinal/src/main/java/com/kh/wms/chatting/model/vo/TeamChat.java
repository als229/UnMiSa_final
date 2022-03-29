package com.kh.wms.chatting.model.vo;

import lombok.Data;

@Data
public class TeamChat {
	private int memberNo; // M.MEMBER_NO, 
	private String memberId; // M.MEMBER_ID, 
	private String memberName; // M.MEMBER_NAME, 
	private int teamNo; // T.TEAM_NO, 
	private String teamName; // T.TEAM_NAME, 
	private String bossId; // T.BOSS_ID, 
	private String changeName; // T.CHANGE_NAME
}
