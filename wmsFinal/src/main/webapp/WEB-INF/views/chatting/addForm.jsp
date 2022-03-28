<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅방 개설</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
#wrap {
	padding-top: 150px;
}

h2 {
	font-size: 26px;
	font-weight: 600;
	padding-bottom: 15px;
	border-bottom: 2px solid #333333;
	text-align: left;
}

/* 선택된 사원 영역 */
.added_member_area {
	min-height: 100px;
	border: 1px solid #DDD;
	display: flex;
	justify-content: center;
	align-items: center;
}

.added_member_area >span {
}

/* 리스트에서 선택된 사원 */
.member_select_area li.member_li.selected {
	color: #ddd;
}

#create_chat_form {
	padding: 50px 70px;
}

#create_chat_form .chat_window_name {
}

#create_chat_form .chat_window_name > label {
	display: block;
	margin-bottom: 10px;
	font-weight: 800;
}

#create_chat_form .chat_window_name > input {
	height: 30px;
	padding-left: 8px;
	width: 500px;
}

#create_chat_form .chat_member_select {
	margin: 50px auto;
}

#create_chat_form .chat_member_select >p {
	font-weight: 800;
	margin-bottom: 10px;
}

.added_member_area_message {
	margin-top: 8px;
}

.btn_area {
	text-align: right;
}

.btn_area >button {
	padding: 10px 30px;	
    text-decoration: none;
    background-color: #1A237E;
    color: white;
    transition: all 0.2s;
    border: 1px solid #1A237E;
    cursor: pointer;
}

.btn_area >button:hover {
	color: #1A237E;
	background-color: white;
	border: 1px solid #1A237E;
}
.member_span{
	width: 100px;
}
</style>

</head>
<body>
	<div id="header_area">
			<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap" >
		<input type="hidden" id="memberId" value="${loginUser.memberId }" />
	
		<h2>채팅방 생성</h2>
		<form id="create_chat_form">
			<div class="chat_window_name">
				<label for="name">채팅방 이름</label>
				<input type=text name="name" id="name" placeholder="채팅 제목을 입력해 주세요." maxlength="30" required />
			</div>
			<div class="chat_member_select">
				<p>채팅 팀 선택</p>
				<select name="teamName" id="teamName">
					<option value="0">선택</option>
					<c:forEach var="c" items="${list }">
						<option value="${c.teamNo }">${c.teamName }</option>
					</c:forEach>
				</select>
			</div>
			<div class="team_list_area table table-hover">
				<table class="team_table">
					<thead>
						<tr>
							<th>팀 멤버 아이디</th>
							<th>팀 멤버 이름</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			<div class="added_member_area">
				
			</div>
			
			<div class="added_member_area_message"></div>
			
			<div class="added_input_area"></div>
			
			<div class="btn_area">
				<button type="button" id="create_chat_window_btn">생성</button>
				<button type="button" id="create_chat_cancel_btn">취소</button>
			</div>
		</form>
	</div>
	<div id="footer_area">
	    	<jsp:include page="../common/footer.jsp"/>
	</div>
<script type="text/javascript">
	$(function(){
		var addMemberArr = [];
		
		$('#teamName').change(function(){
			$.ajax({
				url : 'teamMember.ct',
				data : { teamNo : $('#teamName').val()},
				type : 'get',
				success : function(list){
					let value= "";
					
					for(let i in list){
						value += "<tr class='member_tr' data-tr-memberId='"+list[i].memberId+"' data-tr-memberName='"+list[i].memberName+"' data-tr-memberNo='"+list[i].memberNo+"' >"
							+"<td>" + list[i].memberId + "</td>"
							+"<td>" + list[i].memberName + "</td>"
							+"</tr>"
					}
					$('.team_table>tbody').html(value);
				},
				error : function(){
					console.log('조회 실패');
				}
			})
		})
		
		
		
		$(document).on("click", ".member_tr", function(){
			var tr = $(this);
			var memberId = $(this).attr("data-tr-memberId");
			var memberName = $(this).attr("data-tr-memberName");
			var memberNo = $(this).attr("data-tr-memberNo");
			
			var trAdd = "<span class='member_span' data-span-memberId='"+memberId+"' data-span-memberName='"+memberName+"' data-span-memberNo='"+memberNo+"' >"+memberId+"</span>";
			
			$('.added_member_area').append(trAdd);
			addMemberArr.push(memberNo);
			
			tr.remove();
			
		})
		
		$(document).on("click", ".member_span", function(){
			var span = $(this);
			var memberId = $(this).attr("data-span-memberId");
			var memberName = $(this).attr("data-span-memberName");
			var memberNo = $(this).attr("data-span-memberNo");
			
			var spanAdd = "<tr class='member_tr' data-tr-memberId='"+memberId+"' data-tr-memberName='"+memberName+"' data-tr-memberNo='"+memberNo+"' >"
							+"<td>" + memberId + "</td>"
							+"<td>" + memberName + "</td>"
							+"</tr>";
			$('.team_table>tbody').append(spanAdd);
			
			for(let i = 0; i < addMemberArr.length; i++) {
				  if(addMemberArr[i] === memberNo)  {
					addMemberArr.splice(i, 1);
				    i--;
				  }
				}
			span.remove();
			
		})
		
	})
	
</script>	
</body>
</html>