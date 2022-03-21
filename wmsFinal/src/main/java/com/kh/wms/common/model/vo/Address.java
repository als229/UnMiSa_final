package com.kh.wms.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Address {

	private int addressNo;
	private String siDo;
	private String gu;
	
	private String siGun;

}
