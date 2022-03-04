package com.kh.wms.team.model.vo;

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
	private String gu;
	private String dong;
	
	public Team() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Team(int teamNo, int sportsNo, String teamName, String createDate, int winCount, int drawCount,
			int loseCount, int winPoint, String teamIntro, String teamStatus, int addressNo, String sidoName, String gu,
			String dong) {
		super();
		this.teamNo = teamNo;
		this.sportsNo = sportsNo;
		this.teamName = teamName;
		this.createDate = createDate;
		this.winCount = winCount;
		this.drawCount = drawCount;
		this.loseCount = loseCount;
		this.winPoint = winPoint;
		this.teamIntro = teamIntro;
		this.teamStatus = teamStatus;
		this.addressNo = addressNo;
		this.sidoName = sidoName;
		this.gu = gu;
		this.dong = dong;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public int getWinCount() {
		return winCount;
	}

	public void setWinCount(int winCount) {
		this.winCount = winCount;
	}

	public int getDrawCount() {
		return drawCount;
	}

	public void setDrawCount(int drawCount) {
		this.drawCount = drawCount;
	}

	public int getLoseCount() {
		return loseCount;
	}

	public void setLoseCount(int loseCount) {
		this.loseCount = loseCount;
	}

	public int getWinPoint() {
		return winPoint;
	}

	public void setWinPoint(int winPoint) {
		this.winPoint = winPoint;
	}

	public String getTeamIntro() {
		return teamIntro;
	}

	public void setTeamIntro(String teamIntro) {
		this.teamIntro = teamIntro;
	}

	public String getTeamStatus() {
		return teamStatus;
	}

	public void setTeamStatus(String teamStatus) {
		this.teamStatus = teamStatus;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	@Override
	public String toString() {
		return "Team [teamNo=" + teamNo + ", sportsNo=" + sportsNo + ", teamName=" + teamName + ", createDate="
				+ createDate + ", winCount=" + winCount + ", drawCount=" + drawCount + ", loseCount=" + loseCount
				+ ", winPoint=" + winPoint + ", teamIntro=" + teamIntro + ", teamStatus=" + teamStatus + ", addressNo="
				+ addressNo + ", sidoName=" + sidoName + ", gu=" + gu + ", dong=" + dong + "]";
	}
}
