package com.kh.wms.payment.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.payment.model.dao.PaymentDao;
import com.kh.wms.payment.model.vo.Payment;

@Controller
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int marketListCount() {
		return paymentDao.marketListCount(sqlSession);
	}
	
	@Override
	public ArrayList<Payment> marketList(PageInfo pi) {
		return paymentDao.marketList(sqlSession,pi);
	}
}
