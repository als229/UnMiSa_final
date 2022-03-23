package com.kh.wms.team.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.common.model.vo.Address;
import com.kh.wms.team.model.service.TeamServiceImpl;

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

	
}
