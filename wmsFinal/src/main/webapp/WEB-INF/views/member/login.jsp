<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
#login-div{
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
    background: linear-gradient(to right, #96C7ED , #BEEFFF );
    border-radius: 30px;
    transition: .5s;
}
.social-icons {
    margin: 30px auto;
    text-align: center;
}
.social-icons img {
    width: 30px ;
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
    background: linear-gradient(to right, #96C7ED , #BEEFFF);
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
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap">
		
		<div id="login-div" align="center">
			<div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                </div>
                <div class="social-icons">
                    <a href="javascript:void(0)"><img src="resources/image/member/kakao.png" alt="kakao" onclick="kakaoLogin();"></a>
                    <img src="resources/image/member/naver.png" alt="naver" id="naverIdLogin_loginButton">
                    <img src="resources/image/member/facebook.png" alt="facebook">
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
    	<jsp:include page="../common/footer.jsp"/>
    </div>
    
    <script>

	$(function(){
		$('#naverIdLogin_loginButton').click(function(){
			console.log('asdasd');
			location.href="javascript:void(0)";
		})
		
		
		//네이버 관련 
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "tWsurTOkArLeKJufP8n7", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
				callbackUrl: "http://localhost:8555/wms/loginForm.me", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
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
					platFormLogin(auth);
		    		
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
	})
	
		
	


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
					alertify.alert("가입 된 회원이 아닙니다.");
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