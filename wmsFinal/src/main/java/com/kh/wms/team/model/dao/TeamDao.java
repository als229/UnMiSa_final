package com.kh.wms.team.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.team.model.vo.Team;

@Repository
public class TeamDao {

	public ArrayList<Address> selectAddressList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("teamMapper.selectAddressList");
	}

	public int insertTeam(SqlSessionTemplate sqlSession, Team t) {
		return sqlSession.insert("teamMapper.insertTeam", t);
	}

	public int selectTeamCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teamMapper.selectTeamCount");
	}
	
	public ArrayList<Team> selectTeamList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("teamMapper.selectTeamList", null, rowBounds);
	}

	public int serchSelectWmsCount(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		return sqlSession.selectOne("teamMapper.serchSelectWmsCount",map);
	}

	public ArrayList<Team> serchSelectWms(SqlSessionTemplate sqlSession, Map<String, Object> map, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("teamMapper.serchSelectWms", map, rowBounds);
	}

	public ArrayList<Team> selectOptionTeamList(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		return (ArrayList)sqlSession.selectList("teamMapper.selectOptionTeamList", map);
	}


	
}
