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
	public int nomalSelectListCount() {
	
		return boardDao.nomalSelectListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> nomalSelectList(PageInfo pi) {
		return boardDao.nomalSelectList(sqlSession, pi);
	}
	@Override
	public int nomalInsertBoard(Board b) {
		return boardDao.nomalInsertBoard(sqlSession, b);
	}

	@Override
	public int nomalIncreaseCount(int boardNo) {
		return boardDao.nomalIncreaseCount(sqlSession,boardNo);
	}

	@Override
	public Board nomalSelectBoard(int boardNo) {
		return boardDao.nomalSelectBoard(sqlSession,boardNo);
	}

	@Override
	public int nomalDeleteBoard(int boardNo) {
		return boardDao.nomalDelteBoard(sqlSession,boardNo);
	}

	@Override
	public int nomalUpdateBoard(Board b) {
		return boardDao.nomalUpdateBoard(sqlSession,b);
	}

	@Override
	public ArrayList<Reply> nomalSelectReplyList(int boardNo) {
		return null;
	}

	@Override
	public int nomalInsertReply(Reply r) {
		return 0;
	}
	
}
