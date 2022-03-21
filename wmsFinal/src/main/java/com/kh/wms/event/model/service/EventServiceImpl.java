package com.kh.wms.event.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.event.model.dao.EventDao;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao eventDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int insertAt(int memberNo) {
		return eventDao.insertAt(sqlSession, memberNo);
	}
	@Override
	public void increasePoint(int memberNo) {
		eventDao.increasePoint(sqlSession, memberNo);
		
	}
	
}
