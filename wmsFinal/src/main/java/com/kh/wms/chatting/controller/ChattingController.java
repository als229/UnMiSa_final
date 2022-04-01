package com.kh.wms.chatting.controller;

import java.time.LocalDate;
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
import com.kh.wms.member.model.service.MemberService;
import com.kh.wms.member.model.vo.Member;
@Controller
public class ChattingController {

	@Autowired
	private ChattingService chattingService;
	
	@Autowired
	private MemberService memberService;
	
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
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		members.add(memberNo);
		ChattingMessage cm = new ChattingMessage();
		String roomId = UUID.randomUUID().toString(); 
		cm.setRoomId(roomId);
		cm.setRoomName(chatName);
		chattingService.chatRoomAdd(cm);
		int	roomNo = chattingService.selectRoomNo(roomId);

		for(int i=0; i<members.size(); i++) {
			cm = new ChattingMessage();
			cm.setMemberNo(members.get(i));
			cm.setRoomNo(roomNo);
			chattingService.chatMemberAdd(cm);
		}
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(roomNo);
		list.add(chatName);
		ChattingMessage createCm = new ChattingMessage();
		
		LocalDate now = LocalDate.now();
		createCm.setMemberNo(memberNo);
		createCm.setMessage(" ");
		createCm.setRoomNo(roomNo);
		createCm.setMessageTime(now+"");
		chattingService.addChatMessage(createCm);
		
		
		return new Gson().toJson(list);
	}
	
	
	
	@RequestMapping(value="chatWindow.ct")
	public ModelAndView chatWindow(int roomNo, String roomName, ModelAndView mv) {
		
		ArrayList<ChattingMessage> clist = chattingService.selectMessageList(roomNo);
		ArrayList<Member> mlist = chattingService.selectRoomMembers(roomNo);
		
		mv.addObject("clist", clist);
		mv.addObject("mlist", mlist);
		mv.addObject("count", mlist.size());
		mv.addObject("roomNo",roomNo);
		mv.addObject("roomName",roomName);
		mv.setViewName("chatting/chatWindow");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="adminChat.ct", produces="application/json; charset=UTF-8", method=RequestMethod.GET)
	public String adminChat(HttpSession session) {
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		String memberName = ((Member)session.getAttribute("loginUser")).getMemberName();
		ChattingMessage cm = new ChattingMessage();
		String roomId = UUID.randomUUID().toString(); 
		ArrayList<Integer> members = new ArrayList<>();
		members.add(memberNo);
		cm.setRoomId(roomId);
		cm.setRoomName(memberName+"님 1:1 문의");
		Member admin = memberService.adminSelct("admin");
		members.add(admin.getMemberNo());
		chattingService.chatRoomAdd(cm);
		int roomNo = chattingService.selectRoomNo(roomId);
			
		for(int i=0; i<members.size(); i++) {
			cm = new ChattingMessage();
			cm.setMemberNo(members.get(i));
			cm.setRoomNo(roomNo);
			chattingService.chatMemberAdd(cm);
		}
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(roomNo);
		list.add(memberName+"님 1:1 문의");
		
		ChattingMessage createCm = new ChattingMessage();
		
		LocalDate now = LocalDate.now();
		createCm.setMemberNo(memberNo);
		createCm.setMessage(" ");
		createCm.setRoomNo(roomNo);
		createCm.setMessageTime(now+"");
		chattingService.addChatMessage(createCm);
		
		return new Gson().toJson(list);
	}
	
	
	@ResponseBody
	@RequestMapping(value="leaderChatAdd.ct", produces="application/json; charset=UTF-8", method=RequestMethod.GET)
	public String leaderChatAdd(HttpSession session, int memberNo, int awayMemberNo, String chatName) {
		ChattingMessage cm = new ChattingMessage();
		String roomId = UUID.randomUUID().toString(); 
		ArrayList<Integer> members = new ArrayList<>();
		
		members.add(memberNo);
		members.add(awayMemberNo);
		cm.setRoomId(roomId);
		cm.setRoomName(chatName);
		chattingService.chatRoomAdd(cm);
		int roomNo = chattingService.selectRoomNo(roomId);
		for(int i=0; i<members.size(); i++) {
			cm = new ChattingMessage();
			cm.setMemberNo(members.get(i));
			cm.setRoomNo(roomNo);
			chattingService.chatMemberAdd(cm);
		}
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(roomNo);
		list.add(chatName);
		
		ChattingMessage createCm = new ChattingMessage();
		
		LocalDate now = LocalDate.now();
		createCm.setMemberNo(memberNo);
		createCm.setMessage(" ");
		createCm.setRoomNo(roomNo);
		createCm.setMessageTime(now+"");
		chattingService.addChatMessage(createCm);
		
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value="exitChat.ct", produces="application/json; charset=UTF-8", method=RequestMethod.GET)
	public String exitChat( HttpSession session, int roomNo, int count) {

		int result = 0;
		ChattingMessage cm = new ChattingMessage();
		cm.setMemberNo(((Member)session.getAttribute("loginUser")).getMemberNo());
		
		if(count > 1) {
			cm.setRoomNo(roomNo);
			result = chattingService.exitChat(cm);
		}else {
			result = chattingService.exitRoom(roomNo);
		}
		
		
		
		
		return new Gson().toJson(result);
	}
	
	
}
