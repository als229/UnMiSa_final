package com.kh.wms.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wms.member.model.dao.MemberDao;
import com.kh.wms.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int ajaxCheckId(String memberId) {
		
		return memberDao.ajaxCheckId(sqlSession, memberId);
	}
	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
