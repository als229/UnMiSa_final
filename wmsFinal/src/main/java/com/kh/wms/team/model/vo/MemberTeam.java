package com.kh.wms.team.model.vo;

public class MemberTeam {

	private int memberNo;
	private int teamNo;
	private int sportsNo;
	private int memberGrade;
	private String joinDate;
	private String joinStatus;
	private String introMyself;
	
	public MemberTeam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberTeam(int memberNo, int teamNo, int sportsNo, int memberGrade, String joinDate, String joinStatus,
			String introMyself) {
		super();
		this.memberNo = memberNo;
		this.teamNo = teamNo;
		this.sportsNo = sportsNo;
		this.memberGrade = memberGrade;
		this.joinDate = joinDate;
		this.joinStatus = joinStatus;
		this.introMyself = introMyself;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
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

	public int getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getJoinStatus() {
		return joinStatus;
	}

	public void setJoinStatus(String joinStatus) {
		this.joinStatus = joinStatus;
	}

	public String getIntroMyself() {
		return introMyself;
	}

	public void setIntroMyself(String introMyself) {
		this.introMyself = introMyself;
	}

	@Override
	public String toString() {
		return "MemberTeam [memberNo=" + memberNo + ", teamNo=" + teamNo + ", sportsNo=" + sportsNo + ", memberGrade="
				+ memberGrade + ", joinDate=" + joinDate + ", joinStatus=" + joinStatus + ", introMyself=" + introMyself
				+ "]";
	}
	
}
