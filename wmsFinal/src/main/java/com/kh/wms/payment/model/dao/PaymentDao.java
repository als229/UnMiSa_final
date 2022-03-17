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


}
