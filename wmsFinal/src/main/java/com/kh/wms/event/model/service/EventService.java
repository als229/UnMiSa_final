package com.kh.wms.event.model.service;

import java.util.ArrayList;

import com.kh.wms.event.model.vo.Attendance;

public interface EventService {

	int insertAt(int memberNo);

	void increasePoint(int memberNo);

	ArrayList<Attendance> eventMain(int memberNo);

}
