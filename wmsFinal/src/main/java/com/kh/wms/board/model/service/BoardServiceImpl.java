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
		return boardDao.nomalDeleteBoard(sqlSession,boardNo);
	}

	@Override
	public int nomalUpdateBoard(Board b) {
		return boardDao.nomalUpdateBoard(sqlSession,b);
	}

	@Override
	public ArrayList<Reply> nomalSelectReplyList(int boardNo) {
		return boardDao.nomalSelectReplyList(sqlSession,boardNo);
	}

	@Override
	public int nomalInsertReply(Reply r) {
		return boardDao.nomalInsertReply(sqlSession, r);
	}
	
	//용병게시판
	
	
	@Override
	public int mercenarySelectListCount() {
	
		return boardDao.mercenarySelectListCount(sqlSession);
	}
	
	@Override
	public ArrayList<Board> mercenarySelectList(PageInfo pi) {
		return boardDao.mercenarySelectList(sqlSession, pi);
	}
	@Override
	public int mercenaryInsertBoard(Board b) {
		return boardDao.mercenaryInsertBoard(sqlSession, b);
	}

	@Override
	public int mercenaryIncreaseCount(int boardNo) {
		return boardDao.mercenaryIncreaseCount(sqlSession,boardNo);
	}

	@Override
	public Board mercenarySelectBoard(int boardNo) {
		return boardDao.mercenarySelectBoard(sqlSession,boardNo);
	}

	@Override
	public int mercenaryDeleteBoard(int boardNo) {
		return boardDao.mercenaryDeleteBoard(sqlSession,boardNo);
	}

	@Override
	public int mercenaryUpdateBoard(Board b) {
		return boardDao.mercenaryUpdateBoard(sqlSession,b);
	}

	@Override
	public ArrayList<Reply> mercenarySelectReplyList(int boardNo) {
		return boardDao.mercenaryReplyList(sqlSession,boardNo);
	}

	@Override
	public int mercenaryInsertReply(Reply r) {
		return boardDao.mercenaryInsertReply(sqlSession, r);
	}

	@Override
	public int mercenaryChoiceListCount(int boardSelect) {
		
		return boardDao.mercenaryChoiceListCount(sqlSession,  boardSelect);
	}

	@Override
	public ArrayList<Board> mercenaryChoiceList(PageInfo pi, int boardSelect) {
		return boardDao.mercenaryChoiceList(sqlSession, pi,boardSelect);
	}
}
