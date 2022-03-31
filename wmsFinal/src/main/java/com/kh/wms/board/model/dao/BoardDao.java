package com.kh.wms.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Reply;
import com.kh.wms.common.model.vo.PageInfo;

@Repository
public class BoardDao {
	
	public int nomalSelectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.nomalSelectListCount");
	}
	
	public ArrayList<Board> nomalSelectList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
	 return (ArrayList)sqlSession.selectList("boardMapper.nomalSelectList", null, rowBounds);
		
	}
	public int nomalInsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.nomalInsertBoard",b);
	}

	public int nomalIncreaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.nomalIncreaseCount",boardNo);
	}

	public Board nomalSelectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.nomalSelectBoard",boardNo);
	}

	public int nomalUpdateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.nomalUpdate",b);
	}

	public int nomalDeleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.nomalDelete",boardNo);
	}

	public ArrayList<Reply> nomalSelectReplyList(SqlSessionTemplate sqlSession, int boardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",boardNo);
	}

	public int nomalInsertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.nomalInsertReply", r);
	}
	
	//용병게시판
	
	public int mercenarySelectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.mercenarySelectListCount");
	}
	
	public ArrayList<Board> mercenarySelectList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
	 return (ArrayList)sqlSession.selectList("boardMapper.mercenarySelectList", null, rowBounds);
		
	}
	public int mercenaryInsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.mercenaryInsertBoard",b);
	}

	public int mercenaryIncreaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.mercenaryIncreaseCount",boardNo);
	}

	public Board mercenarySelectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.mercenarySelectBoard",boardNo);
	}

	public int mercenaryUpdateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.mercenaryUpdate",b);
	}

	public int mercenaryDeleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.mercenaryDelete",boardNo);
	}

	public ArrayList<Reply> mercenaryReplyList(SqlSessionTemplate sqlSession, int boardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.mercenaryReplyList",boardNo);
	}

	public int mercenaryInsertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.mercenaryInsertReply", r);
	}

	public int mercenaryChoiceListCount(SqlSessionTemplate sqlSession, int boardSelect) {
		return sqlSession.selectOne("boardMapper.mercenaryChoiceListCount",boardSelect);
	}

	public ArrayList<Board> mercenaryChoiceList(SqlSessionTemplate sqlSession, PageInfo pi, int boardSelect) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
	 return (ArrayList)sqlSession.selectList("boardMapper.mercenaryChoiceList", boardSelect, rowBounds);
	
	}
}
