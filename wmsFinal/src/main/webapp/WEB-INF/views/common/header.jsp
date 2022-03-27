<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- jQuery 라이브러리 -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 부트스트랩에서 제공하고 있는 스타일 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- ALertfy 프레임워크 -->
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />

<!-- google api 부분 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="692876068188-7ifibfj5gbk6vdpv3k4n8a3gdq72dnsk.apps.googleusercontent.com">



<!-- header css -->
<link rel="stylesheet" href="resources/css/common/header.css" />
<script src="resources/js/common/header.js"></script>
</head>
<body>

	<c:if test="${ not empty alertMsg }">
		<script>
			alertify.alert("${ alertMsg }");
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>
	<div id="header">
		<div id="header_div">
			<div id="header_div_first">
				<img src="resources/image/common/WMS2.png" alt="" id="rogo">
			</div>
			<div id="header_div_center">
				<div id="header_div_inCenter"
					style="margin-top: 20px; margin-left: 25px;">
					<span style="font-size: 50px;">운</span>
					<span style="font-size: 20px;">동에</span>
					<span style="font-size: 50px;">&nbsp;&nbsp;미</span>
					<span style="font-size: 20px;">친</span>
					<span style="font-size: 50px;">&nbsp;&nbsp;사</span>
					<span style="font-size: 20px;">람들</span>
				</div>
			</div>
			<div id="header_div_second">
				<c:choose>
					<c:when test="${ loginUser == null }">
						
						<!-- 로그인 전 -->
						<div style="float:right">
							<a href="choice.me">회원가입</a>
							<a href="loginForm.me" style="margin-left:20px; margin-right:20px;">로그인</a>
						</div>
						<!-- 모달의 원리 : 이 버튼 클릭시 data-targer에 제시되어있는 해당 아이디의 div요소를 띄워줌 -->
					</c:when>

					<c:otherwise>
						<!-- 로그인 후 -->
						<div style="float:right">${loginUser.memberName}님 환영합니다</div>
						<br>
						<div style="float:right">
						 &nbsp;&nbsp; 
						 <a href="myChat.ct"><img src="">&nbsp;&nbsp;내 채팅</a> 
						 <a href="logOut.me">&nbsp;&nbsp;로그아웃</a> 
						 <a href="myPage.me">&nbsp;&nbsp;마이페이지</a> 
						 <a href="sportsPartnerMain.sp">&nbsp;&nbsp;운동파트너</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div id="header_nav">
			<ul>
				<li><a href="serchWms.te">우리동네 운미사</a></li>
				<li><a href="nomalList.bo" >우리동네 커뮤니티</a></li>
				<li><a href="eventMain.ev">우리동네 이벤트</a></li>
				<li><a href="markMarket.pm?">마크 상점</a></li>
				<li><a href="noticeFAQ.no" >고객센터</a></li>
			</ul>
		</div>
	</div>

	



</body>
</html>