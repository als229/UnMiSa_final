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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.wms.board.model.service.BoardService;
import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Notice;
import com.kh.wms.board.model.vo.Reply;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="nomalList.bo")
	public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = boardService.nomalSelectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
	
		ArrayList<Board> list = boardService.nomalSelectList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("board/boardListView");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/boardEnrollForm";
	}
	
	@RequestMapping("nomalInsert.bo")
	public String insertBoard(Board b, MultipartFile upfile, HttpSession session, Model model) {
		
		if( !upfile.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(upfile,session);
			
			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/uploadFiles" + changeName);
		}
		
		int result = boardService.nomalInsertBoard(b);
			
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
	@RequestMapping(value="nomalDetail.bo")
	public ModelAndView nomalDetail(ModelAndView mv ,int boardNo,HttpSession session) {
		
		int result = boardService.nomalIncreaseCount(boardNo);
		if(result>0) {
			Board b = boardService.nomalSelectBoard(boardNo);
			if(b != null ){
				mv.addObject("b",b);
			}else {
				session.setAttribute("alertMsg", "조회실패");				
			}
		}else {
			session.setAttribute("alertMsg", "조회실패");
		}
		
		
		
		mv.setViewName("board/boardDetailView");
		
		return mv;
		
	}
	@RequestMapping(value="nomalUpdateForm.bo")
	public ModelAndView nomalUpdateForm(ModelAndView mv ,int boardNo) {
		
		Board b = boardService.nomalSelectBoard(boardNo);
		mv.addObject("b",b);
		mv.setViewName("board/boardUpdateForm");
		return mv;
	}
	
	@RequestMapping(value="nomalUpdate.bo")
	public ModelAndView nomalUpdate(ModelAndView mv, Board b, HttpSession session, MultipartFile reupfile ) {
		if(!reupfile.getOriginalFilename().equals("")) {
		if(b.getOriginName() != null) {
			new File(session.getServletContext().getRealPath(b.getChangeName())).delete(); //new File(**경로**) 안에 경로를 적어 삭제할 곳 을 적어준다
		}

		String changeName = saveFile(reupfile,session);
					
		// b라는 Board객체에 새로운 정보(원본명, 저장경로) 담기
		b.setOriginName(reupfile.getOriginalFilename());
		b.setChangeName("resources/uploadFiles/" + changeName);
		}
				
				
		int result = boardService.nomalUpdateBoard(b);
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 수정에 성공했습니다 ^!^");
			mv.setViewName("redirect:nomalDetail.bo?boardNo=" + b.getBoardNo());
		}else {
			session.setAttribute("alertMsg","게시글 수정에 실패했습니다.");
			mv.setViewName("redirect:nomalList.bo");
		}
		
		return mv;
	}
	@RequestMapping(value="nomalDelete.bo")
	public String nomalDelete(int boardNo) {
		
		int result = boardService.nomalDeleteBoard(boardNo);
		return "redirect:nomalList.bo";
	}
	@ResponseBody
	@RequestMapping(value="rlist.bo", produces="application/json; charset=utf-8" )
	public String ajaxNomalSelectReplyList(int bno) {
		return new Gson().toJson(boardService.nomalSelectReplyList(bno));
		
	}
	@ResponseBody
	@RequestMapping(value="rinsert.bo" )
	public String ajaxNomalInsertReply(Reply r) {
		return	boardService.nomalInsertReply(r) > 0 ? "success" : "fail";
	}
	
	
}
