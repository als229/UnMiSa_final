package com.kh.wms.chatting.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.chatting.model.dao.ChattingDao;

@Service
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	private ChattingDao chattingDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}
