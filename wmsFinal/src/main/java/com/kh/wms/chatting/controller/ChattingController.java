package com.kh.wms.chatting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.chatting.model.service.ChattingService;

@Controller
public class ChattingController {

	@Autowired
	private ChattingService chattingService;
}
