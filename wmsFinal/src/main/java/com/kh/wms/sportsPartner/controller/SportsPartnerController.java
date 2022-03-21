package com.kh.wms.sportsPartner.controller;

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

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.sportsPartner.model.service.SportsPartnerService;
import com.kh.wms.sportsPartner.model.vo.Purpose;
import com.kh.wms.sportsPartner.model.vo.SportsDiary;

@Controller
public class SportsPartnerController {

	@Autowired
	private SportsPartnerService sp;
	

	
	@RequestMapping(value="sportsPartnerMain.sp")
	public ModelAndView sportsPartnerMain(ModelAndView mv, HttpSession session) {
			
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		// 세션에서 로그인유저 갖고와서 멤버넘버를 다운캐스팅하고(멤벼형으로) 멤버형의 멤버넘버를 인트형 겟으로 갖고옴
		
		Purpose p = sp.selectPurpose(memberNo);
		// 멤버넘버를 식별자 역할로 매개변수에 같이 서비스로 넘김
		
		ArrayList<SportsDiary> list = sp.selectDiary(memberNo);
		
		mv.addObject("p", p);
		mv.addObject("list", list);
	
		mv.setViewName("sportsPartner/sportsPartnerMain");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerPurpose.sp")
	public ModelAndView sportsPartnerPurpose(ModelAndView mv) {
		
		mv.setViewName("redirect:sportsPartnerMain.sp");
		
		return mv;
	}
	
	@RequestMapping("insert.pp")
	public ModelAndView insertPurpose(Purpose p, ModelAndView mv, HttpSession session) {
		
		int result = sp.insertPurpose(p);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "목표설정 성공!");
			mv.setViewName("redirect:sportsPartnerMain.sp");
			
			
		} else {
			
			
		}
		
		return mv;
	}
	
	
	@RequestMapping(value="sportsPartnerDiaryWrite.sp")
	public ModelAndView sportsPartnerDiaryWrite(ModelAndView mv, HttpSession session) {
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		// 세션에서 로그인유저 갖고와서 멤버넘버를 다운캐스팅하고(멤벼형으로) 멤버형의 멤버넘버를 인트형 겟으로 갖고옴
		
		Purpose p = sp.selectPurpose(memberNo);
		// 멤버넘버를 식별자 역할로 매개변수에 같이 서비스로 넘김
		
		
		SportsDiary sd = sp.check(memberNo);

		
		if(sd == null) {
			
			mv.addObject("p", p);
		
			mv.setViewName("sportsPartner/sportsPartnerDiaryWrite");
			
		} else {
			
			mv.setViewName("redirect:sportsPartnerMain.sp");
			session.setAttribute("alertMsg", "오늘은 이미 일기를 작성하였습니당!");
		}
		
		
		return mv;
	}
	
	
	public String saveFile(MultipartFile upfile, HttpSession session) {

		// 파일명 가져와보리기
		String originName = upfile.getOriginalFilename();
		// 년월일시분초 가져오기
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		// 5자리 랜덤값 가져오기
		int ranNum = (int) (Math.random() * 90000 + 10000);
		// 확장자 빼내기
		String ext = originName.substring(originName.lastIndexOf("."));
		// 합체
		String changeName = currentTime + ranNum + ext;

		// 업로드 시키고자 하는 폴더의 물리적인 경로
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
		
	}
	
	@RequestMapping("insert.sd")
	public ModelAndView insertSportsDiary(Purpose p, SportsDiary sd, MultipartFile upfile, ModelAndView mv, HttpSession session) {
		
		
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session);
			
			sd.setDiaryPhoto(upfile.getOriginalFilename());
			sd.setDiaryPhoto("resources/uploadFiles/" + changeName);
			
		}
		
		// 넘어온 첨부파일이 없을경우 b : 제목, 작성자, 내용
		// 넘어온 첨부파일이 있을경우 b : 제목, 작성자, 내용 + 파일원본명 , 파일저장경로
		
		int result1 = sp.insertDiary(sd);
		int result2 = sp.updatePurpose(p);
		
		if(result1 > 0) { // 성공 => 게시글 리스트 페이지로 이동
			
			session.setAttribute("alertMsg", "일기 작성 성공");
			mv.setViewName("redirect:sportsPartnerMain.sp");
			
		} else {
			
			session.setAttribute("errorMsg", "작성 실패");
			
		}
		
		
		
		return mv;
	}
	
	
	@RequestMapping(value="sportsPartnerDiaryList.sp")
	public ModelAndView sportsPartnerDiaryList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session) {
		
		int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		// 세션에서 로그인유저 갖고와서 멤버넘버를 다운캐스팅하고(멤벼형으로) 멤버형의 멤버넘버를 인트형 겟으로 갖고옴
		int listCount = sp.selectListCount();
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<SportsDiary> list = sp.selectDiary2(memberNo, pi);
	
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		
		mv.setViewName("sportsPartner/sportsPartnerDiaryList");
		
		return mv;
	}
	
	@RequestMapping(value="detail.sd")
	public ModelAndView sportsPartnerDetail(ModelAndView mv, int diaryNo) {
		
		System.out.println(diaryNo);
		SportsDiary sd = sp.detailDiary(diaryNo);

		mv.addObject("sd", sd);
		
		System.out.println(sd);
		mv.setViewName("sportsPartner/sportsPartnerDetail");
		
		return mv;
	}
	
}
