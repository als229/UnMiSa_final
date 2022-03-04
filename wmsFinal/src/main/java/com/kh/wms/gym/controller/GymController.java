package com.kh.wms.gym.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.gym.model.service.GymService;

@Controller
public class GymController {

	@Autowired
	private GymService gymService;
	
}
