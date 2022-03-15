package com.kh.wms.member.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.wms.member.model.service.MemberService;
import com.kh.wms.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 호형존
	@RequestMapping(value="login.me")
	public ModelAndView googleAuth(ModelAndView mv)	throws IOException {
		
		System.out.println("로그인");
		
		mv.setViewName("main");

		return mv;

	}
	
	@RequestMapping(value="loginForm.me")
	public String loginForm() {
		return "member/login";
	}
	
	@RequestMapping(value="choice.me")
	public String choiceEnroll() {
		return "member/choiceEnroll";
	}
	
	
	@RequestMapping(value="enroll.me")
	public ModelAndView memberEnroll(ModelAndView mv, int platForm) {
		
		mv.addObject("platForm", platForm);
		mv.setViewName("member/memberEnroll");
		System.out.println(platForm);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "checkId.me", produces = "application/json; charset=UTF-8")
	public String ajaxCheckId(String memberId) {
		
		int result = memberService.ajaxCheckId(memberId);
		
		return new Gson().toJson(result); // 메서드를 호출하면 json이 자동으로 해준다.
	}
	
	@RequestMapping(value="insert.me")
	public ModelAndView insertMember(ModelAndView mv, Member m, int platForm ) {
		
		System.out.println(m);
		
		
		//String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		
		
		
		mv.setViewName("main");
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	// 현빈존
	@RequestMapping("myPayment.me")
	public String myPayment() {
		
		
		return "member/myPaymentList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 관민존
	@RequestMapping("myMatchSchedule.me")
	public String selectMyMatchSchedule() {
		
		
		return "member/myMatchSchedule";
	}
	
	@RequestMapping(value="myPage.me")
	public ModelAndView selectMyPage(ModelAndView mv) {
		
		mv.setViewName("member/myPage");
		
		return mv;
	}
	
	@RequestMapping("selectListTeam.te")
	public String selectListTeam() {
		
		
		return "member/myJoinTeam";
	}
	@RequestMapping("selectListCreateTeam.te")
	public String selectListCreateTeam() {
		
		
		return "member/myCreateTeam";
	}
	
	@RequestMapping("updateFormTeam.te")
	public String updateFormTeam() {
		
		
		return "member/updateTeam";
	}
	@RequestMapping("myTeamMemberList.te")
	public String myTeamMemberList() {
		
		
		return "member/myTeamMemberList";
	}
	@RequestMapping("myTeamMemberJoinList.te")
	public String myTeamMemberJoinList() {
		
		
		return "member/myTeamMemberJoinList";
	}

	
	
}
