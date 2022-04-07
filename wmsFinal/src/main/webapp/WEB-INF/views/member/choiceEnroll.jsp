<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 카카오 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<!-- 페이스북 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=699377614579818" nonce="SiOBIhLG"></script>
<style type="text/css">
	.choice-list{
		margin-top:50px;
		width:300px;
	}
	.wrap{
		height:300px;
	}
	.wrap a:hover{
	  cursor: pointer;
		color: rgb(176, 176 ,176);
	}
	.mung{
		color: black;
	}
	

</style>
<title>회원가입 선택</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body style="font-family: 'gmarket_font_medium';">
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap" align="center">
		<div class="choice-list" align="center" >
			<ul class="list-group">
				<li class="list-group-item">
					<a class="mung" href="enroll.me?platForm=1" style="text-decoration-line: none;">일반 회원 가입</a>
				</li>
				<li onclick="kakaoEnroll();" class="list-group-item">
					<a class="mung" href="javascript:void(0)" style="text-decoration-line: none;">카카오 회원가입</a>
				</li>
				<li class="list-group-item">
					<a class="mung" id="naverIdLogin_loginButton" style="text-decoration-line: none;">네이버 회원가입</a>
				</li>
				<li class="list-group-item">
					<a class="mung" id="facebookIdLogin_btn" style="text-decoration-line: none;">페이스북 회원가입</a>
				</li>
				
			</ul>
			<form action="enroll.me" method="post" id="enroll">
				<input type="hidden" value="" id="email" name="email">
				<input type="hidden" value="" id="account" name="account">
				<input type="hidden" value="" id="platForm" name="platForm">
			</form>
		</div>
	</div>
	
	<div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
<script type="text/javascript">
	
$(function(){
	// 페이스 북
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
					var email = r.email;
					var account = r.id;
					var platForm = 4;
					platFormmEmailCheck(account, email, platForm);
					
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
	
	
	
	$('#naverIdLogin_loginButton').click(function(){
		location.href="javascript:void(0)";
	})
	
	
	//네이버 관련 
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "tWsurTOkArLeKJufP8n7", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8555/wms/choice.me", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	
	
	naverLogin.init();
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
	    		var account = naverLogin.user.id;
				var platForm = 3;
	    		platFormmEmailCheck(account, email, platForm);
	    		
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
})



	Kakao.init('5d7bca7081de702923386d3aa98982bf'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoEnroll() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  var account = response.id;
	        	  var email = response.kakao_account.email;
	        	  var platForm = 2;
	        	  platFormmEmailCheck(account, email, platForm);
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
	function platFormmEmailCheck(account, email, platForm){
		$.ajax({
			url : "kakaoEmailCheck.me",
			data : { email : email},
			type : "post",
			success : function(result){
				console.log("성공 ");
				if(result == 1){
					alertify.alert("가입 된 회원 입니다.");
				}else{
					console.log('else 실행')
					$("#account").val(account);
					$("#email").val(email);
					$("#platForm").val(platForm);
					$("#enroll").submit();
				}
				
			},
			error : function(){
				console.log('조회 실패');
			}
		})
		
	}
	
	$(function(){
		
	})

</script>
</body>
</html>