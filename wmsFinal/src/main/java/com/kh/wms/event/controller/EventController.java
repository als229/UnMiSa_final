package com.kh.wms.event.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.wms.event.model.service.EventService;
import com.kh.wms.event.model.vo.Attendance;
import com.kh.wms.member.model.vo.Member;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	
	@RequestMapping(value="eventMain.ev")
	public ModelAndView eventMain(ModelAndView mv, HttpSession session) {
		
		Member m = (Member)session.getAttribute("loginUser");
		
		
		if(m != null) {
			int memberNo= m.getMemberNo();
			ArrayList<Attendance> list = eventService.eventMain(memberNo);
			mv.addObject("list",list).setViewName("event/eventMain");
		}else {
			mv.setViewName("event/eventMain");
		}
			
		return mv;
	}
	
	
	@RequestMapping(value="qr.ev")
	public ModelAndView qrcode(HttpSession session) {
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd");
		Calendar time = Calendar.getInstance();
		String format_time1 = format1.format(time.getTime());
		
		SimpleDateFormat format2 = new SimpleDateFormat("HHmmss");
		String format_time2=format2.format(time.getTime());
		
		Member m = (Member)session.getAttribute("loginUser");
		
		int memberNo= m.getMemberNo();

		String content = "hyunbinPark Fucking Genius"+"memberNo="+memberNo+"date="+format_time1+"&"+format_time2;
		
		return new ModelAndView("qrcodeview","content",content);
	}	
	
	@RequestMapping(value="qr2.ev")
	public void qrcode2(HttpServletResponse response,HttpSession session) throws IOException {
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd");
		Calendar time = Calendar.getInstance();
		String format_time1 = format1.format(time.getTime());
		
		SimpleDateFormat format2 = new SimpleDateFormat("HHmmss");
		String format_time2=format2.format(time.getTime());

		Member m = (Member)session.getAttribute("loginUser");
		
		int memberNo= m.getMemberNo();

		String content = "hyunbinPark Fucking Genius"+"memberNo="+memberNo+"date="+format_time1+"&"+format_time2;
		response.setContentType("text/html; charset=utf-8"); // PrintWriter ????????? ???????????? ????????? ?????? ?????? ????????? ????????????. 
		PrintWriter out = response.getWriter(); 
		out.append(content);
	}
	
	
	@RequestMapping(value = "eventAttend.ev")
	public String editAttend(HttpServletRequest re,RedirectAttributes rttr, HttpSession session) throws ParseException  {
		
		String content = re.getParameter("content");
		
		String[] str = content.split("&");
		
		System.out.println(content);
		
		
		int now = Integer.parseInt(str[1]);
		
		Member m = (Member)session.getAttribute("loginUser");
		
		int memberNo= m.getMemberNo();
		
		String a ="00100";
		int aa = Integer.parseInt(a);
		
				
		if( now < 70000) {
			session.setAttribute("alertMsg", "???????????? 07:00 ?????? ???????????????");
			
		}else if(now > 71059) {
			session.setAttribute("alertMsg", "?????? ????????? ????????? ??????????????????. ?????? ?????? ???????????????");
			
			
			int result = eventService.insertAt(memberNo);
			
			if(result % 10 == 0) {
				eventService.increasePoint(memberNo);
			}
			
		}else {
			int result = eventService.insertAt(memberNo);
			
			if(result % 10 == 0) {
				eventService.increasePoint(memberNo);
			}
		}
		//???????????? 5??? ??? ?????? ?????? => ????????? bStart
//		Date lectureclass_start = sdf.parse(vo.getLectureclass_start());
//		Calendar cal = Calendar.getInstance();
//		cal.setTime(lectureclass_start );
//		cal.add(Calendar.MINUTE, -5);
//		String lectureclass_bStrat=sdf.format(cal.getTime());
//		Date bStart = sdf.parse(lectureclass_bStrat);
//
//		//???????????? 5??? ??? ?????? ?????? => ????????? aStart
//		Calendar cal2 = Calendar.getInstance();
//		cal2.setTime(lectureclass_start );
//		cal2.add(Calendar.MINUTE, 5);
//		
//		Date lectureclass_end = sdf.parse(vo.getLectureclass_end());
//		Date nowTime = sdf.parse(str[1]);
//		
//		int compareStartNow = bStart.compareTo(nowTime);
//		int compareEndNow = lectureclass_end.compareTo(nowTime);
//		int startCh = attendService.startCheck(vo);
//		rttr.addFlashAttribute("startCh", startCh);
//		if(compareStartNow >0 ) {
//			rttr.addFlashAttribute("warning", "????????????("+vo.getLectureclass_start()+") 5???????????? ????????? ???????????????.");
//			rttr.addFlashAttribute("warning1", "??????");
//		}else if (compareEndNow >0) {
//			System.out.println(lectureclass_start+"ddd"+lectureclass_end+"dd"+nowTime);
//			attendService.editAttend(vo);
//			System.out.println("???????????????,,,?");
//			rttr.addFlashAttribute("msg", "???????????? ?????? ??? ????????? ???????????????.");
//			rttr.addFlashAttribute("msg1", "??????");
//		}else {
//			rttr.addFlashAttribute("warning", "?????? ????????? ?????????????????????.");
//			rttr.addFlashAttribute("warning1", "??????");
//		}
		
//		
	
		return "redirect:eventMain.ev";
	}	
	
	
}
