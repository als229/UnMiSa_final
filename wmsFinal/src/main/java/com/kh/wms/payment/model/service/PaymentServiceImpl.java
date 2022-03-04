package com.kh.wms.payment.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.payment.model.dao.PaymentDao;

@Controller
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
}
