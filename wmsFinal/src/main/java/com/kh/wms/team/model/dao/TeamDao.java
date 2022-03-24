package com.kh.wms.team.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.team.model.vo.Team;

@Repository
public class TeamDao {

	public ArrayList<Address> selectAddressList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("teamMapper.selectAddressList");
	}

	public int insertTeam(SqlSessionTemplate sqlSession, Team t) {

		return sqlSession.insert("teamMapper.insertTeam", t);
	}

	
}
