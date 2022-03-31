package com.kh.wms.chatting.model.service;

import java.util.ArrayList;

import com.kh.wms.chatting.model.vo.ChattingMessage;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;

public interface ChattingService {
	
	ArrayList<TeamChat> teamChatList(String bossId);
	
	int teamChatCount (String bossId);
	
	ArrayList<TeamChat> teamMember(int teamNo);
	
	int chatRoomAdd(ChattingMessage cm);

	int selectRoomNo(String roomId);

	void chatMemberAdd(ChattingMessage cm);

	int myChatListCount(int memberNo);

	ArrayList<ChattingMessage> myChatList(int memberNo, PageInfo pi);

	void addChatMessage(ChattingMessage cm);

	ArrayList<ChattingMessage> selectMessageList(int roomNo);

	ArrayList<Member> selectRoomMembers(int roomNo);
	

}
