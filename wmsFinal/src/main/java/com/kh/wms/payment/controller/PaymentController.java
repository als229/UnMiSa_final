package com.kh.wms.payment.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.common.template.Pagination;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.payment.model.service.PaymentService;
import com.kh.wms.payment.model.vo.Payment;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	
	@RequestMapping(value="markMarket.pm")
	public ModelAndView markMarketList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = paymentService.marketListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 6);
		
		
		ArrayList<Payment> list = paymentService.marketList(pi);
		ArrayList<Payment> list2 = paymentService.marketList2();
		
		
		mv.addObject("list",list).addObject("pi",pi).addObject("list2", list2).setViewName("markMarket/markMarketList");
		
		return mv;
	}
	@RequestMapping(value="paymentPoint.pm")
	public ModelAndView paymentPoint(Payment p, ModelAndView mv,HttpSession session) {
		int result = paymentService.paymentPoint(p);
		
		if(result > 0) {
			int result2 = paymentService.buyMark(p);
			if(result2>0){
				session.setAttribute("alertMsg", "마크 구매 성공!");
				mv.setViewName("redirect:markMarket.pm");
			}else {
				session.setAttribute("alertMsg", "마크 구매 실패ㅜ");
				mv.setViewName("redirect:markMarket.pm");
			}
		}else {
			session.setAttribute("alertMsg", "마크 결제내역 추가 실패");
			mv.setViewName("redirect:markMarket.pm");
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("kakaopay.pm")
	public String kakaopay(Payment p) {
		
		try {
			
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection serverConnection = (HttpURLConnection) address.openConnection();
			serverConnection.setRequestMethod("POST");
			serverConnection.setRequestProperty("Authorization", "KakaoAK 40cb46e0d117daccd5b12fd53b155295");
			serverConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=UTF-8");
			serverConnection.setDoOutput(true);
			
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=MARK&quantity=1&total_amount="+p.getPrice()+"&tax_free_amount=0&approval_url=http://localhost:8555/wms/markMarket.pm&cancel_url=http://localhost:8555/wms/cancle.pm&fail_url=http://localhost:8555/wms/markMarket.pm";
			OutputStream os = serverConnection.getOutputStream();
			DataOutputStream dataos = new DataOutputStream(os); 
			dataos.writeBytes(parameter);
			dataos.close();
			
			int result = serverConnection.getResponseCode();
			
			InputStream is;
			if(result == 200) {
				paymentService.paymentKakaopay(p);
				
				is = serverConnection.getInputStream();
			}else {
				is =serverConnection.getErrorStream();
			}
			InputStreamReader isReader = new InputStreamReader(is);
			BufferedReader bfReader = new BufferedReader(isReader);
			
			return bfReader.readLine();
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			}
		
		
		
			
		
		return "{\"result\":\"NO\"}";
	}
	
	@RequestMapping("paymentKakaopay.pm")
	public ModelAndView paymentKakaopay(Payment p, ModelAndView mv,HttpSession session) {
		
		System.out.println(p);
		/*
		if(result>0){
			session.setAttribute("alertMsg", "마크 구매 성공!");
			mv.setViewName("redirect:markMarket.pm");
		}else {
			session.setAttribute("alertMsg", "마크 구매 실패ㅜ");
			mv.setViewName("redirect:markMarket.pm");
		}
		*/
		return mv;
	}
	
	// 현빈존
		@RequestMapping(value="myPayment.pm")
		public ModelAndView myPayment(@RequestParam(value="cpage", defaultValue="1") int currentPage,int memberNo, ModelAndView mv) {
			
			int listCount = paymentService.paymentListCount(memberNo);
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 6);
			
			ArrayList<Payment> list = paymentService.paymentList(pi,memberNo);
			
			
						
			mv.addObject("list",list).addObject("pi",pi).setViewName("markMarket/myPaymentList");
			
			
			
			return mv;
		}
		
		@RequestMapping(value="selectMark.pm")
		public ModelAndView selectMark(Payment p, ModelAndView mv, HttpSession session) {
			
			
			
			Member m = (Member)session.getAttribute("loginUser");
			
			int memberNo= m.getMemberNo();
			
			p.setMemberNo(memberNo);
			
			
			int result = paymentService.selectMark(p);
			
			if(result > 0){
				session.setAttribute("alertMsg", "마크 설정 성공!");
				mv.addObject("memberNo", memberNo).setViewName("redirect:myPayment.pm");
			}else {
				session.setAttribute("alertMsg", "마크 설정 실패ㅜ");
				mv.addObject("memberNo", memberNo).setViewName("redirect:myPayment.pm");
			
			}
			
			
			return mv;
		}
		
		@RequestMapping("cancle.pm")
		public ModelAndView canclePayment(ModelAndView mv,HttpSession session) {
			
			Member member = (Member) session.getAttribute("loginUser");
			int memberNo = member.getMemberNo();
			
			paymentService.canclePayment(memberNo);
			
			
			
			
			mv.setViewName("markMarket/cancle");
			
			return mv;
		}
	
}
