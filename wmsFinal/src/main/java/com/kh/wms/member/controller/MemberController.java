package com.kh.wms.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.service.MemberService;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.team.model.vo.Battle;
import com.kh.wms.team.model.vo.MemberTeam;
import com.kh.wms.team.model.vo.Team;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private JavaMailSender sender;
	
	// 호형존
	@RequestMapping(value="login.me", method=RequestMethod.POST)
	public ModelAndView login(ModelAndView mv, Member m , HttpSession session) throws IOException {
		
		Member loginUser = memberService.loginMember(m);

		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
			session.setAttribute("alertMsg", "로그인 성공");
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			session.setAttribute("alertMsg", "로그인 정보가 틀립니다.");
		}
			
		mv.setViewName("main");
		return mv;
	}
	
	// platForm 로그인 
	@RequestMapping(value="platFormLogin.me", method=RequestMethod.POST)
	public ModelAndView login(ModelAndView mv, HttpSession session, String authKey) {
		System.out.println(authKey);
		Member loginUser = memberService.loginMember(authKey);
		System.out.println(loginUser);
		session.setAttribute("alertMsg", "로그인 성공");
		session.setAttribute("loginUser", loginUser);
		mv.setViewName("main");
		
		return mv;
	}
	
	
	//logOut 기능
	@RequestMapping(value="logOut.me")
	public ModelAndView logOut(HttpSession session, ModelAndView mv) {
		
		session.invalidate();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@RequestMapping(value="loginForm.me")
	public String loginForm() {
		return "member/login";
	}
	
	// 회원가입 Form으로 이동
	@RequestMapping(value="choice.me")
	public String choiceEnroll() {
		return "member/choiceEnroll";
	}
	
	// 플랫폼마다 다르게 처리해서 뷰에 뿌려줌 1.기본 회원(GET) 
	@RequestMapping(value="enroll.me", method=RequestMethod.GET)
	public ModelAndView memberEnroll(ModelAndView mv, int platForm) {
		
		mv.addObject("platForm", platForm);
		mv.setViewName("member/memberEnroll");
		System.out.println(platForm);
		return mv;
	}
	
	// 플랫폼마다 다르게 처리해서 뷰에 뿌려줌 2.카카오 3.네이버 4.페이스북(POST)
	@RequestMapping(value="enroll.me", method=RequestMethod.POST)
	public ModelAndView memberEnroll(ModelAndView mv, int platForm, String account, String email) {
		
		mv.addObject("platForm", platForm);
		mv.addObject("account", account);
		mv.addObject("email", email);
		mv.setViewName("member/memberEnroll");
		System.out.println(platForm);
		System.out.println(account);
		System.out.println(email);
		
		return mv;
	}
	
	// id중복체크 기능
	@ResponseBody
	@RequestMapping(value="checkId.me", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	public String ajaxCheckId(String memberId) {
		int result = memberService.ajaxCheckId(memberId);
		
		return new Gson().toJson(result); 
	}
	
	// emmail 체크
	@ResponseBody
	@RequestMapping(value="kakaoEmailCheck.me", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	public String ajaxkakaoEmailCheck(String email) {
		
		int result = memberService.ajaxAuthEmail(email);
		System.out.println("result:::"+result);
		
		return new Gson().toJson(result);
	}
	
	// platForm authKey 확인 (가입여부)
	@ResponseBody
	@RequestMapping(value="platFormCheck.me", method=RequestMethod.POST)
	public String AjaxPlatFormCheck(String authKey) {
		
		int result = memberService.AjaxPlatFormCheck(authKey);
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 관민존
	@RequestMapping("myMatchSchedule.me")
	public ModelAndView selectMyMatchSchedule(@RequestParam(value="myJoinPage", defaultValue="1")int currentPage, ModelAndView mv, int teamNo) {
		int battleCount = memberService.battleScheduleCount(teamNo);
		Team t = memberService.memberSelectTeam(teamNo);
		
		PageInfo pi = Pagination.getPageInfo(battleCount, currentPage, 5, 10);
		
		ArrayList<Battle> bList = memberService.selectBattleSchedule(teamNo, pi);
		
		mv.addObject("bList",bList);
		mv.addObject("t",t);
		mv.setViewName("member/myMatchSchedule");
		return mv;
	}
	
	@RequestMapping("insertBattleResult.te")
	public ModelAndView insertBattleResult(ModelAndView mv, Battle bt) {
		
		int result = memberService.insertBattleResult(bt);
		
		if(result > 0) {
			mv.addObject("alertMsg","결과를 입력했습니다!");
		}else {
			mv.addObject("alertMsg", "결과 입력에 실패했습니다...");
		}
		
		mv.setViewName("member/myPage");
		return mv;
	}
	
	@RequestMapping(value="myPage.me")
	public ModelAndView selectMyPage(ModelAndView mv) {
		
		
		
		
		mv.setViewName("member/myPage");
		return mv;
	}
	
	@RequestMapping("acceptBattle.te")
	public ModelAndView acceptBattle(ModelAndView mv, int battleNo, int memberNo) {
		
		
		int result = memberService.acceptBattle(battleNo);
		
		if(result > 0) {
			mv.addObject("alertMsg","경기를 수락하셨습니다 !");
		}else {
			mv.addObject("alertMsg", "경기 수락에 실패했습니다!!");
		}
		
		mv.setViewName("member/myPage");
		return mv;
	}
	
	@RequestMapping("refuseBattle.te")
	public ModelAndView refuseBattle(ModelAndView mv, int battleNo, int memberNo) {
		
		int result = memberService.refuseBattle(battleNo);
		
		if(result > 0) {
			mv.addObject("alertMsg","경기를 거절하셨습니다 !");
		}else {
			mv.addObject("alertMsg", "경기 거절에 실패했습니다!!");
		}
		
		mv.setViewName("member/myPage");
		return mv;
	}
	
	// 내가 가입한 팀 리스트
	@RequestMapping("selectmyJoinTeamList.te")
	public ModelAndView selectmyJoinTeamList(@RequestParam(value="myJoinPage", defaultValue="1")int currentPage, ModelAndView mv, int memberNo) {
		
		int myJoinTeamCount = memberService.selectMyTeamCount(memberNo);
		
		PageInfo pi = Pagination.getPageInfo(myJoinTeamCount, currentPage, 5, 10);
		
		ArrayList<Team> myJoinTeamList = memberService.selectmyJoinTeamList(memberNo, pi);
		
		mv.addObject("myJoinTeamList", myJoinTeamList);
		mv.addObject("pi",pi);
		mv.setViewName("member/myJoinTeam");
		return mv;
	}
	
	// 팀 탈퇴하기
	@RequestMapping("quitTeam.te")
	public ModelAndView quitTeam(int teamNo,int memberNo, ModelAndView mv) {
		
		Map <String, Object> map =  new HashMap<String, Object>();
		map.put("teamNo", teamNo);
		map.put("memberNo", memberNo);
		
		int result = memberService.quitTeam(map);
		
		if(result > 0) {
			mv.addObject("alertMsg","팀 탈퇴에 성공하셨습니다.");
		}else {
			mv.addObject("alertMsg", "팀탈퇴에 실패하셨습니다.");
		}
		mv.setViewName("member/myPage");
		
		return mv;
	}
	
	// 내가 만든팀 
	@RequestMapping("selectListCreateTeam.te")
	public ModelAndView selectListCreateTeam(@RequestParam(value="myCreateTeamPage", defaultValue="1")int currentPage, int memberNo, ModelAndView mv) {
		
		int myCreateTeamCount = memberService.selectMyCreateTeamCount(memberNo);
		
		PageInfo pi = Pagination.getPageInfo(myCreateTeamCount, currentPage, 5, 10);
		
		ArrayList<Team> myCreateTeamList = memberService.selectListCreateTeam(memberNo,pi);
		
		mv.addObject("pi",pi);
		mv.addObject("myCreateTeamList",myCreateTeamList);
		mv.setViewName("member/myCreateTeam");
		
		return mv;
	}
	
	// 팀 관리하기
	@RequestMapping("updateFormTeam.te")
	public ModelAndView updateFormTeam(ModelAndView mv, int teamNo) {

		Team t = memberService.memberSelectTeam(teamNo);
		
		mv.addObject("t",t);
		mv.setViewName("member/updateTeam");
		return mv;
	}
	
	// 팀 수정하기 
	@RequestMapping("updateTeam.te")
	public ModelAndView updateTeam(Team team, MultipartFile reupfile, HttpSession session, ModelAndView mv) {
		
		if(!reupfile.getOriginalFilename().equals("") || reupfile.getOriginalFilename()==team.getLogoOriginName()) {
			
			if(team.getLogoOriginName() != null) {
				new File(session.getServletContext().getRealPath(team.getLogoChangeName())).delete();
			}
			
			// 새로 넘어온 첨부파일 서버 업로드 시키기
			// saveFile 메서드를 통해 현재 넘어온 첨부파일을 서버에 저장시키자
			String changeName = teamSaveFile(reupfile, session);
			
			// b라는 Board 객체에 새로운 정보(원본명, 저장 경로) 담기
			team.setLogoOriginName(reupfile.getOriginalFilename());
			team.setLogoChangeName("resources/uploadFiles/" + changeName);
			
		}
		
		int result = memberService.updateTeam(team);
		
		if(result > 0) {
			mv.addObject("alertMsg", "수정에 성공하셨습니다!!");
		}else {
			mv.addObject("alertMsg","수정에 실패했습니다...");
		}
		
		Team t = memberService.memberSelectTeam(team.getTeamNo());
		
		mv.addObject("t",t);
		mv.setViewName("member/updateTeam");
		return mv;
	}
	
	// 우리 팀 멤버 리스트 가져오기
	@RequestMapping("myTeamMemberList.te")
	public ModelAndView myTeamMemberList(@RequestParam(value="cPage", defaultValue="1")int currentPage, ModelAndView mv, int teamNo) {
		Team t = memberService.memberSelectTeam(teamNo);
		int myCreateTeamCount = memberService.myTeamMemberListCount(teamNo);
		PageInfo pi = Pagination.getPageInfo(myCreateTeamCount, currentPage, 10, 5);
		
		ArrayList<Member> mtList = memberService.myTeamMemberList(teamNo,pi);
		
		mv.addObject("pi",pi);
		mv.addObject("mtList",mtList);
		mv.addObject("t",t);
		mv.setViewName("member/myTeamMemberList");
		return mv;
	}
	
	// 가입 신청 수락하기
	@RequestMapping("insertTeamMember.te")
	public ModelAndView insertMember( ModelAndView mv, int memberNo, int teamNo) {

		
		Team t = memberService.memberSelectTeam(teamNo);
		Map <String, Object> map =  new HashMap<String, Object>();
		map.put("memberNo", memberNo);
		map.put("teamNo", teamNo);
		
		int result = memberService.insertTeamMember(map);
		
		if(result > 0) {
			
			mv.addObject("alertMsg", "팀원 등록에 성공하셨습니다!!!");
		}else {
			mv.addObject("alertMsg", "팀원등록에 성공하셨습니다 !!!!");
		}
		mv.addObject("t",t);
		mv.setViewName("redirect:myTeamMemberJoinList.te?teamNo="+teamNo);
		return mv;
	}
	
	// 가입 신청 관리하기
	@RequestMapping("myTeamMemberJoinList.te")
	public ModelAndView myTeamMemberJoinList(@RequestParam(value="cPage", defaultValue="1")int currentPage, ModelAndView mv, int teamNo) {
		
		
		Team t = memberService.memberSelectTeam(teamNo);
		
		int memberCount = memberService.memberCount(teamNo);

		PageInfo pi = Pagination.getPageInfo(memberCount, currentPage, 5, 10);
		ArrayList <MemberTeam> mtList = memberService.myTeamMemberJoinList(teamNo, pi);
		
		mv.addObject("pi",pi);
		mv.addObject("mtList",mtList);
		mv.addObject("t",t);
		mv.setViewName("member/myTeamMemberJoinList");
		
		return mv;
	}
	
	// 경기 신청 관리 
	@RequestMapping("battleApplyList.te")
	public ModelAndView battleApplyList(@RequestParam(value="cPage", defaultValue="1")int currentPage, ModelAndView mv, int teamNo) {
		
		int battleCount = memberService.battleCount(teamNo);
		Team t = memberService.memberSelectTeam(teamNo);
		
		PageInfo pi = Pagination.getPageInfo(battleCount, currentPage, 5, 10);
		
		ArrayList<Battle> bList = memberService.selectBattleApplyList(teamNo, pi);
		
		mv.addObject("bList",bList);
		mv.addObject("t",t);
		mv.setViewName("member/battleApplyList");
		return mv;
	}
	
	// 대전 신청하기
	@RequestMapping("applyBattle.te")
	public ModelAndView applyBattle( ModelAndView mv, Battle bt) {
		
		Team t = memberService.memberSelectTeam(bt.getHomeTeamNo());
		
		
		int result = memberService.applyBattle(bt);
		
		if(result > 0) {
			mv.addObject("alertMsg", "신청에 성공하셨습니다!!");
		}else {
			mv.addObject("alertMsg", "신청에 실패하셨습니다...");
		}
		
		mv.addObject("t",t);
		mv.setViewName("redirect:teamDetail.te?teamNo=" + bt.getHomeTeamNo());
		return mv;
	}
	
	// 팀 가입 신청하기
	@RequestMapping("teamJoinApply.te")
	public ModelAndView applyTeamJoin(ModelAndView mv, MemberTeam tm) {
		
		int teamNo = tm.getTeamNo();
		Team t = memberService.memberSelectTeam(teamNo);

		
		int result = memberService.applyTeamJoin(tm);
		
		if(result > 0) {
			mv.addObject("alertMsg","신청에 성공하셨습니다!!");
		}else {
			mv.addObject("alertMsg", "신청에 실패했습니다...");
		}
		
		mv.addObject("t",t);
		mv.setViewName("redirect:teamDetail.te?teamNo=" + tm.getTeamNo());
		return mv;
	}
	
	// 팀 넘버로 셀렉해오는 메서드
	@RequestMapping("memberSelectTeam.te")
	public ModelAndView memberSelectTeam(ModelAndView mv, int teamNo) {
		
		Team t = memberService.memberSelectTeam(teamNo);
		
		mv.addObject("t",t);
		
		return mv;
	}
	
	
	public String teamSaveFile(MultipartFile reupfile, HttpSession session) {
		
		String originName = reupfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);

		String ext = originName.substring(originName.lastIndexOf("."));

		String changeName = currentTime + ranNum + ext;

		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

		try { // savePath 라는 경로에 changeName 이라는 이름으로 저장을 하겠따.
			reupfile.transferTo(new File(savePath + changeName));
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}


	
	
}
