package com.kh.wms.payment.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.payment.model.vo.Payment;

@Repository
public class PaymentDao {

	public int marketListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("paymentMapper.marketListCount");
	}
	public ArrayList<Payment> marketList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		// 공식이니 외우자 ,,
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("paymentMapper.marketList",null,rowBounds);
	}
	
	public int paymentPoint(SqlSessionTemplate sqlSession, Payment p) {
		return sqlSession.insert("paymentMapper.paymentPoint",p);
	}
	public int buyMark(SqlSessionTemplate sqlSession, Payment p) {
		return sqlSession.update("paymentMapper.buyMark",p);
	}
	public void paymentKakaopay(SqlSessionTemplate sqlSession, Payment p) {
		 sqlSession.insert("paymentMapper.paymentKakaopay",p);
	}
	public ArrayList<Payment> marketList2(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("paymentMapper.marketList2");
	}
	
	
	public int paymentListCount(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("paymentMapper.paymentListCount", memberNo);
	}

	public ArrayList<Payment> paymentList(SqlSessionTemplate sqlSession, int memberNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
			
		// 공식이니 외우자 ,,
		RowBounds rowBounds = new RowBounds(offset,limit);
			
		return (ArrayList)sqlSession.selectList("paymentMapper.paymentList",memberNo,rowBounds);
		}
	
	
	public void canclePayment(SqlSessionTemplate sqlSession, int memberNo) {
		
		sqlSession.delete("paymentMapper.canclePayment",memberNo);
		
	}


}
