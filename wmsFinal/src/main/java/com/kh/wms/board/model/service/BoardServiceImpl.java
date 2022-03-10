package com.kh.wms.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.board.model.dao.BoardDao;
import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Reply;
import com.kh.wms.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSessionTemplate sqlSession; 
	@Autowired
	private BoardDao boardDao;
	@Override
	public int selectListCount() {
		
		
		return boardDao.selectListCount(sqlSession);
	}
	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		
		return boardDao.selectListCount(sqlSession, pi);
	}
	@Override
	public int insertBoard(Board b) {
		
		return 0;
	}
	@Override
	public int increaseCount(int boardNo) {
		
		return 0;
	}
	@Override
	public Board selectBoard(int boardNo) {
		
		return null;
	}
	@Override
	public int deleteBoard(int boardNo) {
		
		return 0;
	}
	@Override
	public int updateBoard(Board b) {
		
		return 0;
	}
	@Override
	public ArrayList<Reply> selectReplyList(int boardNo) {
		
		return null;
	}
	@Override
	public int insertReply(Reply r) {
		
		return 0;
	}
	
	
}
