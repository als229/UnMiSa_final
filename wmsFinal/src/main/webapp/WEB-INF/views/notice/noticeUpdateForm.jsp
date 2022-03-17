<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Notice css -->
<link rel="stylesheet" href="resources/css/notice/noticeEnrollForm.css"/>
<script src="resources/js/notice/notice.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	<div id= content>
    		<div id="content_1">
    			<h1>공지사항 작성하기</h1>
    		</div>
    		 <form id="noticeInsert" method="post" action="noticeUpdate.no" enctype="multipart/form-data"> <!-- multipart/form-data 파일이나 이미지파일을 인코딩 할 때 쓰는 공식느낌 -->
    			<div id ="content_2">
    				<div id="content_2_div1">
    					<h3>제목 입력 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    				</div>
    				<div id="content_2_div2">
    					<input type="text" id="content_2_title" value="${ n.noticeTitle }" class="form-control" name="noticeTitle" required placeholder="제목을 입력해주세요">
    				</div>
    			</div>
    			<div id="content_3">
    				<div id="content_3_div1">
    					<h3>내용 입력 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    				</div>
    				<div id="content_3_div2">
 		   				<textarea id="content_3_content" class="form-control" rows="20" style="resize:none;" name="noticeContent" required placeholder="내용을 입력해주세요">${ n.noticeContent }</textarea>
    				</div>
    			</div>
    			<div id ="content_4">
    				<div id="content_4_div1">
    					<h3>첨부파일 등록 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    				</div>
    				<div id="content_4_div2">
    					<input type="file" id="content_4_upfile" class="form-control-file border" name="reupfile">
    				</div>
    				<div id="content_4_2">
    					<c:if test="${not empty n.originName }">
    						현재 업로드된 파일 :
    						<a href="${n.changeName }" download="${n.originName }">${n.originName }</a>
    						<input type ="hidden" name="originName" value=${ n.originName }>
                            <input type ="hidden" name="changeName" value=${ n.changeName }>
    					 </c:if>
    					<input type ="hidden" name="noticeNo" value=${ n.noticeNo }>
    				</div>
    			</div>
    			<div id="content_5">
    				<button type="submit" class="Insert_Btn btn btn-primary">수정완료</button>
    				<button class="noticeList_Btn btn btn-secondary">뒤로가기</button>
    			</div>
    		</form>
    	</div>
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
    

</body>
</html>