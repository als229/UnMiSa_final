<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅 창</title>
<style type="text/css">
.wrap {
	width: 500px;
	height: 600px;
}

.cwindow_left_area {
	border-right: 1px solid #ddd;
	float: left;
	width: 70%;
	box-sizing: border-box;
}

#message {
	width: 285px;
}

/* 헤드 영역 */
.cwindow_left_area .header_area {
	font-size: 14px;
	padding: 15px 0;
	background: #2e6183;
	color: white;
	text-align: center;
}

.cwindow_left_area .send_area {
	position: fixed;
	bottom: 0;
	width: 350px;
	background-color: #FFF;
	text-align: center;
	border-top: 1px solid #afafb1;
}

.cwindow_left_area .send_area>textarea {
	width: 100%;
	height: 80px;
	border: none;
	padding: 10px;
}

.cwindow_left_area .message_area {
	padding-bottom: 80px;
}

.cwindow_left_area .message_area ul {
	width: 100%;
	list-style: none;
}

.cwindow_left_area .message_area ul li>div.me-all .me {
	margin-left: 55%;
	font-weight: bold;
	border: 1px solid #888;
	display: inline-block;
	word-break: break-all;
	max-width: 75%;
	border-radius: 5px;
	background-color: #fcda91;
	color: rgb(87, 73, 73);
	text-align: left;
	padding: 10px;
	position: sticky;
}

.cwindow_left_area .message_area ul li>div.you-all .you {
	display: inline-block;
	word-break: break-all;
	margin-left: 0px;
	max-width: 75%;
	border: 1px solid #888;
	padding: 10px;
	border-radius: 5px;
	background-color: #FCFCFC;
	color: #555;
	text-align: left;
}

#exitBtn {
	background-color: #3192af;
	border-radius: 5px;
	color: rgb(255, 255, 255);
	padding: 5px;
	border: 1px solid rgb(20, 41, 110);
	position: absolute;
	margin-left: 4%;
	margin-bottom: 100%;
	position: sticky;
}

#exitBtn:hover {
	background-color: #5dbedb;
}

#inviteBtn {
	background-color: #3192af;
	border-radius: 5px;
	color: rgb(255, 255, 255);
	padding: 5px;
	border: 1px solid rgb(20, 41, 110);
	width: 150px;
	position: sticky;
	margin-left: 4%;
	margin-top: 1%;
}

#inviteBtn:hover {
	background-color: #5dbedb;
}

#sendBtn {
	background-color: #49a0da;
	border-radius: 2px;
	border: 1px solid #49a0da;
	float: right;
	color: white;
	padding: 4px;
}

#sendBtn:hover {
	color: #fff;
}

.cwindow_right_area {
	float: right;
}

.exit_btn_area {
	height: 30px;
	margin-left: 20px;
}

.member_info_area {
	margin-bottom: 30%;
	margin-left: 30px;
	height: 360px;
}

.message_area {
	height: 500px;
	OVERFLOW-Y: auto;
	overflow-x: hidden;
}

.member_info_area2 {
	height: 230px;
}

.cwindow_left_area .message_area ul li>div.you-all .time {
	width: 100px;
	float: right;
	margin-right: 41%;
	margin-top: 8%;
	font-size: 12px;
}

.cwindow_left_area .message_area ul li>div.me-all .time {
	width: 100px;
	margin-left: 38%;
	margin-bottom: 2%;
	font-size: 12px;
}

.cwindow_left_area .message_area ul li>div.you-all .name {
	font-size: 13px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var webSocket;
		var nickname;
		var roomNo = $('#roomNo').val();
		var sessionMemberNo = ${loginUser.memberNo}
		webSocketConnetion();
		
		$('.message_area').scrollTop($('.message_area').prop('scrollHeight'));

		function webSocketConnetion() {
			var uri = "ws://localhost:8555/wms/gsc";
			webSocket = new WebSocket(uri);

			webSocket.onopen = function() {
				console.log('서버와 연결되었습니다.');
			}

			webSocket.onclose = function() {
				console.log('서버와 연결이 종료 되었습니다.');

			}

			webSocket.onerror = function(e) {
				console.log('오타 내지맙시다.');
			}

			webSocket.onmessage = function(e) {
				var messages = e.data.split(",");
				var receiveMessage = messages[0];
				var receiveRoomNo = messages[1];
				var receiveMemberNo = messages[2];
				var receiveMemberName = messages[3];
				var receiveTime = messages[4];
				if (receiveRoomNo == roomNo) {
					var li ="";
					if (receiveMemberNo == sessionMemberNo) {
					
						li = "<li>"
						+ "<div class='me-all'>"
						+ "<div class='me'>"
						+ "<sapn>" + receiveMessage +"</span>"
						+ "</div>"
						+ "<div class='time'>" + receiveTime + "</div>"
						+ "</div>"
						+ "</li>"
					
					}else{
						li = "<li>"
						+ "<div class='you-all'>"
						+ "<div class='name'>" + receiveMemberName + "</div>"
						+ "<div class='you'>"
						+ "<sapn>" + receiveMessage +"</span>"
						+ "</div>"
						+ "<div class='time'>" + receiveTime + "</div>"
						+ "</div>"
						+ "</li>"
					}
					$('.message_area>ul').append(li);
					$('.message_area').scrollTop($('.message_area').prop('scrollHeight'));
				}
			}
		}

		$('#sendBtn').click(
				function() {

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
					let sendTime = year + "-" + month + "-" + date + " "
							+ hours + ":" + minutes ;
					if (!sendMeassge) {
						return;
					} else {
						webSocket.send(sendMeassge + "," + sendRoomNo + ","
								+ sendMemberNo + "," + sendMmemberName + ","
								+ sendTime);
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
	<div class="wrap">
		<div class="cwindow_left_area">
			<div class="header_area">
				<span class="thumb_path"></span> <span>${roomName }</span>
			</div>
			<div class="message_area">
				<ul>
					<c:forEach var="c" items="${clist }">
						<c:choose>
							<c:when test="${c.memberNo == loginUser.memberNo }">
								<li>
									<div class="me-all">
										<div class="me">
											<span>${c.message }</span>
										</div>
										<div class="time">${c.messageTime }</div>
									</div>
								</li>
							</c:when>
							<c:otherwise>
								<li>
									<div class="you-all">
										<div class="name">${c.memberName }</div>
										<div class="you">
											<span>${c.message }</span>
										</div>
										<div class="time">${c.messageTime }</div>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>

			</div>
			<div class="send_area" style="float: left;">
				<textarea name="message" id="message" placeholder="메시지를 입력해주세요."
					style="resize: none;"></textarea>
				<button type="button" id="sendBtn">전송</button>
			</div>
		</div>
		<div class="cwindow_right_area">
			<div class="exit_btn_area">
				<button type="button" id="exitBtn">채팅방 퇴장하기</button>
			</div>
			<div class="member_info_area">
				<p>
					<span>참여인원 : ${count }</span><span>명</span>
				</p>
				<c:forEach var="m" items="${mlist }">
					<span>${m.memberName }</span>
					<br>
				</c:forEach>
			</div>
			<div class="member_info_area2"></div>

			<form id="add_chat_member">
				<div class="added_input_area"></div>
			</form>

			<div class="member_add_area">
				<button type="button" id="inviteBtn">선택한 상대 초대</button>
			</div>
		</div>
	</div>

</body>
</html>