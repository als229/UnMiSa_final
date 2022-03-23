package com.kh.wms.sportsPartner.model.service;

import java.util.ArrayList;

import com.kh.wms.common.model.vo.PageInfo;
import com.kh.wms.sportsPartner.model.vo.Purpose;
import com.kh.wms.sportsPartner.model.vo.SportsDiary;

public interface SportsPartnerService {
	
	Purpose selectPurpose(int memberNo);

	int insertPurpose(Purpose p);

	int insertDiary(SportsDiary sd);

	int updatePurpose(Purpose p);

	SportsDiary check(int memberNo);

	ArrayList<SportsDiary> selectDiary(int memberNo);

	ArrayList<SportsDiary> selectDiary2(int memberNo, PageInfo pi);

	int selectListCount();

	SportsDiary detailDiary(int diaryNo);

	int clearPurpose(int memberNo);

	int clearDiary(int memberNo);
	
	
}
