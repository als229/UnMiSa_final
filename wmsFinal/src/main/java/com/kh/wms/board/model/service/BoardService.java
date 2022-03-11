package com.kh.wms.board.model.service;

import java.util.ArrayList;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Reply;
import com.kh.wms.common.model.vo.PageInfo;

public interface BoardService {

	//자유게시판 리스트조회 +페이징
	//게시글 총 갯수 조회
	int selectListCount();
	//게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo pi);
	
	//자유게시판 작성
	
	int insertBoard(Board b);
	
	//자유게시판 상세조회
	//조회수 증가
	int increaseCount(int boardNo);
	Board selectBoard(int boardNo);
	
	//게시글 삭제
	
	int deleteBoard(int boardNo);
	
	//게시글 수정
	
	int updateBoard(Board b);
	
	//댓글 리스트 조회(Ajax)
	
	ArrayList<Reply> selectReplyList(int boardNo);
	
	//댓글 작성(Ajax)
	
	int insertReply(Reply r);
	
}
