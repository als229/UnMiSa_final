package com.kh.wms.chatting.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

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
import com.kh.wms.chatting.model.vo.ChattingMessage;
import com.kh.wms.chatting.model.vo.TeamChat;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.vo.Member;
@Controller
public class ChattingController {

	@Autowired
	private ChattingService chattingService;
	
	@RequestMapping(value="myChat.ct")
	public ModelAndView myChatList(ModelAndView mv, HttpSession session, @RequestParam(value = "cpage", defaultValue = "1") int currentPage) {
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		int listCount = chattingService.myChatListCount(memberNo);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<ChattingMessage> list = chattingService.myChatList(memberNo , pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("listCount", listCount);
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
	
	
	@ResponseBody
	@RequestMapping(value="chatRommAdd.ct", produces="application/json; charset=UTF-8", method=RequestMethod.GET)
	public String chatRommAdd(@RequestParam(value="members[]") List<Integer> members, @RequestParam(value="chatName") String chatName, HttpSession session) {
		
		members.add(((Member)session.getAttribute("loginUser")).getMemberNo());
		System.out.println(chatName);
		System.out.println(members);
		ChattingMessage cm = new ChattingMessage();
		String roomId = UUID.randomUUID().toString(); 
		cm.setRoomId(roomId);
		cm.setRoomName(chatName);
		int roomResult  = chattingService.chatRoomAdd(cm);
		if(roomResult > 0) {
			int memResult = chattingService.selectRoomNo(roomId);
			
			for(int i=0; i<members.size(); i++) {
				cm = new ChattingMessage();
				cm.setMemberNo(members.get(i));
				cm.setRoomNo(memResult);
				chattingService.chatMemberAdd(cm);
			}
		}
		
		return new Gson().toJson(roomId);
	}
	
	
	
	@RequestMapping(value="chatWindow.ct")
	public ModelAndView chatWindow(int roomNo, String roomName, ModelAndView mv) {
		
		ArrayList<ChattingMessage> clist = chattingService.selectMessageList(roomNo);
		ArrayList<Member> mlist = chattingService.selectRoomMembers(roomNo);
		
		mv.addObject("clist", clist);
		System.out.println(clist);
		mv.addObject("mlist", mlist);
		System.out.println(mlist);
		mv.addObject("count", mlist.size());
		mv.addObject("roomNo",roomNo);
		mv.addObject("roomName",roomName);
		mv.setViewName("chatting/chatWindow");
		return mv;
	}
	
	
	
	
	
}
