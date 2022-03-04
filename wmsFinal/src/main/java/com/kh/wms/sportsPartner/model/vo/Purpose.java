package com.kh.wms.sportsPartner.model.vo;


public class Purpose {

	private int purposeNo;
	private int memberNo;
	private double currentWeight;
	private double currentFat;
	private double currentMuscle;
	private double purposeMuscle;
	private double purposeWeight;
	private double purposeFat;
	private String sports1;
	private String sports2;
	private String sports3;
	private int purposeStatus;
	
	public Purpose() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Purpose(int purposeNo, int memberNo, double currentWeight, double currentFat, double currentMuscle,
			double purposeMuscle, double purposeWeight, double purposeFat, String sports1, String sports2,
			String sports3, int purposeStatus) {
		super();
		this.purposeNo = purposeNo;
		this.memberNo = memberNo;
		this.currentWeight = currentWeight;
		this.currentFat = currentFat;
		this.currentMuscle = currentMuscle;
		this.purposeMuscle = purposeMuscle;
		this.purposeWeight = purposeWeight;
		this.purposeFat = purposeFat;
		this.sports1 = sports1;
		this.sports2 = sports2;
		this.sports3 = sports3;
		this.purposeStatus = purposeStatus;
	}

	public int getPurposeNo() {
		return purposeNo;
	}

	public void setPurposeNo(int purposeNo) {
		this.purposeNo = purposeNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public double getCurrentWeight() {
		return currentWeight;
	}

	public void setCurrentWeight(double currentWeight) {
		this.currentWeight = currentWeight;
	}

	public double getCurrentFat() {
		return currentFat;
	}

	public void setCurrentFat(double currentFat) {
		this.currentFat = currentFat;
	}

	public double getCurrentMuscle() {
		return currentMuscle;
	}

	public void setCurrentMuscle(double currentMuscle) {
		this.currentMuscle = currentMuscle;
	}

	public double getPurposeMuscle() {
		return purposeMuscle;
	}

	public void setPurposeMuscle(double purposeMuscle) {
		this.purposeMuscle = purposeMuscle;
	}

	public double getPurposeWeight() {
		return purposeWeight;
	}

	public void setPurposeWeight(double purposeWeight) {
		this.purposeWeight = purposeWeight;
	}

	public double getPurposeFat() {
		return purposeFat;
	}

	public void setPurposeFat(double purposeFat) {
		this.purposeFat = purposeFat;
	}

	public String getSports1() {
		return sports1;
	}

	public void setSports1(String sports1) {
		this.sports1 = sports1;
	}

	public String getSports2() {
		return sports2;
	}

	public void setSports2(String sports2) {
		this.sports2 = sports2;
	}

	public String getSports3() {
		return sports3;
	}

	public void setSports3(String sports3) {
		this.sports3 = sports3;
	}

	public int getPurposeStatus() {
		return purposeStatus;
	}

	public void setPurposeStatus(int purposeStatus) {
		this.purposeStatus = purposeStatus;
	}

	@Override
	public String toString() {
		return "Purpose [purposeNo=" + purposeNo + ", memberNo=" + memberNo + ", currentWeight=" + currentWeight
				+ ", currentFat=" + currentFat + ", currentMuscle=" + currentMuscle + ", purposeMuscle=" + purposeMuscle
				+ ", purposeWeight=" + purposeWeight + ", purposeFat=" + purposeFat + ", sports1=" + sports1
				+ ", sports2=" + sports2 + ", sports3=" + sports3 + ", purposeStatus=" + purposeStatus + "]";
	}
	
}
