package com.kh.wms.sportsPartner.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.member.model.vo.Member;
import com.kh.wms.sportsPartner.model.service.SportsPartnerService;
import com.kh.wms.sportsPartner.model.vo.Purpose;

@Controller
public class SportsPartnerController {

	@Autowired
	private SportsPartnerService sp;
	

	
	@RequestMapping(value="sportsPartnerMain.sp")
	public ModelAndView sportsPartnerMain(ModelAndView mv, HttpSession session) {
		
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		
		Purpose p = sp.selectPurpose(memberNo);
		
		mv.addObject("p", p);
		
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
	
	@RequestMapping(value="sportsPartnerDetail.sp")
	public ModelAndView sportsPartnerDetail(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerDetail");
		
		return mv;
	}
	
}
