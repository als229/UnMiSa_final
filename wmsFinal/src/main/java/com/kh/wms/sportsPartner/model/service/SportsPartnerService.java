package com.kh.wms.sportsPartner.model.service;

import com.kh.wms.sportsPartner.model.vo.Purpose;
import com.kh.wms.sportsPartner.model.vo.SportsDiary;

public interface SportsPartnerService {
	
	// 목표  조회
	Purpose selectPurpose(int memberNo);

	int insertPurpose(Purpose p);

	int insertDiary(SportsDiary sd);

	int updatePurpose(Purpose p);


	
	
}
