package com.kh.wms.sportsPartner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.sportsPartner.model.service.SportsPartnerService;

@Controller
public class SportsPartnerController {

	@Autowired
	private SportsPartnerService sp;
	

	
	@RequestMapping(value="sportsPartnerMain.sp")
	public ModelAndView sportsPartnerMain(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerMain");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerPurpose.sp")
	public ModelAndView sportsPartnerPurpose(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerPurpose");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerDiaryWrite.sp")
	public ModelAndView sportsPartnerDiaryWrite(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerDiaryWrite");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerDiaryList.sp")
	public ModelAndView sportsPartnerDiaryList(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerDiaryList");
		
		return mv;
	}
	
}
