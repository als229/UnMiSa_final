package com.kh.wms.sportsPartner.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Purpose {

	private int purposeNo;
	private int memberNo;
	private double currentWeight;
	private double currentFat;
	private double currentMuscle;
	private double purposeWeight;
	private double purposeFat;
	private double purposeMuscle;
	private int purposeStatus;
	private String sports1;
	private String sports2;
	private String sports3;
	private int sportsCount1;
	private int sportsCount2;
	private int sportsCount3;
	private double beginningWeight;
	private double beginningFat;
	private double beginningMuscle;
	private String purposeName;

	
	
	
}
