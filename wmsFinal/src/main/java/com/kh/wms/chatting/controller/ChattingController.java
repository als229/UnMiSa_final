package com.kh.wms.chatting.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.wms.chatting.model.service.ChattingService;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.vo.Member;

@Controller
public class ChattingController {

	@Autowired
	private ChattingService chattingService;
	
	@RequestMapping(value="myChat.ct")
	public ModelAndView myChatList(ModelAndView mv, HttpSession session) {
		
		
		mv.setViewName("chatting/myChat");
		
		return mv;
	}
	
	@RequestMapping(value="chatAdd.ct")
	public ModelAndView addForm(ModelAndView mv, HttpSession session) {
		String bossId = ((Member)session.getAttribute("loginUser")).getMemberId();
		int listCount = chattingService.teamChatCount(bossId);

		ArrayList<TeamChat> list = chattingService.teamChatList(bossId);
		mv.addObject("list",list);
		mv.addObject("listCount",listCount);
		mv.setViewName("chatting/addForm");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="teamMember.ct", produces="application/json; charset=UTF-8", method=RequestMethod.GET)
	public String teamMember(int teamNo) {
		
		ArrayList<TeamChat> list = chattingService.teamMember(teamNo);
		
		return new Gson().toJson(list);
	}
	
}
