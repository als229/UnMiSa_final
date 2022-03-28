package com.kh.wms.chatting.model.service;

import java.util.ArrayList;

import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;

public interface ChattingService {
	
	ArrayList<TeamChat> teamChatList(String bossId);
	
	int teamChatCount (String bossId);
	
	ArrayList<TeamChat> teamMember(int teamNo);

}
