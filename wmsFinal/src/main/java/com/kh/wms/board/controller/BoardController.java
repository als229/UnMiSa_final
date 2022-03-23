package com.kh.wms.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.board.model.service.BoardService;
import com.kh.wms.board.model.vo.Board;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="list.bo")
	public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = boardService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
	
		ArrayList<Board> list = boardService.selectList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("board/boardListView");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/boardEnrollForm";
	}
	/*
	@RequestMapping("insert.bo")
	public String insertBoard(Board b, MultipartFile upfile, HttpSession session, Model model) {
		
		if( !upfile.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(upfile,session);
			
			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/uploadFiles" + changeName);
		}
		
		int result = boardService.insertBoard(b);
			
		if(result > 0) { 
			session.setAttribute("alertMsg", "게시글 작성 성공");
			return "redirect:list.bo";
		}else {
			model.addAttribute("errorMsg","게시글 작성 실패");
			return null; 
		}
		
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		}  catch (IOException e) {
			e.printStackTrace();
		}
		return changeName;
	}
	*/
}
