package com.kh.wms.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.team.model.service.TeamService;

@Controller
public class TeamController {

	@Autowired
	private TeamService teamService;
}