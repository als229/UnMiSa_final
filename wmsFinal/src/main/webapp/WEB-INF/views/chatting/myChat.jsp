<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내채팅 리스트</title>
</head>
<style>
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

/* 채팅목록 영역 */
.chat_list_area {
}

.chat_list_area ul li {
	margin-bottom: 10px;
	margin-top: 10px;
	border-bottom: 1px solid #ddd;
	padding-bottom: 10px;
	cursor: pointer;
	display: flex;
}

.chat_list_area ul li >span {
	box-sizing: border-box;
	display: inline-block;
	height: 50px;
	line-height: 50px;
	text-align: center;
}

/* 썸네일 */
.thumb_path {
	width: 50px;
	vertical-align: middle;
}

.thumb_path >img {
	width: inherit;
	display: inline-block;
	height:  100%;
	
    border-radius: 50%;
}

.thumb_path >span{
	width: inherit;
	display: inline-block;
	height: 100%;
	
	background-color: #1A237E;
    border-radius: 50%;
    color: white;
    text-align: center;
    line-height: inherit;
}

/* 부서이름 */
.d_name {
	width: 100px;
}

/* 직위 */
.position {
	width: 100px;
}

/* 사원이름 */
.m_name {
	width: 100px;
}

/* 메시지 */
.message {
	width: 758px;
	text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
    overflow: hidden;
}

/* 보낸시각 */
.time {
	width: 150px;
}

/* 페이저 영역 */
.pager_area {
	margin-top: 30px;
	text-align: center;
}

.pager_area >a {
	text-decoration: none;
	color: #777;
	font-size: 16px;
	margin: 0 5px;
}

.pager_area >a.curr_page {
	font-weight: 800;
	color: black;
}

.pager_area >.pager_direction >img {
	width: 20px;
    margin-bottom: -5px;
}

.post_not_exist {
	width: fit-content;
	font-size: 16px;
	margin: 0 auto;
	margin-top: 30%;
}

.btn_area {
	text-align: right;
}

.btn_area >a {
	padding: 10px 30px;	
    text-decoration: none;
    background-color: #1A237E;
    color: white;
    transition: all 0.2s;
    border: 1px solid #1A237E;
}

.btn_area >a:hover {
	color: #1A237E;
	background-color: white;
	border: 1px solid #1A237E;
}
.pager_area{
	margin-left: 45%;
}


</style>

<body>
	<div id="header_area">
			<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap" align="center">
	<h2>채팅 목록</h2>
	
	<c:if test="${list != null && list.size() !=0 }">
		<!-- 목록 영역 -->
		<div class="chat_list_area">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>방 이름</th>
						<th>메시지</th>
						<th>시간</th>
						<th>보낸이</th>
					</tr>
				</thead>
				<tbody>
		        <c:forEach var="cr" items="${list }">
		            <tr class="chat_window_tr" data-room-no="${cr.roomNo }" data-room-name="${cr.roomName }">
		            	<td>${cr.roomName }</td>
		            	<td>${cr.message }</td>
		            	<td>${cr.messageTime }</td>
		            	<td>${cr.memberName }</td>
		            </tr>
		        </c:forEach>
				</tbody>
			</table>
		</div>
	    <!--// 목록 영역 -->
	    
	    <!-- 페이저 영역 -->
		<div class="pager_area" align="center">
             <ul class="pagination"  >
                   <c:choose>
                    	<c:when test="${ pi.currentPage eq 1 }">
	                    	<li class="page-item disabled"><a class="page-link" href="myChat.ct">Previous</a></li>
                    	</c:when>
                    	<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="myChat.ct?cpage=${ pi.currentPage -1 }">Previous</a></li>
                    	</c:otherwise>
                   </c:choose>
                   
                   <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<li class="page-item"><a class="page-link" href="myChat.ct?cpage=${ p }">${ p }</a></li>
                   </c:forEach>

                   <c:choose>
                    	<c:when test="${ pi.currentPage eq  pi.endPage }">
	                    	<li class="page-item disabled"><a class="page-link" href="#" >Previous</a></li>
                    	</c:when>
                    	<c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="myChat.ct?cpage=${ pi.currentPage +1 }">Next</a></li>
                    	</c:otherwise>
                   </c:choose>
              
             </ul>
	     </div>
	        <!--// 페이저 영역 -->
	        
	</c:if>
	
	<c:if test="${list == null || list.size() == 0}">
	    <div class="post_not_exist">채팅방이 존재하지 않습니다.</div>
	</c:if>
	
	<div class="btn_area">
		<a href="chatAdd.ct">채팅방 개설</a>
	</div>
	</div>
	<div id="footer_area">
	    	<jsp:include page="../common/footer.jsp"/>
	</div>
<script type="text/javascript">
$(function(){
	$(".chat_window_tr").on("click", function(){
		var roomNo = $(this).attr("data-room-no");
		var roomName = $(this).attr("data-room-name");
		window.open("chatWindow.ct?roomNo="+roomNo+"&roomName="+roomName, "채팅창", "width=550 , height=800");
	});
});
//chat_message/28
</script>
</body>
</html>