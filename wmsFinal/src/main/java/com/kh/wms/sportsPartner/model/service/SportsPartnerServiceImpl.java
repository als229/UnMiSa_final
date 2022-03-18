package com.kh.wms.sportsPartner.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.sportsPartner.model.dao.SportsPartnerDao;
import com.kh.wms.sportsPartner.model.vo.Purpose;
import com.kh.wms.sportsPartner.model.vo.SportsDiary;

@Service
public class SportsPartnerServiceImpl implements SportsPartnerService {

	@Autowired
	private SportsPartnerDao sportsPartnerDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	



	@Override
	public Purpose selectPurpose(int memberNo) {

		return sportsPartnerDao.selectPurpose(sqlSession, memberNo);
	}


	@Override
	public int insertPurpose(Purpose p) {

		return sportsPartnerDao.insertPurpose(sqlSession, p);
	}


	@Override
	public int insertDiary(SportsDiary sd) {
	
		return sportsPartnerDao.insertDiary(sqlSession, sd);
	}
	
	@Override
	public int updatePurpose(Purpose p) {
	
		return sportsPartnerDao.updatePurpose(sqlSession, p);
	}
	
	
}
