package com.kh.wms.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.payment.model.vo.Payment;
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
