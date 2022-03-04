package com.kh.wms.sportsPartner.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.sportsPartner.model.dao.SportsPartnerDao;

@Service
public class SportsPartnerServiceImpl implements SportsPartnerService {

	@Autowired
	private SportsPartnerDao sportsPartnerDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}
