package com.kh.wms.payment.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString

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
	
	
	
}
