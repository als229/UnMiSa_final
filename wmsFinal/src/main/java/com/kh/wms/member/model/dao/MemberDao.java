package com.kh.wms.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.member.model.vo.Member;

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

}
