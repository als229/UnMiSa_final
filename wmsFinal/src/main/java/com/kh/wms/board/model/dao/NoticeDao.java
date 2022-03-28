package com.kh.wms.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Notice;
import com.kh.wms.common.model.vo.PageInfo;

@Repository
public class NoticeDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
	}

	public ArrayList<Notice> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		// 공식이니 외우자 ,,
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList", null,rowBounds);
	}

	public int insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		
		
		return sqlSession.insert("noticeMapper.insertNotice",n);
		
	}

	public Notice noticeDetail(SqlSessionTemplate sqlSession, int noticeNo) {
		
		return sqlSession.selectOne("noticeMapper.noticeDetail", noticeNo);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.update("noticeMapper.increaseCount", noticeNo);
	}

	public int noticeDelete(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.update("noticeMapper.noticeDelete",noticeNo);
	}

	public int noticeUpdate(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("noticeMapper.noticeUpdate",n);
	}

	public int searchCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("noticeMapper.searchCount",map);
	}
	
	public ArrayList<Notice> searchNotice(SqlSessionTemplate sqlSession, HashMap<String, String> map, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		
		return (ArrayList)sqlSession.selectList("noticeMapper.searchNotice", map,rowBounds);
	}


	

	 

}
