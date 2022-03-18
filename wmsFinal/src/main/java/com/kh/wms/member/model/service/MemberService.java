package com.kh.wms.member.model.service;

import java.util.ArrayList;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.member.model.vo.Member;
import com.kh.wms.payment.model.vo.Payment;

public interface MemberService {

	
	int ajaxCheckId(String memberId);
	int ajaxAuthEmail(String email);
	int insertMember(Member m);
	Member loginMember(Member m);
	Member loginMember(String authKey);
	int AjaxPlatFormCheck(String authKey);
	
	
	
	
	
	
	
	
}
