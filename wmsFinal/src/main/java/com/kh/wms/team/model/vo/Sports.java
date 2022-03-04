package com.kh.wms.team.model.vo;

public class Sports {

	private int sportsNo;
	private String sportsName;
	private int sportsType;
	private int bigType;
	private int midType;
	
	public Sports() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sports(int sportsNo, String sportsName, int sportsType, int bigType, int midType) {
		super();
		this.sportsNo = sportsNo;
		this.sportsName = sportsName;
		this.sportsType = sportsType;
		this.bigType = bigType;
		this.midType = midType;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getSportsName() {
		return sportsName;
	}

	public void setSportsName(String sportsName) {
		this.sportsName = sportsName;
	}

	public int getSportsType() {
		return sportsType;
	}

	public void setSportsType(int sportsType) {
		this.sportsType = sportsType;
	}

	public int getBigType() {
		return bigType;
	}

	public void setBigType(int bigType) {
		this.bigType = bigType;
	}

	public int getMidType() {
		return midType;
	}

	public void setMidType(int midType) {
		this.midType = midType;
	}

	@Override
	public String toString() {
		return "Sports [sportsNo=" + sportsNo + ", sportsName=" + sportsName + ", sportsType=" + sportsType
				+ ", bigType=" + bigType + ", midType=" + midType + "]";
	}
	
}
