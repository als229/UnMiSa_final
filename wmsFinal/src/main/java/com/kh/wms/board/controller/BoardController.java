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
			session.setAttribute("alertMsg", "????????? ?????? ??????");
			return "redirect:nomalList.bo";
		}else {
			model.addAttribute("errorMsg","????????? ?????? ??????");
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
				session.setAttribute("alertMsg", "????????????");				
			}
		}else {
			session.setAttribute("alertMsg", "????????????");
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
			new File(session.getServletContext().getRealPath(b.getChangeName())).delete(); //new File(**??????**) ?????? ????????? ?????? ????????? ??? ??? ????????????
		}

		String changeName = saveFile(reupfile,session);
					
		// b?????? Board????????? ????????? ??????(?????????, ????????????) ??????
		b.setOriginName(reupfile.getOriginalFilename());
		b.setChangeName("resources/uploadFiles/" + changeName);
		}
				
				
		int result = boardService.nomalUpdateBoard(b);
		if(result > 0) {
			session.setAttribute("alertMsg", "????????? ????????? ?????????????????? ^!^");
			mv.setViewName("redirect:nomalDetail.bo?boardNo=" + b.getBoardNo());
		}else {
			session.setAttribute("alertMsg","????????? ????????? ??????????????????.");
			mv.setViewName("redirect:nomalList.bo");
		}
		
		return mv;
	}
	@RequestMapping(value="nomalDelete.bo")
	public String nomalDelete(int boardNo,ModelAndView mv,HttpSession session) {
		
		int result = boardService.nomalDeleteBoard(boardNo);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "????????? ?????? ?????? ");
			mv.setViewName("redirect:nomalList.bo"); 
		}else {
			session.setAttribute("alertMsg","????????? ?????? ??????.");
			mv.setViewName("redirect:nomalList.bo");
		}
		
		return "redirect:nomalList.bo";
	}
	@ResponseBody
	@RequestMapping(value="rlist.bo", produces="application/json; charset=utf-8" )
	public String ajaxNomalSelectReplyList(int boardNo) {
		return new Gson().toJson(boardService.nomalSelectReplyList(boardNo));
		
	}
	@ResponseBody
	@RequestMapping(value="rinsert.bo" )
	public String ajaxNomalInsertReply(Reply r) {
		return	boardService.nomalInsertReply(r) > 0 ? "success" : "fail";
	}
	
	//???????????????
	
	
	@RequestMapping(value="mercenaryList.mbo")
	public ModelAndView mercenarySelectList(@RequestParam(value = "cpage", defaultValue="1") int currentPage, ModelAndView mv, @RequestParam(value = "boardSelect", defaultValue="2") int boardSelect) {
		if(boardSelect == 2) {
			
			int listCount = boardService.mercenarySelectListCount();
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Board> list = boardService.mercenarySelectList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("board/mercenaryListView");
		}else {
			int listCount = boardService.mercenaryChoiceListCount(boardSelect);
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Board> list = boardService.mercenaryChoiceList(pi,boardSelect);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("board/mercenaryListView");
		}
		
		return mv;
	}
	
	@RequestMapping("mercenaryEnrollForm.mbo")
	public String mercenaryEnrollForm() {
		return "board/mercenaryEnrollForm";
	}
	
	@RequestMapping("mercenaryInsert.mbo")
	public String mercenaryInsertBoard(Board b, MultipartFile upfile, HttpSession session, Model model) {
		System.out.println(b);
		if( !upfile.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(upfile,session);
			
			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/uploadFiles" + changeName);
		}
		
		int result = boardService.mercenaryInsertBoard(b);
			
		if(result > 0) { 
			session.setAttribute("alertMsg", "????????? ?????? ??????");
			return "redirect:mercenaryList.mbo";
		}else {
			model.addAttribute("errorMsg","????????? ?????? ??????");
			return null; 
		}
		
	}
	
	@RequestMapping(value="mercenaryDetail.mbo")
	public ModelAndView mercenaryDetail(ModelAndView mv ,int boardNo,HttpSession session) {
		
		int result = boardService.mercenaryIncreaseCount(boardNo);
		if(result>0) {
			Board b = boardService.mercenarySelectBoard(boardNo);
			if(b != null ){
				mv.addObject("b",b);
			}else {
				session.setAttribute("alertMsg", "????????????");				
			}
		}else {
			session.setAttribute("alertMsg", "????????????");
		}
		
		
		
		mv.setViewName("board/mercenaryDetailView");
		
		return mv;
		
	}
	@RequestMapping(value="mercenaryUpdateForm.mbo")
	public ModelAndView mercenaryUpdateForm(ModelAndView mv ,int boardNo) {
		
		Board b = boardService.mercenarySelectBoard(boardNo);
		mv.addObject("b",b);
		mv.setViewName("board/mercenaryUpdateForm");
		return mv;
	}
	
	@RequestMapping(value="mercenaryUpdate.mbo")
	public ModelAndView mercenaryUpdate(ModelAndView mv, Board b, HttpSession session, MultipartFile reupfile ) {
		if(!reupfile.getOriginalFilename().equals("")) {
		if(b.getOriginName() != null) {
			new File(session.getServletContext().getRealPath(b.getChangeName())).delete(); //new File(**??????**) ?????? ????????? ?????? ????????? ??? ??? ????????????
		}

		String changeName = saveFile(reupfile,session);
					
		// b?????? Board????????? ????????? ??????(?????????, ????????????) ??????
		b.setOriginName(reupfile.getOriginalFilename());
		b.setChangeName("resources/uploadFiles/" + changeName);
		}
				
				
		int result = boardService.mercenaryUpdateBoard(b);
		if(result > 0) {
			session.setAttribute("alertMsg", "????????? ????????? ?????????????????? ");
			mv.setViewName("redirect:mercenaryDetail.mbo?boardNo=" + b.getBoardNo());
		}else {
			session.setAttribute("alertMsg","????????? ????????? ??????????????????.");
			mv.setViewName("redirect:mercenaryList.mbo");
		}
		
		return mv;
		}
		@RequestMapping(value="mercenaryDelete.mbo")
		public String mercenaryDelete(int boardNo,HttpSession session,ModelAndView mv) {
			
			int result = boardService.mercenaryDeleteBoard(boardNo);
			if(result > 0) {
				session.setAttribute("alertMsg", "????????? ?????? ?????? ");
				mv.setViewName("redirect:mercenaryList.mbo"); 
			}else {
				session.setAttribute("alertMsg","????????? ?????? ??????.");
				mv.setViewName("redirect:mercenaryList.mbo");
			}
			
			return "redirect:mercenaryList.mbo";
		
	}
	
	@ResponseBody
	@RequestMapping(value="mrlist.mbo", produces="application/json; charset=utf-8" )
	public String ajaxMercenarySelectReplyList(int boardNo) {
		return new Gson().toJson(boardService.mercenarySelectReplyList(boardNo));
		
	}
	@ResponseBody
	@RequestMapping(value="mrinsert.mbo" )
	public String ajaxMercenaryInsertReply(Reply r) {
		return	boardService.mercenaryInsertReply(r) > 0 ? "success" : "fail";
	}
}
