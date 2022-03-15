package com.kh.wms.board.model.service;

import java.util.ArrayList;

import com.kh.wms.board.model.vo.Board;
import com.kh.wms.board.model.vo.Notice;
import com.kh.wms.common.model.vo.PageInfo;

public interface NoticeService {
	
	int selectListCount();
	
	ArrayList<Notice> selectList(PageInfo pi);

	int insertNotice(Notice n);

	Notice noticeDetail(int noticeNo);

	int increaseCount(int noticeNo);

	int noticeDelete(int noticeNo);

	Notice noticeUpdateForm(int noticeNo);
}
