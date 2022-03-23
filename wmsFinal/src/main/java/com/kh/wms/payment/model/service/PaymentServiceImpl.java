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

	@Override
	public ArrayList<Payment> marketList2() {
		return paymentDao.marketList2(sqlSession);
	}

	@Override
	public int paymentPoint(Payment p) {
		return paymentDao.paymentPoint(sqlSession, p);
	}

	@Override
	public int buyMark(Payment p) {
		return paymentDao.buyMark(sqlSession, p);
	}

	@Override
	public void paymentKakaopay(Payment p) {
		 paymentDao.paymentKakaopay(sqlSession, p);
	}
	
	@Override
	public int paymentListCount(int memberNo) {
		return paymentDao.paymentListCount(sqlSession,memberNo);
	}
	@Override
	public ArrayList<Payment> paymentList(PageInfo pi, int memberNo) {
		
		return paymentDao.paymentList(sqlSession,memberNo,pi);
	}

	@Override
	public int selectMark(Payment p) {
		return paymentDao.selectMark(sqlSession, p);
	}
	@Override
	public void canclePayment(int memberNo) {
		paymentDao.canclePayment(sqlSession,memberNo);
	}


}
