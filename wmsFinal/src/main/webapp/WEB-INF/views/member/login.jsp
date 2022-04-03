<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
#login-div {
	width: 1200px;
	height: 600px;
}

* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.form-wrap {
	width: 380px;
	height: 500px;
	position: relative;
	margin: 6% auto;
	background: #fff;
	padding: 5px;
	overflow: hidden;
}

.button-wrap {
	width: 230px;
	margin: 35px auto;
	position: relative;
	box-shadow: 0 0 600px 9px #fcae8f;
	border-radius: 30px;
}

.togglebtn {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 165px;
	height: 100%;
	background: linear-gradient(to right, #96C7ED, #BEEFFF);
	border-radius: 30px;
	transition: .5s;
}

.social-icons {
	margin: 30px auto;
	text-align: center;
}

.social-icons img {
	width: 30px;
	cursor: pointer;
}

.input-group {
	top: 100px;
	position: absolute;
	width: 280px;
	transition: .5s;
}

.input-field {
	width: 250px;
	padding: 10px 0;
	margin: 5px 0;
	border: none;
	border-bottom: 1px solid #999;
	outline: none;
	background: transparent;
}

.submit {
	width: 250px;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	background: linear-gradient(to right, #96C7ED, #BEEFFF);
	border: 0;
	outline: none;
	border-radius: 30px;
}

#login {
	left: 50px;
}

#register {
	left: 450px;
}
</style>
<!-- 카카오 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<!-- 페이스북 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=699377614579818" nonce="SiOBIhLG"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp" />
	</div>
	<div class="wrap">

		<div id="login-div" align="center">
			<div class="form-wrap">
				<div class="button-wrap">
					<div id="btn"></div>
					<button type="button" class="togglebtn" onclick="login()">LOG
						IN</button>
				</div>
				<div class="social-icons">
					<a href="javascript:void(0)"><img src="resources/image/member/kakao.png" alt="kakao" onclick="kakaoLogin();"></a> 
					<img src="resources/image/member/naver.png" alt="naver"	id="naverIdLogin_loginButton"> 
					<a href="javascript:void(0)"><img src="resources/image/member/facebook.png" alt="facebook" id="facebookIdLogin_btn"></a>
				</div>
				<form action="platFormLogin.me" method="post" id="platFormLogin">
					<input type="hidden" value="" name="authKey" id="authKey">
				</form>
				<form id="login" action="login.me" class="input-group" method="post">
					<input type="text" class="input-field" placeholder="User ID" required name="memberId"> 
					<input type="password" class="input-field" placeholder="Password" required name="memberPwd">
					<button class="submit">Login</button>
				</form>
			</div>
		</div>
		<script>
			
		</script>
	</div>


	<div id="footer_area">
		<jsp:include page="../common/footer.jsp" />
	</div>

	<script>
	

	
	
	
		$(function() {
			
			$('#facebookIdLogin_btn').click(function(){
				fnFbCustomLogin();
			})
			
			//기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
			function statusChangeCallback(res){
				statusChangeCallback(response);
			}

			function fnFbCustomLogin(){
				FB.login(function(response) {
					if (response.status === 'connected') {
						FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
							console.log(r.id)
							var authKey = r.id;
							platFormLogin(authKey);
							
						})
					} else if (response.status === 'not_authorized') {
						// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
						alert('앱에 로그인해야 이용가능한 기능입니다.');
					} else {
						// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
						alert('페이스북에 로그인해야 이용가능한 기능입니다.');
					}
				}, {scope: 'public_profile,email'});
			}

			window.fbAsyncInit = function() {
				FB.init({
					appId      : '699377614579818', // 내 앱 ID를 입력한다.
					cookie     : true,
					xfbml      : true,
					version    : 'v10.0'
				});
				FB.AppEvents.logPageView();   
			};
			
			
			
			
			
			
			
			
			$('#naverIdLogin_loginButton').click(function() {
				location.href = "javascript:void(0)";
			})

			//네이버 관련 
			var naverLogin = new naver.LoginWithNaverId({
				clientId : "tWsurTOkArLeKJufP8n7", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
				callbackUrl : "http://localhost:8555/wms/loginForm.me", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
				isPopup : false,
				callbackHandle : true
			});

			
			naverLogin.init();
			window.addEventListener('load', function() {
				naverLogin.getLoginStatus(function(status) {
					if (status) {
						var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
						var auth = naverLogin.user.id;
						platFormLogin(auth);

						if (email == undefined || email == null) {
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
				testPopUp = window
						.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
			}
			function closePopUp() {
				testPopUp.close();
			}

			function naverLogout() {
				openPopUp();
				setTimeout(function() {
					closePopUp();
				}, 1000);
			}
		})

		// 카카오 관련
		Kakao.init('5d7bca7081de702923386d3aa98982bf'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				success : function(response) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							var authKey = response.id;
							platFormLogin(authKey);
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}

		function platFormLogin(authKey) {
			$.ajax({
				url : "platFormCheck.me",
				data : {
					authKey : authKey
				},
				type : "post",
				success : function(result) {
					if (result == 0) {
						alertify.alert("가입 된 회원이 아닙니다.");
					} else {
						console.log(authKey)
						$("#authKey").val(authKey);
						$("#platFormLogin").submit();
					}

				},
				error : function() {
					console.log('조회 실패');
				}
			})
		}

		//카카오로그아웃  
		function kakaoLogout() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		}
	</script>
</body>
</html>