package com.kh.wms.sportsPartner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.sportsPartner.model.service.SportsPartnerService;

@Controller
public class SportsPartnerController {

	@Autowired
	private SportsPartnerService sp;
	
}
