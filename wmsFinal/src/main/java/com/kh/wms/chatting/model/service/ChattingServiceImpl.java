package com.kh.wms.chatting.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.chatting.model.dao.ChattingDao;
import com.kh.wms.chatting.model.vo.ChattingMessage;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;

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
	@Override
	public int chatRoomAdd(ChattingMessage cm) {
		return chattingDao.chatRoomAdd(sqlSession, cm);
	}
	@Override
	public int selectRoomNo(String roomId) {
		return chattingDao.selectRoomNo(sqlSession, roomId);
	}
	@Override
	public void chatMemberAdd(ChattingMessage cm) {
		chattingDao.chatMemberAdd(sqlSession, cm);
	}
	@Override
	public int myChatListCount(int memberNo) {
		return chattingDao.myChatListCount(sqlSession, memberNo);
	}
	@Override
	public ArrayList<ChattingMessage> myChatList(int memberNo, PageInfo pi) {
		return chattingDao.myChatList(sqlSession, memberNo, pi);
	}
	@Override
	public void addChatMessage(ChattingMessage cm) {
		chattingDao.addChatMessage(sqlSession, cm);
		
	}
	@Override
	public ArrayList<ChattingMessage> selectMessageList(int roomNo) {
		return chattingDao.selectMessageList(sqlSession, roomNo);
	}
	@Override
	public ArrayList<Member> selectRoomMembers(int roomNo) {
		return chattingDao.selectRoomMembers(sqlSession, roomNo);
	}
	@Override
	public int exitChat(ChattingMessage cm) {
		return chattingDao.exitChat(sqlSession, cm);
	}
	@Override
	public int exitRoom(int roomNo) {
		return chattingDao.exitRoom(sqlSession, roomNo);
	}
	
}
