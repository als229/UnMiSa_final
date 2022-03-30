package com.kh.wms.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.dao.MemberDao;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.team.model.vo.Battle;
import com.kh.wms.team.model.vo.MemberTeam;
import com.kh.wms.team.model.vo.Team;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int ajaxCheckId(String memberId) {
		
		return memberDao.ajaxCheckId(sqlSession, memberId);
	}
	@Override
	public int ajaxAuthEmail(String email) {
		return memberDao.ajaxAuthEmail(sqlSession, email);
	}
	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}
	@Override
	public Member loginMember(String autyKey) {
		return memberDao.loginMember(sqlSession, autyKey);
	}
	
	@Override
	public int AjaxPlatFormCheck(String authKey) {
		return memberDao.AjaxPlatFormCheck(sqlSession, authKey);
	}
	
	// 관민존
	@Override
	public int selectMyTeamCount(Member m) {
		return memberDao.selectMyTeamCount(sqlSession,m);
	}
	
	@Override
	public ArrayList<Team> selectmyJoinTeamList(Member m,PageInfo pi) {
		return memberDao.selectmyJoinTeamList(sqlSession, m, pi);
	}
	@Override
	public int quitTeam(Map<String, Object> map) {
		return memberDao.quitTeam(map, sqlSession );
	}
	@Override
	public Team memberSelectTeam(int teamNo) {
		return memberDao.memberSelectTeam(teamNo, sqlSession);
	}
	@Override
	public int selectMyCreateTeamCount(Member m) {
		return memberDao.selectMyCreateTeamCount(sqlSession, m);
	}
	@Override
	public ArrayList<Team> selectListCreateTeam(Member m, PageInfo pi) {
		return memberDao.selectListCreateTeam(m, pi, sqlSession);
	}
	@Override
	public int updateTeam(Team team) {
		return memberDao.updateTeam(team, sqlSession);
	}
	@Override
	public int applyTeamJoin(MemberTeam tm) {
		return memberDao.applyTeamJoin(sqlSession, tm);
	}
	@Override
	public ArrayList<MemberTeam> myTeamMemberJoinList(int teamNo, PageInfo pi) {
		return memberDao.myTeamMemberJoinList(sqlSession, teamNo, pi);
	}
	@Override
	public int memberCount(int teamNo) {
		return memberDao.memberCount(sqlSession,teamNo);
	}
	@Override
	public int insertTeamMember(Map<String, Object> map) {
		return memberDao.insertTeamMember(map, sqlSession);
	}
	@Override
	public int applyBattle(Battle bt) {
		return memberDao.applyBattle(sqlSession, bt);
	}
	@Override
	public int battleCount(int teamNo) {
		return memberDao.battleCount(sqlSession, teamNo);
	}
	@Override
	public ArrayList<Battle> selectBattleApplyList(int teamNo, PageInfo pi) {
		return memberDao.selectBattleApplyList(teamNo, pi, sqlSession);
	}
	@Override
	public Member adminSelct(String memberId) {
		return memberDao.adminSelect(sqlSession, memberId);
	}
	
	
	
	
	
	

	
	
	
	
}
