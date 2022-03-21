package com.kh.wms.event.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.event.model.vo.Attendance;

@Repository
public class EventDao {

	public int insertAt(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.insert("eventMapper.insertAt", memberNo);
		return sqlSession.selectOne("eventMapper.selectCount", memberNo);
	}

	public void increasePoint(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.update("eventMapper.increaseCount", memberNo);
	}

	public ArrayList<Attendance> eventMain(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("eventMapper.attendance", memberNo);
	}

}
