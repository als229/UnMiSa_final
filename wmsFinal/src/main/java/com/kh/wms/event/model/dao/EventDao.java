package com.kh.wms.event.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class EventDao {

	public int insertAt(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.insert("eventMapper.insertAt", memberNo);
		return sqlSession.selectOne("eventMapper.selectCount", memberNo);
	}

	public void increasePoint(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.update("eventMapper.increaseCount", memberNo);
	}

}
