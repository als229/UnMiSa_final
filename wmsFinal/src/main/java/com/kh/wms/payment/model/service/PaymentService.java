package com.kh.wms.payment.model.service;

import java.util.ArrayList;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.payment.model.vo.Payment;

public interface PaymentService {

	int marketListCount();
	ArrayList<Payment> marketList(PageInfo pi);
	ArrayList<Payment> marketList2();
	int paymentPoint(Payment p);
	int buyMark(Payment p);
	void paymentKakaopay(Payment p);
	int paymentListCount(int memberNo);
	ArrayList<Payment> paymentList(PageInfo pi, int memberNo);
		
	


}
