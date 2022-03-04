package com.kh.wms.gym.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.gym.model.dao.GymDao;

@Service
public class GymServiceImpl implements GymService{

	@Autowired
	private GymDao gymDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
