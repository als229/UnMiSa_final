package com.kh.wms.chatting.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;

@Repository
public class ChattingDao {

	public ArrayList<TeamChat> teamChatList(SqlSessionTemplate sqlSession, String bossId) {
		return (ArrayList)sqlSession.selectList("chatMapper.teamChatList", bossId);
	}

	public int teamChatCount(SqlSessionTemplate sqlSession, String bossId) {
		return sqlSession.selectOne("chatMapper.teamChatCount", bossId);
	}

	public ArrayList<TeamChat> teamMember(SqlSessionTemplate sqlSession, int teamNo) {
		return (ArrayList)sqlSession.selectList("chatMapper.teamMember", teamNo);
	}

}
