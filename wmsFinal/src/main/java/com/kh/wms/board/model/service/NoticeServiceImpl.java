package com.kh.wms.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.board.model.dao.NoticeDao;
import com.kh.wms.board.model.vo.Notice;
import com.kh.wms.common.model.vo.PageInfo;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticeDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int selectListCount() {
		return noticeDao.selectListCount(sqlSession);
	}
	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return noticeDao.selectList(sqlSession, pi);
	}
	@Override
	public int insertNotice(Notice n) {
		return noticeDao.insertNotice(sqlSession, n);
	}
	@Override
	public Notice noticeDetail(int noticeNo) {
		return noticeDao.noticeDetail(sqlSession, noticeNo);
	}
	@Override
	public int increaseCount(int noticeNo) {
		return noticeDao.increaseCount(sqlSession, noticeNo);
	}
	@Override
	public int noticeDelete(int noticeNo) {
		// TODO Auto-generated method stub
		return noticeDao.noticeDelete(sqlSession, noticeNo);
	}
	@Override
	public int noticeUpdate(Notice n) {
		return noticeDao.noticeUpdate(sqlSession, n);
	}
	@Override
	public int searchCount(HashMap<String, String> map) {
		return noticeDao.searchCount(sqlSession,map);
	}
	@Override
	public ArrayList<Notice> searchNotice(HashMap<String, String> map, PageInfo pi) {
		return noticeDao.searchNotice(sqlSession,map,pi);
	}
	

}
