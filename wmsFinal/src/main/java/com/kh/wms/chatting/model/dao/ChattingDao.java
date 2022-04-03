package com.kh.wms.chatting.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.chatting.model.vo.ChattingMessage;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;

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

	public int chatRoomAdd(SqlSessionTemplate sqlSession, ChattingMessage cm) {
		return sqlSession.insert("chatMapper.chatRoomAdd", cm);
	}

	public int selectRoomNo(SqlSessionTemplate sqlSession, String roomId) {
		return sqlSession.selectOne("chatMapper.selectRoomNo", roomId);
	}

	public void chatMemberAdd(SqlSessionTemplate sqlSession, ChattingMessage cm) {
		sqlSession.insert("chatMapper.chatMemberAdd", cm);
	}

	public ArrayList<ChattingMessage> myChatList(SqlSessionTemplate sqlSession, int memberNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("chatMapper.myChatList", memberNo, rowBounds);
	}

	public int myChatListCount(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("chatMapper.myChatListCount", memberNo);
	}

	public void addChatMessage(SqlSessionTemplate sqlSession, ChattingMessage cm) {
		sqlSession.insert("chatMapper.addChatMessage",cm);
	}

	public ArrayList<ChattingMessage> selectMessageList(SqlSessionTemplate sqlSession, int roomNo) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectMessageList", roomNo);
	}

	public ArrayList<Member> selectRoomMembers(SqlSessionTemplate sqlSession, int roomNo) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectRoomMembers", roomNo);
	}

	public int exitChat(SqlSessionTemplate sqlSession, ChattingMessage cm) {
		return sqlSession.delete("chatMapper.exitChat", cm);
	}

	public int exitRoom(SqlSessionTemplate sqlSession, int roomNo) {
		return sqlSession.delete("chatMapper.exitRoom", roomNo);
	}

}
