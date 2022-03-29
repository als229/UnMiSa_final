package com.kh.wms.chatting.webSocket;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.wms.chatting.model.service.ChattingService;
import com.kh.wms.chatting.model.vo.ChattingMessage;

public class WebSocketGroupServer extends TextWebSocketHandler {

	@Autowired
	private ChattingService chattingService;

	private Set<WebSocketSession> users = new CopyOnWriteArraySet<>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		System.out.println(session.getId());
		users.add(session);
		System.out.println("사용자 접속 ! 현재 " + users.size() + " 명");

	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage senMessage) throws Exception {
		// 메세지를 모든 사용자에게 전송 ( 사용자 수만큼 반복하며 전송 )

		TextMessage totalMessage = new TextMessage(senMessage.getPayload());
		
		String newMessage = totalMessage.getPayload();
		System.out.println(newMessage);
		String messages[] = newMessage.split(",");
		String message = messages[0];
		int roomNo = Integer.parseInt(messages[1]);
		int memberNo = Integer.parseInt(messages[2]);
		String messageTime = messages[4];
		
		ChattingMessage cm = new ChattingMessage();
		cm.setMemberNo(memberNo);
		cm.setMessage(message);
		cm.setRoomNo(roomNo);
		cm.setMessageTime(messageTime);
		System.out.println(cm);
		chattingService.addChatMessage(cm);
		
		// session.sendMessage(newMessage); // 메세지를 본내놈한테 다시 메세지를 보내겠다
		System.out.println(senMessage);
		for (WebSocketSession ws : users) {
			ws.sendMessage(totalMessage);
		}

	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		users.remove(session);
		System.out.println("사용자 종료 ! 현재 " + users.size() + " 명");
	}
}
