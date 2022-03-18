package com.kh.wms.sportsPartner.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
		
		mv.addObject("p", p);
		
		mv.setViewName("sportsPartner/sportsPartnerMain");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerPurpose.sp")
	public ModelAndView sportsPartnerPurpose(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerPurpose");
		
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
		
		mv.addObject("p", p);
		
		mv.setViewName("sportsPartner/sportsPartnerDiaryWrite");
		
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
	public ModelAndView sportsPartnerDiaryList(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerDiaryList");
		
		return mv;
	}
	
	@RequestMapping(value="sportsPartnerDetail.sp")
	public ModelAndView sportsPartnerDetail(ModelAndView mv) {
		
		mv.setViewName("sportsPartner/sportsPartnerDetail");
		
		return mv;
	}
	
}
