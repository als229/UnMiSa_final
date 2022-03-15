package com.kh.wms.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.board.model.service.NoticeService;
import com.kh.wms.board.model.vo.Notice;
import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="noticeList.no")
	public ModelAndView noticeList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		int listCount = noticeService.selectListCount();
		
		
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		mv.addObject("list", list).addObject("pi",pi).setViewName("notice/noticeList");
		
		
		return mv;
	}
	
	@RequestMapping(value="noticeDetail.no")
	public ModelAndView noticeDetail(ModelAndView mv, int noticeNo) {
		
		
		int result = noticeService.increaseCount(noticeNo);
		
		if(result>0) {
			Notice n = noticeService.noticeDetail(noticeNo);
			mv.addObject("n",n).setViewName("notice/noticeDetail");
		}else {
			mv.addObject("alertMsg", "게시글 조회 실패ㅜ");
			mv.setViewName("redirect:noticeList.no");
		}
		return mv;
	}
	
	
	@RequestMapping(value="noticeEnrollForm.no")
	public ModelAndView noticeInsert(ModelAndView mv) {
		
		mv.setViewName("notice/noticeEnrollForm");
		
		return mv;
	}
	@RequestMapping(value="insert.no")
	public ModelAndView insertNotice(Notice n, MultipartFile upfile, HttpSession session, ModelAndView mv) {
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile,session);
			
			n.setOriginName(upfile.getOriginalFilename());
			n.setChangeName("resources/uploadFiles/"+ changeName);
		}
		
		int result = noticeService.insertNotice(n);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 작성 성공!");
			mv.setViewName("redirect:noticeList.no");
		}else {
			session.setAttribute("alertMsg", "게시글 작성 실패ㅜ");
			mv.setViewName("redirect:noticeList.no");
		}
		return mv;
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) { // 실제 넘어온파일을 이름을 변경해서 서버에 업로드하는 역할 밖에 하지않음
		
		// 파일 명 수정 작업 후 서버에 업로드 시키기("bono.png" => 2022022115374012135.png)
		String originName = upfile.getOriginalFilename(); // 첨부파일의 원본명("bono.png")
					
		// "20220221153740"(년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		// 13232(5자리 랜덤값)
		int ranNum = (int)(Math.random() * 90000 + 10000);
		// 확장자
		String ext = originName.substring(originName.lastIndexOf("."));
					
		String changeName = currentTime + ranNum + ext;
					
		// 업로드 시키고자 하는 폴더의 물리적인 경로 알아내기
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
					
		try {
			upfile.transferTo(new File(savePath + changeName));
			// transferTo 내가 지정한 경로에 선택한 이미지 파일이. 복사 
		} catch (IOException e) {
			e.printStackTrace();
		}
		return changeName;
	}
	
	
	@RequestMapping(value="noticeFAQ.no")
	public ModelAndView noticeFAQ(ModelAndView mv) {
		
		mv.setViewName("notice/noticeFAQ");
		
		return mv;
	}
	@RequestMapping(value="noticeDelete.no")
	public ModelAndView noticeDelete(ModelAndView mv, HttpSession session,int noticeNo ) {
		
		int result = noticeService.noticeDelete(noticeNo);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 작성 성공!");
			mv.setViewName("redirect:noticeList.no");
		}else {
			session.setAttribute("alertMsg", "게시글 작성 실패ㅜ");
			mv.setViewName("redirect:noticeList.no");
		}
		
		return mv;
	}
	
	
	@RequestMapping(value="noticeUpdateForm.no")
	public ModelAndView noticeUpdate(ModelAndView mv, HttpSession session,int noticeNo ) {
		
		Notice n = noticeService.noticeUpdateForm(noticeNo);
		
		mv.addObject("n",n).setViewName("notice/noticeUpdateForm");
		
		return mv;
	}
	
	
	
	
}
