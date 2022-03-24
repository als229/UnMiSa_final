package com.kh.wms.team.model.service;

import java.util.ArrayList;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.team.model.vo.Team;

public interface TeamService {

	public ArrayList<Address> selectAddressList();
	
	int insertTeam(Team t);

}