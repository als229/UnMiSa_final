package com.kh.wms.sportsPartner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.sportsPartner.model.vo.Purpose;

@Repository
public class SportsPartnerDao {

	
	
	public Purpose selectPurpose(SqlSessionTemplate sqlSession, int memberNo) {
		
		return sqlSession.selectOne("sportsPartnerMapper.selectPurpose", memberNo);
	}

	public int insertPurpose(SqlSessionTemplate sqlSession, Purpose p) {
		
		return sqlSession.insert("sportsPartnerMapper.insertPurpose", p);
	}

}
