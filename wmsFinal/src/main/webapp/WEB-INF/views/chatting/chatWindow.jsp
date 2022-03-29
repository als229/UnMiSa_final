<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅 창</title>
<style type="text/css">
#wrap {
	padding-top: 0;
	max-width: calc(600px - 2px);
}

.cwindow_left_area {
	border-right: 1px solid #ddd;
	float: left;
	width: 70%;
	box-sizing: border-box;
}

/* 헤드 영역 */
.cwindow_left_area .header_area {
	height: 80px;
	border-bottom: 1px solid #ddd;
	
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var webSocket;
    var nickname;
    var roomNo = $('#roomNo').val();
    var sessionMemberNo = ${loginUser.memberNo}
    webSocketConnetion();
    
    function webSocketConnetion(){
    	var uri = "ws://localhost:8555/wms/gsc";
		webSocket = new WebSocket(uri);
		
		
		webSocket.onopen = function(){
			console.log('서버와 연결되었습니다.');
		}
		
		webSocket.onclose = function(){
			console.log('서버와 연결이 종료 되었습니다.');
			
		}
		
		webSocket.onerror = function(e){
			console.log('오타 내지맙시다.');
		}
		
		webSocket.onmessage = function(e){
			var messages = e.data.split(",");
			var receiveMessage = messages[0];
			var receiveRoomNo = messages[1];
			var receiveMemberNo = messages[2];
			var receiveMemberName = messages[3];
			var receiveTime = messages[4];
			if(receiveRoomNo == roomNo){
				var div = $('<div></div>');
				if(receiveMemberNo == sessionMemberNo){
					
				}
				div.text(receiveMessage);
				$('.message_area').append(div);
			}
		}
    }
    
    $('#sendBtn').click(function(){
    	
		var sendMeassge = $('#message').val();
		var sendRoomNo = $('#roomNo').val();
		var sendMemberNo = $('#memberNo').val();
		var sendMmemberName = $('#memberName').val();
		let today = new Date();
		let year = today.getFullYear(); 
		let month = today.getMonth() + 1
		let date = today.getDate(); // 일
		let hours = today.getHours();
		let minutes = today.getMinutes();
		let seconds = today.getSeconds();
		let sendTime = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
		if(!sendMeassge){
			return;
		}else{
			webSocket.send(sendMeassge+","+sendRoomNo+","+sendMemberNo+","+sendMmemberName+","+sendTime);
			$('#message').val('');
		}
		
	})
	
})
</script>
</head>
<body>
	<input type="hidden" id="roomNo" value="${roomNo }" />
	<input type="hidden" id="memberNo" value="${loginUser.memberNo }" />
	<input type="hidden" id="memberName" value="${loginUser.memberName }" />
	<div class="cwindow_left_area">
		<div class="header_area">
			<span class="thumb_path">
			</span>
			
			 <span>${chatWindowHeadDTO.cwindowName }</span>
		</div>
		<div class="message_area">
			
		</div>
		<div class="send_area">
			<textarea name="message" id="message" placeholder="메시지를 입력해주세요."></textarea>
			<button type="button" id="sendBtn">전송</button>
		</div>
	</div>
	<div class="cwindow_right_area">
		<div class="exit_btn_area">
			<button type="button">채팅방 퇴장하기</button>
		</div>
		<div class="member_info_area">
		
			<p><span>참여인원 : </span><span>명</span></p>
			
			
		</div>
		
		<form id="add_chat_member">
			<div class="added_input_area"></div>
		</form>
		
		<div class="member_add_area">
			<button type="button">선택한 상대  초대</button>
		</div>
	</div>
</body>
</html>