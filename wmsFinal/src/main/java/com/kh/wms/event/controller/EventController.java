package com.kh.wms.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.event.model.service.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	
	@RequestMapping(value="eventMain.ev")
	public ModelAndView eventMain(ModelAndView mv) {
		
		mv.setViewName("event/eventMain");
		
		return mv;
	}
}
