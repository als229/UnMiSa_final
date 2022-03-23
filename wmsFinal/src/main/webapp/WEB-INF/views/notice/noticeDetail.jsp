<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- NoticeDetail css -->
	<link rel="stylesheet" href="resources/css/notice/noticeDetail.css"/>
	<script src="resources/js/notice/notice.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
	<div id="content">
		<div id = "content_0">
			<h1>공지사항</h1>
		</div>
		<input type = "hidden" value = "${ n.noticeNo }" name="HinoticeNo">
		<div id= "content_1">
			<div id="content_1_NoTitle">
				<h3>${n.noticeTitle }</h3>
			</div>
			<div id="content_1_NoWriter">
				<p>작성자 &nbsp; KING관리자</p>
			</div>
			<div id = "content_1_createDate">
				<p>작성일 &nbsp;${n.createDate }</p>
			</div>
			<div id = "content_1_count">
				<p>조회 &nbsp;&nbsp;${n.count}</p>
			</div>
		</div>
		
		
		<div id = "content_2">
			<p>첨부파일 &nbsp;&nbsp;&nbsp;&nbsp;
				<c:choose>
					<c:when test="${ empty n.originName }">
						첨부파일이 없습니다.
					</c:when>
					<c:otherwise>
						<a href="${n.changeName }" download="${n.originName }">${n.originName }</a>
					</c:otherwise>
				</c:choose>
			</p>
		</div>
		<div id = "content_3">
			<pre>
${n.noticeContent }
			</pre>
		</div>
		<div id = "content_4">
			 <button class="noticeList_Btn btn btn-primary">목록으로 돌아가기</button>
			 <c:if test="${loginUser.memberNo == 1 }">
			 	<button class="noticeUpdate_Btn btn btn-secondary">공지사항 수정하기</button>
			 	<button class="noticeDelete_Btn btn btn-danger">공지사항 삭제하기</button>
			 </c:if>
		</div>
		
	</div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>