package com.kh.wms.team.model.vo;

public class Battle {

	private int battleNo;
	private int hometeamNo;
	private int awayteamNo;
	private int sportsNo;
	private String battleDate;
	private int agreeStatus;
	private int resultStatus;
	
	public Battle() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Battle(int battleNo, int hometeamNo, int awayteamNo, int sportsNo, String battleDate, int agreeStatus,
			int resultStatus) {
		super();
		this.battleNo = battleNo;
		this.hometeamNo = hometeamNo;
		this.awayteamNo = awayteamNo;
		this.sportsNo = sportsNo;
		this.battleDate = battleDate;
		this.agreeStatus = agreeStatus;
		this.resultStatus = resultStatus;
	}

	public int getBattleNo() {
		return battleNo;
	}

	public void setBattleNo(int battleNo) {
		this.battleNo = battleNo;
	}

	public int getHometeamNo() {
		return hometeamNo;
	}

	public void setHometeamNo(int hometeamNo) {
		this.hometeamNo = hometeamNo;
	}

	public int getAwayteamNo() {
		return awayteamNo;
	}

	public void setAwayteamNo(int awayteamNo) {
		this.awayteamNo = awayteamNo;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getBattleDate() {
		return battleDate;
	}

	public void setBattleDate(String battleDate) {
		this.battleDate = battleDate;
	}

	public int getAgreeStatus() {
		return agreeStatus;
	}

	public void setAgreeStatus(int agreeStatus) {
		this.agreeStatus = agreeStatus;
	}

	public int getResultStatus() {
		return resultStatus;
	}

	public void setResultStatus(int resultStatus) {
		this.resultStatus = resultStatus;
	}

	@Override
	public String toString() {
		return "Battle [battleNo=" + battleNo + ", hometeamNo=" + hometeamNo + ", awayteamNo=" + awayteamNo
				+ ", sportsNo=" + sportsNo + ", battleDate=" + battleDate + ", agreeStatus=" + agreeStatus
				+ ", resultStatus=" + resultStatus + "]";
	}
	
}
