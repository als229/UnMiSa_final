package com.kh.wms.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.board.model.service.BoardService;
import com.kh.wms.board.model.vo.Board;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	@RequestMapping("list.bo")
	public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue="1")int currentPage, ModelAndView mv) {
		
	
		int listCount = boardService.selectListCount();
	
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Board> list = boardService.selectList(pi);
		mv.setViewName("board/boardListView");
		return mv;
	}
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/boardEnrollForm";
	}
}
