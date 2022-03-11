package com.kh.wms.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.common.model.vo.PageInfo;

@Repository
public class BoardDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		
		return sqlSession.selectOne("boardMapper.selectListCount");
	} 
	
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession,PageInfo pi){
		
		return null  ;
	}
}
