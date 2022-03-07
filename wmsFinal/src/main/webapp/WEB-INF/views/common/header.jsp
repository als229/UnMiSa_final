<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- ALertfy 프레임워크 -->
    <!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	
	<!-- header css -->
	<link rel="stylesheet" href="resources/css/common/header.css"/>
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
                    <img src="resources/image/common/WMS2.png" alt="">
			</div>
			<div id="header_div_center">
                <div id="header_div_inCenter" style="margin-top: 20px; margin-left: 100px;" >
                    <span style="font-size: 50px;">운</span><span style="font-size: 20px;">동에</span><span style="font-size: 50px;">&nbsp;&nbsp;미</span> <span style="font-size: 20px;">친</span><span style="font-size: 50px;">&nbsp;&nbsp;사</span><span style="font-size: 20px;">람들</span>
                </div>
			</div>
			<div id="header_div_second">
				<c:choose>
           			<c:when test="${ loginUser == null }" >
		                <!-- 로그인 전 -->
		                <a href="enroll.me">회원가입</a>
		                <a data-toggle="modal" data-target="#loginModal">로그인</a> <!-- 모달의 원리 : 이 버튼 클릭시 data-targer에 제시되어있는 해당 아이디의 div요소를 띄워줌 -->
						<a href="myPage.me">마이페이지</a>
						<a href="">운동파트너</a>
           			</c:when>
                
                	<c:otherwise>
		                <!-- 로그인 후 -->
						<lable>홍길동님 환영합니다</label> &nbsp;&nbsp;
						<a href=""><img src="">내 채팅</a>
						<a href="">로그아웃</a>
						<a href="myPage.me">마이페이지</a>
						<a href="">운동파트너</a>
                	</c:otherwise>
           		</c:choose> 
			</div>
		</div>
		<div id="header_nav">
			<ul>
                <li><a href="">우리동네 운미사</a></li>
                <li><a href="">우리동네 커뮤니티</a></li>
                <li><a href="">우리동네 이벤트</a></li>
                <li><a href="markMarket.pm">마크 상점</a></li>
                <li><a href="">고객센터</a></li>
            </ul>
		</div>
	</div>
	
	<!-- 로그인 클릭 시 뜨는 모달  -->
    <div class="modal fade" id="loginModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Login</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <form action="login.me" method="post">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <label for="userId" class="mr-sm-2">ID : </label>
                        <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Enter ID" id="memberId" name="memberId"> <br>
                        <label for="userPwd" class="mr-sm-2">Password : </label>
                        <input type="password" class="form-control mb-2 mr-sm-2" placeholder="Enter Password" id="memberPwd" name="memberPwd">
                    </div>
                           
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">로그인</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                    </div>
                </form>
            </div>
        </div>
    </div>



</body>
</html>