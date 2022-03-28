package com.kh.wms.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.team.model.vo.Team;

public interface MemberService {

	
	int ajaxCheckId(String memberId);
	int ajaxAuthEmail(String email);
	int insertMember(Member m);
	Member loginMember(Member m);
	Member loginMember(String authKey);
	int AjaxPlatFormCheck(String authKey);
	
	// 관민존
	int selectMyTeamCount(Member m);
	ArrayList<Team> selectmyJoinTeamList(Member m,PageInfo pi);
	int quitTeam(Map<String, Object> map);
	Team memberSelectTeam(int teamNo);
	int selectMyCreateTeamCount(Member m);
	ArrayList<Team> selectListCreateTeam(Member m, PageInfo pi);
	int updateTeam(Team team);
	
	
	
	
}
