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
		
		
		
		System.out.println("로그인 ");
		mv.setViewName("main");
		return mv;
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
	@RequestMapping("gymReservationForm.te")
	public String gymReservationForm() {
		
		
		return "member/myTeamMemberJoinList";
	}
	@RequestMapping("myPayment.me")
	public String myPayment() {
		
		
		return "member/myPaymentList";
	}
	@RequestMapping("myMatchSchedule.me")
	public String selectMyMatchSchedule() {
		
		
		return "member/myMatchSchedule";
	}
	


	
	
}
