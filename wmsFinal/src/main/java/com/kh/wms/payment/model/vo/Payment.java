package com.kh.wms.payment.model.vo;

import lombok.Data;


@Data
public class Payment {

	private int paymentNo;
	private int memberNo;
	private int markNo;
	private String paymentDate;
	private int paymentMethod;
	private String memberId;
	private String markName;
	private String markContent;
	private int price;
	private int rownum;
	
	
	
}
