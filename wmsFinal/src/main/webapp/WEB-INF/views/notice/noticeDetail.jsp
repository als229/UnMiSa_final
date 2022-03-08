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
		
		<div id= "content_1">
			<div id="content_1_NoTitle">
				<h3>충청남도 장애인 생활체육 스포츠 클럽 VR뮤지엄 개최</h3>
			</div>
			<div id="content_1_NoWriter">
				<p>작성자 &nbsp; KING관리자</p>
			</div>
			<div id = "content_1_createDate">
				<p>작성일 &nbsp;2022-03-08</p>
			</div>
			<div id = "content_1_count">
				<p>조회 &nbsp;&nbsp;17</p>
			</div>
		</div>
		<div id = "content_2">
			<p>첨부파일 &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="">@초대장.JPG</a></p>
		</div>
		<div id = "content_3">
			<pre>
충청남도장애인체육회에서는 2021년 장애인생활체육 스포츠클럽 리그(홈&어웨이)를 운영하고 관련 활동사진, 동영상 등 작
품을‘스포츠클럽 온라인 VR뮤지엄’가상공간에 전시하였습니다.

매년 스포츠클럽 리그 역사를 기록하여 후대들에게 살아 있는 장애인생활체육 역사를
볼 수 있는 작품 등을 점진적으로 담아나갈 예정이오니 많은 관람과 홍보 협조 바랍니다.

가. 사업개요
1) 사업명: 장애인생활체육 스포츠클럽 온라인 VR뮤지엄
2) 내 용: 총 20개 스포츠클럽(탁구 8, 볼링 6, 좌식배구 6) 리그 작품 전시 등
3) 기 간: 2022. 2. ~ 12.(상시 운영)
4) 주 소: https://bit.ly/충남스포츠클럽VR뮤지엄 ※ 주소 클릭 시 VR뮤지엄 접속
5) 문 의: 생활체육팀 박종욱 주임(041-338-7608)

나. 협조요청: 단체 홈페이지, SNS(Facebook, Band, Instargram) 등 홍보
			</pre>
		</div>
		<div id = "content_4">
			 <button class="noticeList_Btn btn btn-primary">목록으로 돌아가기</button>
			 <button class="noticeUpdate_Btn btn btn-secondary">공지사항 수정하기</button>
			 <button class="noticeDelete_Btn btn btn-danger">공지사항 삭제하기</button>
		</div>
		
	</div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>