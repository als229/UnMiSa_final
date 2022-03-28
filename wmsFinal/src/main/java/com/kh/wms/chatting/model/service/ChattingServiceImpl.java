package com.kh.wms.chatting.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.chatting.model.dao.ChattingDao;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;

@Service
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	private ChattingDao chattingDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public ArrayList<TeamChat> teamChatList(String bossId) {
		return chattingDao.teamChatList(sqlSession, bossId);
	}
	@Override
	public int teamChatCount(String bossId) {
		return chattingDao.teamChatCount(sqlSession, bossId);
	}
	@Override
	public ArrayList<TeamChat> teamMember(int teamNo) {
		return chattingDao.teamMember(sqlSession, teamNo);
	}
	
}
