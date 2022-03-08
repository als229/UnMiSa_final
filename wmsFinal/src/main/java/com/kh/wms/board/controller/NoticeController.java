package com.kh.wms.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.board.model.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="noticeList.no")
	public ModelAndView noticeList(ModelAndView mv) {
		
		mv.setViewName("notice/noticeList");
		
		return mv;
	}
	@RequestMapping(value="noticeDetail.no")
	public ModelAndView noticeDetail(ModelAndView mv) {
		
		mv.setViewName("notice/noticeDetail");
		
		return mv;
	}
	@RequestMapping(value="noticeEnrollForm.no")
	public ModelAndView noticeInsert(ModelAndView mv) {
		
		mv.setViewName("notice/noticeEnrollForm");
		
		return mv;
	}
}
