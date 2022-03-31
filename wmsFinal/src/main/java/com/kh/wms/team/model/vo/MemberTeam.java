package com.kh.wms.team.model.vo;

import java.util.Date;

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
public class MemberTeam {

	private int memberNo;
	private int teamNo;
	private int sportsNo;
	private int memberGrade;
	private String joinDate;
	private String joinStatus;
	private String introMyself;
	private int rownum;
	private String memberName;
	private String birthDate;

	
}
