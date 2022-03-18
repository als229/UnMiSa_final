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
			
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		// 세션에서 로그인유저 갖고와서 멤버넘버를 다운캐스팅하고(멤벼형으로) 멤버형의 멤버넘버를 인트형 겟으로 갖고옴
		
		Purpose p = sp.selectPurpose(memberNo);
		// 멤버넘버를 식별자 역할로 매개변수에 같이 서비스로 넘김
		
		mv.addObject("p", p);
		
		mv.setViewName("sportsPartner/sportsPartnerMain");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerPurpose.sp")
	public ModelAndView sportsPartnerPurpose(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerPurpose");
		
		return mv;
	}
	
	@RequestMapping("insert.pp")
	public ModelAndView insertPurpose(Purpose p, ModelAndView mv, HttpSession session) {
		
		int result = sp.insertPurpose(p);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "목표설정 성공!");
			mv.setViewName("redirect:sportsPartnerMain.sp");
			
			
		} else {
			
			
		}
		
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
