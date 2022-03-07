package com.kh.wms.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	
	
	@RequestMapping(value="login.me")
	public ModelAndView login(ModelAndView mv, String userId, String userPwd) {
		
		
		
		
		return mv;
		
		
	}
	
	@RequestMapping(value="myPage.me")
	public ModelAndView selectMyPage(ModelAndView mv) {
		
		mv.setViewName("member/myPage");
		
		return mv;
	}
	
	
}
