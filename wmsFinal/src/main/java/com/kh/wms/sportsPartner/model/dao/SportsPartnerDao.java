package com.kh.wms.sportsPartner.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.sportsPartner.model.vo.Purpose;
import com.kh.wms.sportsPartner.model.vo.SportsDiary;

@Repository
public class SportsPartnerDao {

	
	
	public Purpose selectPurpose(SqlSessionTemplate sqlSession, int memberNo) {
		
		return sqlSession.selectOne("sportsPartnerMapper.selectPurpose", memberNo);
	}

	public int insertPurpose(SqlSessionTemplate sqlSession, Purpose p) {
		
		return sqlSession.insert("sportsPartnerMapper.insertPurpose", p);
	}

	public int insertDiary(SqlSessionTemplate sqlSession, SportsDiary sd) {
		
		return sqlSession.insert("sportsPartnerMapper.insertDiary", sd);
	}

	public int updatePurpose(SqlSessionTemplate sqlSession, Purpose p) {
	
		return sqlSession.update("sportsPartnerMapper.updatePurpose", p);
	}

	public SportsDiary check(SqlSessionTemplate sqlSession, int memberNo) {
		
		return sqlSession.selectOne("sportsPartnerMapper.check", memberNo);
	}

	public ArrayList<SportsDiary> selectDiary(SqlSessionTemplate sqlSession, int memberNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("sportsPartnerMapper.selectDiary", memberNo);
	}

	public ArrayList<SportsDiary> selectDiary2(SqlSessionTemplate sqlSession, int memberNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
	
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("sportsPartnerMapper.selectDiary2", memberNo, rowBounds);
	}

	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("sportsPartnerMapper.selectListCount");
	}

	public SportsDiary detailDiary(SqlSessionTemplate sqlSession, int diaryNo) {
		
		return sqlSession.selectOne("sportsPartnerMapper.detailDiary", diaryNo);
	}

}
