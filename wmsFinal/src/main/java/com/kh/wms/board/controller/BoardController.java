package com.kh.wms.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.wms.board.model.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
}
