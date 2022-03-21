<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<style type="text/css">
	.choice-list{
		margin-top:100px;
		width:300px;
	}
	.wrap{
		height:500px;
	}

</style>
<title>회원가입 선택</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap" align="center">
		<div class="choice-list" align="center">
			<ul class="list-group">
				<li class="list-group-item">
					<a href="enroll.me?platForm=1"><span>일반 회원 가입</span></a>
				</li>
				<li onclick="kakaoEnroll();" class="list-group-item">
					<a href="javascript:void(0)"><span>카카오 회원가입</span></a>
					
				</li>
				<li class="list-group-item">
					<a id="naverIdLogin_loginButton"><span>네이버 회원가입</span></a>
				</li>
				<li class="list-group-item">
					<a id="facebookIdLogin_loginButton"><span>페이스북 회원가입</span></a>
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
	$('#naverIdLogin_loginButton').click(function(){
		console.log("asdasd");
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
	    		kakaoEmailCheck(account, email);
	    		
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
	        	  kakaoEmailCheck(account, email);
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
	function kakaoEmailCheck(account, email){
		console.log("kakaoEmailCheck")
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
					$("#platForm").val(3);
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