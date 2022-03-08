package com.kh.wms.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.payment.model.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	
	@RequestMapping(value="markMarket.pm")
	public ModelAndView markMarketList(ModelAndView mv) {
		
		mv.setViewName("markMarket/markMarketList");
		
		return mv;
	}
}
