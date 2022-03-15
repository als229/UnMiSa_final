package com.kh.wms.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	public int ajaxCheckId(SqlSessionTemplate sqlSession, String memberId) {
		
		return sqlSession.selectOne("member.ajaxCheckId", memberId);
	}

}
