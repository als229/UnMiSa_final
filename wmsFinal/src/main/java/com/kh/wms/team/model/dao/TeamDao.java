package com.kh.wms.team.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.Address;

@Repository
public class TeamDao {

	public ArrayList<Address> selectAddressList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("teamMapper.selectAddressList");
	}

	
}
