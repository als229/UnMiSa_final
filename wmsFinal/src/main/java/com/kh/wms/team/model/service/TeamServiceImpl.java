package com.kh.wms.team.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.team.model.dao.TeamDao;

@Service
public class TeamServiceImpl {

	@Autowired
	private TeamDao teamDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
}
