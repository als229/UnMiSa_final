package com.kh.wms.team.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.common.model.vo.PageInfo;
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
	
	@Override
	public int selectTeamCount() {
		return teamDao.selectTeamCount(sqlSession);
	}

	@Override
	public ArrayList<Team> selectTeamList(PageInfo pi) {
		return teamDao.selectTeamList(sqlSession,pi);
	}
	
	@Override
	public int serchSelectWmsCount(Map<String, Object> map) {
		return teamDao.serchSelectWmsCount(sqlSession, map);
	}
	@Override
	public ArrayList<Team> serchSelectWms(Map<String, Object> map, PageInfo pi) {
		return teamDao.serchSelectWms(sqlSession, map, pi);
	}


	
	
	
}
