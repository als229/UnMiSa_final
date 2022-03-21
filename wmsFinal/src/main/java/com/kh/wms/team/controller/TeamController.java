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
		
		ArrayList<Address> aList = teamService.selectAddressList();
		ArrayList<String> siDoList = new ArrayList<String>();
		ArrayList<String> guList = new ArrayList<String>();
		ArrayList<String> siGunList = new ArrayList<String>();
		for(int i = 0; i < aList.size(); i++) {
			
			if(i != aList.size()-1) {
				
				if(!aList.get(i).getSiDo().equals(aList.get(i+1).getSiDo())) {
					
					siDoList.add(aList.get(i).getSiDo());
				}
			}
			if(aList.get(i).getGu() != null) {
				guList.add(aList.get(i).getGu());
			}
			if(aList.get(i).getSiGun() != null) {
				siGunList.add(aList.get(i).getSiGun());
			}
		}
		siDoList.add("제주특별시");
		
		mv.addObject("siGunList",siGunList);
		mv.addObject("guList",guList);
		mv.addObject("siDoList",siDoList);
		mv.addObject("aList",aList);
		mv.setViewName("team/createTeam");
		
		return mv;
	}
	@RequestMapping("gymReservation.te")
	public String gymReservationForm() {
		
		
		
		return "team/gymReservation";
	}

	
}
