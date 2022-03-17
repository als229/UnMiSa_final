package com.kh.wms.payment.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.payment.model.service.PaymentService;
import com.kh.wms.payment.model.vo.Payment;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	
	@RequestMapping(value="markMarket.pm")
	public ModelAndView markMarketList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = paymentService.marketListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 6);
		
		ArrayList<Payment> list = paymentService.marketList(pi);
		
		mv.addObject("list",list).addObject("pi",pi).setViewName("markMarket/markMarketList");
		
		return mv;
	}
}
