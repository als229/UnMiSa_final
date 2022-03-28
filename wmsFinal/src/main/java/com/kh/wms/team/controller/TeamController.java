package com.kh.wms.team.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.service.MemberService;
import com.kh.wms.team.model.service.TeamServiceImpl;
import com.kh.wms.team.model.vo.Team;

@Controller
public class TeamController {

	@Autowired
	private TeamServiceImpl teamService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("serchWms.te")
	public ModelAndView serchWms(@RequestParam(value="serchWmsPage", defaultValue="1")int currentPage, ModelAndView mv) {
		
		int selectTeamCount = teamService.selectTeamCount();
		
		PageInfo pi = Pagination.getPageInfo(selectTeamCount, currentPage, 10, 5);
		
		ArrayList<Team> tList = teamService.selectTeamList(pi);
		
		for(Team t : tList) {
			if((t.getLoseCount() + t.getWinCount() + t.getDrawCount()) != 0) {
				t.setWinPercent((int)(((double)t.getWinCount()/(t.getLoseCount() + t.getWinCount() + t.getDrawCount())*100)));
			}else {
				t.setWinPercent(0);
			}
			
		}
		
		mv.addObject("tList",tList);
		mv.addObject("pi",pi);
		mv.setViewName("team/searchWms");
		
		return mv;
	}
	@RequestMapping("serchSelectWms.te")
	public ModelAndView serchSelectWms(@RequestParam(value="serchWmsPage", defaultValue="1")int currentPage, ModelAndView mv, String sidoName, String siGunGuName, String sportsName) {
		
		Map <String,Object> map = new HashMap<String, Object>();
		map.put("sidoName", sidoName);
		map.put("siGunGuName", siGunGuName);
		map.put("sportsName", sportsName);
		
		int serchSelectWmsCount = teamService.serchSelectWmsCount(map);
		
		PageInfo pi = Pagination.getPageInfo(serchSelectWmsCount, currentPage, 10, 5);

		ArrayList<Team> serchSelectWmsList = teamService.serchSelectWms(map, pi);
		
		mv.addObject("map1",map);
		mv.addObject("serchSelectWmsList",serchSelectWmsList);
		mv.addObject("pi",pi);
		
		mv.setViewName("team/searchSelectWms");
		
		return mv;
	}
	@RequestMapping("teamDetail.te")
	public ModelAndView selectTeamDetail(int teamNo, ModelAndView mv) {
		
		System.out.println(teamNo);
		Team t = memberService.memberSelectTeam(teamNo);
		
		mv.addObject("t",t);
		mv.setViewName("team/teamDetailView");
		return mv;
	}
	@RequestMapping("createTeamForm.te")
	public ModelAndView createTeamForm(ModelAndView mv) {
		

		mv.setViewName("team/createTeam");
		
		return mv;
	}
	@RequestMapping("gymReservation.te")
	public String gymReservationForm() {
		
		
		
		return "team/gymReservation";
	}
	@RequestMapping("insertTeam.te")
	public ModelAndView insertTeam(Team t, MultipartFile upfile, HttpSession session, ModelAndView mv) {
		
		String changeName = saveFile(upfile, session);

		t.setLogoOriginName(upfile.getOriginalFilename()); // 원본명
		t.setLogoChangeName("resources/uploadFiles/" + changeName);
		
		int result = teamService.insertTeam(t);
		
		if(result > 0) {
			mv.addObject("alertMsg", "팀 등록에 성공하셨습니다^^");
		}else {
			mv.addObject("alertMsg", "팀 등록에 실패하셨습니다 ^^");
		}
		mv.setViewName("team/searchWms");
		
		return mv;
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);

		String ext = originName.substring(originName.lastIndexOf("."));

		String changeName = currentTime + ranNum + ext;

		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

		try { // savePath 라는 경로에 changeName 이라는 이름으로 저장을 하겠따.
			upfile.transferTo(new File(savePath + changeName));
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	

	
}
