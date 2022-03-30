package com.kh.wms.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.team.model.vo.Battle;
import com.kh.wms.team.model.vo.MemberTeam;
import com.kh.wms.team.model.vo.Team;

@Repository
public class MemberDao {

	public int ajaxCheckId(SqlSessionTemplate sqlSession, String memberId) {
		return sqlSession.selectOne("memberMapper.ajaxCheckId", memberId);
	}

	public int ajaxAuthEmail(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.ajaxAuthEmail", email);
	}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public Member loginMember(SqlSessionTemplate sqlSession, String authKey) {
		return sqlSession.selectOne("memberMapper.loginMemberAuth", authKey);
	}

	public int ajaxkakaoEmailCheck(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.ajaxkakaoEmailCheck", email);
	}

	public int AjaxPlatFormCheck(SqlSessionTemplate sqlSession, String authKey) {
		return sqlSession.selectOne("memberMapper.AjaxPlatFormCheck", authKey);
	}

	
	// 관민존
	public int selectMyTeamCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectMyTeamCount", m);
	}

	public ArrayList<Team> selectmyJoinTeamList(SqlSessionTemplate sqlSession, Member m, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("memberMapper.selectmyJoinTeamList", m, rowBounds);
	}

	public int quitTeam(Map<String, Object> map, SqlSessionTemplate sqlSession) {
		return sqlSession.delete("memberMapper.quitTeam",map);
	}

	public Team memberSelectTeam(int teamNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.selectTeam",teamNo);
	}

	public int selectMyCreateTeamCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectMyCreateTeamCount", m);
	}

	public ArrayList<Team> selectListCreateTeam(Member m, PageInfo pi, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectListCreateTeam", m, rowBounds);
		
	}

	public int updateTeam(Team team, SqlSessionTemplate sqlSession) {
		return sqlSession.update("memberMapper.updateTeam", team);
	}

	public int applyTeamJoin(SqlSessionTemplate sqlSession, MemberTeam tm) {
		return sqlSession.insert("memberMapper.applyTeamJoin", tm);
	}

	public int memberCount(SqlSessionTemplate sqlSession, int teamNo) {
		return sqlSession.selectOne("memberMapper.memberCount", teamNo);
	}
	
	public ArrayList<MemberTeam> myTeamMemberJoinList(SqlSessionTemplate sqlSession, int teamNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.myTeamMemberJoinList", teamNo, rowBounds);
	}

	public int insertTeamMember(Map<String, Object> map, SqlSessionTemplate sqlSession) {
		return sqlSession.update("memberMapper.insertTeamMember", map);
	}

	public int applyBattle(SqlSessionTemplate sqlSession, Battle bt) {
		return sqlSession.insert("memberMapper.applyBattle",bt);
	}

	public int battleCount(SqlSessionTemplate sqlSession, int teamNo) {
		return sqlSession.selectOne("memberMapper.battleCount", teamNo);
	}

	public ArrayList<Battle> selectBattleApplyList(int teamNo, PageInfo pi, SqlSessionTemplate sqlSession) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("memberMapper.selectBattleApplyList", teamNo, rowBounds);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	

}
