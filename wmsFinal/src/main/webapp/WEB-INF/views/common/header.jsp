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

<!-- 카카오 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

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
					style="margin-top: 20px; margin-left: 100px;">
					<span style="font-size: 50px;">운</span><span
						style="font-size: 20px;">동에</span><span style="font-size: 50px;">&nbsp;&nbsp;미</span>
					<span style="font-size: 20px;">친</span><span
						style="font-size: 50px;">&nbsp;&nbsp;사</span><span
						style="font-size: 20px;">람들</span>
				</div>
			</div>
			<div id="header_div_second">
				<c:choose>
					<c:when test="${ loginUser == null }">
						<!-- 로그인 전 -->
						<a href="choice.me">회원가입</a>
						<a data-toggle="modal" data-target="#loginModal" id="loginBtn">로그인</a>
						<!-- 모달의 원리 : 이 버튼 클릭시 data-targer에 제시되어있는 해당 아이디의 div요소를 띄워줌 -->
					</c:when>

					<c:otherwise>
						<!-- 로그인 후 -->
						<lable>${loginUser.memberName}님 환영합니다</label> &nbsp;&nbsp; <a href=""><img src="">내
							채팅</a> <a href="logOut.me">로그아웃</a> <a href="myPage.me">마이페이지</a> <a href="sportsPartnerMain.sp">운동파트너</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div id="header_nav">
			<ul>
				<li><a href="serchWms.te">우리동네 운미사</a></li>
				<li><a href="list.bo">우리동네 커뮤니티</a></li>
				<li><a href="eventMain.ev">우리동네 이벤트</a></li>
				<li><a href="markMarket.pm?">마크 상점</a></li>
				<li><a href="noticeFAQ.no">고객센터</a></li>
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
				<ul>
					<li onclick="kakaoLogin();">
				      <a href="javascript:void(0)">
				          <span>카카오 로그인</span>
				      </a>
					</li>
					<li>
      					<!-- 아래와같이 아이디를 꼭 써준다. -->
      					<a id="naverIdLogin_loginButton" href="javascript:void(0)"><span>네이버 로그인</span></a>
					</li>
				</ul>
				<form action="platFormLogin.me" method="post" id="platFormLogin">
					<input type="hidden" value="" name="authKey" id="authKey">
				</form>
				<form action="login.me" method="post">
					<!-- Modal body -->
					<div class="modal-body">
						<label for="memberId" class="mr-sm-2">ID : </label> 
						<input type="text" class="form-control mb-2 mr-sm-2" placeholder="Enter ID" id="memberId" name="memberId"> 
						<br>
						<label for="memberPwd" class="mr-sm-2">Password : </label> 
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
<script>
	
	
	
	//네이버 관련 
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "tWsurTOkArLeKJufP8n7", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8555/wms/index.jsp", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	
	
	naverLogin.init();
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
	    		var auth = naverLogin.user.id;
				console.log(naverLogin.user); 
				console.log('asdasd');
				console.log(auth);
	    		
	            if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					naverLogin.reprompt();
					return;
				}
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});


	var testPopUp;
	function openPopUp() {
	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
	}
	function closePopUp(){
	    testPopUp.close();
	}
	
	function naverLogout() {
		openPopUp();
		setTimeout(function() {
			closePopUp();
			}, 1000);
	}


	// 카카오 관련
	Kakao.init('5d7bca7081de702923386d3aa98982bf'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
		success: function (response) {
			Kakao.API.request({
			url: '/v2/user/me',
			success: function (response) {
				var authKey = response.id;
				platFormLogin(authKey);
			},
			fail: function (error) {
				console.log(error)
			},
			})
		},
		fail: function (error) {
			console.log(error)
		},
		})
	}
	
	function platFormLogin(authKey){
		$.ajax({
			url : "platFormCheck.me",
			data : { authKey : authKey},
			type : "post",
			success : function(result){
				console.log("성공 ");
				if(result == 0){
					alertify.alert("가입 된 회원 아닙니다.");
				}else{
					console.log(authKey)
					$("#authKey").val(authKey);
					$("#platFormLogin").submit();
				}
				
			},
			error : function(){
				console.log('조회 실패');
			}
		})
	}
	
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
	
    </script>


</body>
</html>