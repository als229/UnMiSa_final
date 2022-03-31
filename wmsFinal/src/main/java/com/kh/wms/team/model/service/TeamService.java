package com.kh.wms.team.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.team.model.vo.Team;

public interface TeamService {

	public ArrayList<Address> selectAddressList();
	
	int insertTeam(Team t);
	int selectTeamCount();
	ArrayList<Team> selectTeamList(PageInfo pi);
	int serchSelectWmsCount(Map<String, Object> map);
	ArrayList<Team> serchSelectWms(Map<String, Object> map, PageInfo pi);
	ArrayList<Team> selectOptionTeamList(Map<String, Object> map);

	
	
}