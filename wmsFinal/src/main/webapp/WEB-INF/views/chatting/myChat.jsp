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


</style>
<script type="text/javascript">
$(function(){
	$(".chat_window_li").on("click", function(){
		var cwindowNo = $(this).attr("data-cwindow-no");
		utils.popupCenter(utils.getContextPath() + "/chat_message/" + cwindowNo, "chat_window_" + cwindowNo, 600, 700);
	});
});
//chat_message/28
</script>
<body>
	<div id="header_area">
			<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap" align="center">
	<h2>채팅 목록</h2>
	
	<c:if test="${chatWindowDTOList != null && chatWindowDTOList.size() !=0 }">
		
		<!-- 목록 영역 -->
		<div class="chat_list_area">
			<ul>
		        <c:forEach var="chatWindow" items="${chatWindowDTOList }">
		            <li class="chat_window_li" data-cwindow-no="${chatWindow.cwindowNo }">
		            	<span class="thumb_path">
		            		<c:if test="${chatWindow.chatMemberCount <= 2 }">
		            		<!-- 2인 이하의 채팅방인 경우 -->
		            			<img src="${chatWindow.thumbPath }" alt="${chatWindow.dName} ${chatWindow.position } ${chatWindow.mName } 님의 프로필 사진" />
		            		</c:if>
		            		<c:if test="${chatWindow.chatMemberCount > 2 }">
		            		<!-- 3인 이상의 채팅방인 경우 -->
		            			<span class="number_profile">${chatWindow.chatMemberCount }</span>
		            		</c:if>
		            	</span>
		            	<span class="d_name">
		            		${chatWindow.dName}
		            	</span>
		            	<span class="position">
		            		${chatWindow.position }
		            	</span>
		            	<span class="m_name">
		            		${chatWindow.mName }
		            	</span>
		            	<span class="message">
		            		${chatWindow.message }
		            	</span>
		            	<span class="time">
		            		${chatWindow.time }
		            	</span>
		            </li>
		        </c:forEach>
		    </ul>
		</div>
	    <!--// 목록 영역 -->
	    
	    <!-- 페이저 영역 -->
		<div class="pager_area">
	            <c:if test="${pager.postCount > 0}">
	                <c:if test="${pager.startPager > pager.pagerSize}">
	                    <a href="${pageContext.request.contextPath}/chat_window?page_num=${pager.startPager - 1}"
	                        class="pager_left pager_direction"><img src="${pageContext.request.contextPath}/resources/icon/pager_left.png"
	                            alt="이전 버튼" /></a>
	                </c:if>
	
	                <c:forEach var="i" begin="${pager.startPager}" end="${pager.endPager}">
	                    <c:if test="${pager.pageNum == i}">
	                        <a href="${pageContext.request.contextPath}/chat_window?page_num=${i}" class="curr_page">${i}</a>
	                    </c:if>
	                    <c:if test="${pager.pageNum != i}">
	                        <a href="${pageContext.request.contextPath}/chat_window?page_num=${i}">${i}</a>
	                    </c:if>
	                </c:forEach>
	
	                <c:if test="${pager.endPager < pager.pageCount}">
	                    <a href="${pageContext.request.contextPath}/chat_window?page_num=${pager.endPager + 1}"
	                        class="pager_right pager_direction"><img src="${pageContext.request.contextPath}/resources/icon/pager_right.png"
	                            alt="다음 버튼" /></a>
	                </c:if>
	            </c:if>
	        </div>
	        <!--// 페이저 영역 -->
	        
	</c:if>
	
	<c:if test="${chatWindowDTOList == null || chatWindowDTOList.size() == 0}">
	    <div class="post_not_exist">채팅방이 존재하지 않습니다.</div>
	</c:if>
	
	<div class="btn_area">
		<a href="chatAdd.ct">채팅방 개설</a>
	</div>
	</div>
	<div id="footer_area">
	    	<jsp:include page="../common/footer.jsp"/>
	</div>
</body>
</html>