package com.kh.wms.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.event.model.service.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
}
