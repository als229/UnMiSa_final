package com.kh.wms.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.wms.team.model.service.TeamServiceImpl;

@Controller
public class TeamController {

	@Autowired
	private TeamServiceImpl teamService;
	
	@RequestMapping("serchWms.te")
	public String serchWms() {
		
		
		
		return "team/searchWms";
	}
	@RequestMapping("teamDetail.te")
	public String selectTeamDetail() {
		
		
		
		return "team/teamDetailView";
	}
	@RequestMapping("createTeamForm.te")
	public String createTeamForm() {
		
		
		
		return "team/createTeam";
	}
	@RequestMapping("gymReservation.te")
	public String gymReservationForm() {
		
		
		
		return "team/gymReservation";
	}

	
}
