package com.kh.wms.board.model.service;

import java.util.ArrayList;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Reply;
import com.kh.wms.common.model.vo.PageInfo;

public interface BoardService {

	//자유게시판 리스트조회 +페이징
	//게시글 총 갯수 조회
	int nomalSelectListCount();
	//게시글 리스트 조회
	ArrayList<Board> nomalSelectList(PageInfo pi);
	
	//자유게시판 작성
	
	int nomalInsertBoard(Board b);
	
	//자유게시판 상세조회
	//조회수 증가
	int nomalIncreaseCount(int boardNo);
	Board nomalSelectBoard(int boardNo);
	
	//게시글 삭제
	
	int nomalDeleteBoard(int boardNo);
	
	//게시글 수정
	
	int nomalUpdateBoard(Board b);
	
	//댓글 리스트 조회(Ajax)
	
	ArrayList<Reply> nomalSelectReplyList(int boardNo);
	
	//댓글 작성(Ajax)
	
	int nomalInsertReply(Reply r);
	
	
	//용병게시판 영역
	
	//용병게시판 게시글 총 갯수 조회
	int mercenarySelectListCount();
	//용병게시판 게시글 리스트 조회
	ArrayList<Board> mercenarySelectList(PageInfo pi);
	//용병게시판 작성
	int mercenaryInsertBoard(Board b);
	//용병게시판 조회수증가
	int mercenaryIncreaseCount(int boardNo);
	//용병게시판 상세조회
	Board mercenarySelectBoard(int boardNo);
	//용병게시판 삭제
	int mercenaryDeleteBoard(int boardNo);
	//용병게시판 수정
	int mercenaryUpdateBoard(Board b);
	//용병게시판 댓글 리스트조회
	ArrayList<Reply> mercenarySelectReplyList(int boardNo);
	//용병게시판 댓글 작성
	int mercenaryInsertReply(Reply r);
	//용병게시판 선택 리스트
	int mercenaryChoiceListCount(int boardSelect);
	//용병게시판 선택
	ArrayList<Board> mercenaryChoiceList(PageInfo pi,int boardSelect);
}
