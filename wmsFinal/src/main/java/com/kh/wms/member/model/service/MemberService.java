package com.kh.wms.member.model.service;

import com.kh.wms.member.model.vo.Member;

public interface MemberService {

	
	int ajaxCheckId(String memberId);
	int ajaxAuthEmail(String email);
	int insertMember(Member m);
	Member loginMember(Member m);
	
}
