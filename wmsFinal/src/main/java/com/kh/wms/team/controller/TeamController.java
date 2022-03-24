package com.kh.wms.team.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.team.model.service.TeamServiceImpl;
import com.kh.wms.team.model.vo.Team;

@Controller
public class TeamController {

	@Autowired
	private TeamServiceImpl teamService;
	
	
	@RequestMapping("serchWms.te")
	public String serchWms() {
	// 1. 디비에서 주소 정보를 전부 가져옴
	// 2. 
		
		
		return "team/searchWms";
	}
	@RequestMapping("teamDetail.te")
	public String selectTeamDetail() {
		
		
		
		return "team/teamDetailView";
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
