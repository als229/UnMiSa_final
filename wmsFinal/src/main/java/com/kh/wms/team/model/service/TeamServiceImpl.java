package com.kh.wms.team.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.team.model.dao.TeamDao;
import com.kh.wms.team.model.vo.Team;

@Service
public class TeamServiceImpl implements TeamService{

	@Autowired
	private TeamDao teamDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public ArrayList<Address> selectAddressList() {
		
		
		return teamDao.selectAddressList(sqlSession);
	}


	@Override
	public int insertTeam(Team t) {
		
		
		
		return teamDao.insertTeam(sqlSession, t);
	}
	
	
	
}
