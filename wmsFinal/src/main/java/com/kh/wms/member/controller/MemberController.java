package com.kh.wms.member.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.Format;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@Autowired
	private JavaMailSender sender;
	
	// 호형존
	@RequestMapping(value="login.me")
	public ModelAndView googleAuth(ModelAndView mv, Member m , HttpSession session) throws IOException {
		
		System.out.println("로그인");
		System.out.println(m);
		
		Member loginUser = memberService.loginMember(m);

		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
			// 로그인 성공
			session.setAttribute("alertMsg", "로그인 성공");
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			// 로그인 실패 !!!
			mv.addObject("alertMsg", "로그인 정보가 틀립니다.");
		}
		
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
	
	// 플랫폼마다 다르게 처리해서 뷰에 뿌려줌 1.기본 회원 2.카카오 3.네이버 4.페이스북
	@RequestMapping(value="enroll.me")
	public ModelAndView memberEnroll(ModelAndView mv, int platForm) {
		
		mv.addObject("platForm", platForm);
		mv.setViewName("member/memberEnroll");
		System.out.println(platForm);
		return mv;
	}
	
	
	// id중복체크 기능
	@ResponseBody
	@RequestMapping(value="checkId.me", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	public String ajaxCheckId(String memberId) {
		int result = memberService.ajaxCheckId(memberId);
		
		return new Gson().toJson(result); 
	}
	
	@RequestMapping(value="insert.me", method=RequestMethod.POST)
	public ModelAndView insertMember(ModelAndView mv, Member m, int platForm ) {
		
		
		m.setBirthDate(m.getYyyy()+"-"+m.getDd()+"-"+m.getMm());
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
		m.setMemberPwd(encPwd);
		
		int result = memberService.insertMember(m);
		
		if(result > 0) {
			mv.addObject("alertMsg", "정상적으로 회원가입 됬습니다. ");
		}else {
			mv.addObject("alertMsg", "회원가입 실패. ");
		}
		mv.setViewName("main");
		
		return mv;
	}
	
	// email 인증
	@ResponseBody
	@RequestMapping(value="authEmail.me", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	public String ajaxAuthEmail(String email, HttpServletRequest request) throws MessagingException {
		System.out.println("메일인증 실행");
		int check = memberService.ajaxAuthEmail(email);
		JsonObject json = new JsonObject();
		if(check == 0) {
			Random r = new Random();
		    int n = r.nextInt(100000);
		    Format f = new DecimalFormat("000000");
		    String authNumber = f.format(n);

		    MimeMessage message = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setTo(email);
			helper.setSubject("운미사 인증 번호 발송 입니다.");
			helper.setText("인증번호 : " + authNumber);
			sender.send(message);
			
			json.addProperty("authNumber", authNumber);
			
		}
		
		json.addProperty("check", check);
		
		return new Gson().toJson(json);
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
