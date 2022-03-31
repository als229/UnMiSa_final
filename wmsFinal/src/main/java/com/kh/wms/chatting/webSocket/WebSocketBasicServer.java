package com.kh.wms.chatting.webSocket;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class WebSocketBasicServer extends TextWebSocketHandler{
	
	// 웹소켓 (Web Socket)
	// 기본적으로 web은 비연결형 통신이라는 특징을 가지고 있다
	// Socket 통신은 연결한 통신
	// 기본 통신은 HTTP로 진행하고 필요시  WebSocket 을 사용
	
	// 웹소켓의 기본적인 이해를 돕기 위해 만든 서버
	// WebSocketServer를 만들기 위해서는 특정 클래스/인터페이스 상속 필요
	
	
	// 사용자 접속 시 실행되는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("접속");
		System.out.println("session : " + session);
		
	}
	
	
	// 메시지 수신 시 실행될 메소드
	// session : 접속한 사용자의 웹소켓 정보(httpSession이 아님)
	// message : 사용자가 전송한 메시지 정보 
	// -> payload : 실제 보낸 내용
	// -> byteCount : 보낸 메시지 크기(byte)
	// -> last : 메시지의 종료 여부
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		System.out.println("수신");
		System.out.println("session : " + session);
		System.out.println("message : " + message);
		
		
	}
	
	// 사용자 접속 종료시 실행되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("종료");
		System.out.println("session : " + session);
		System.out.println("status : " + status);
		
	}
	
	
	
	

}
