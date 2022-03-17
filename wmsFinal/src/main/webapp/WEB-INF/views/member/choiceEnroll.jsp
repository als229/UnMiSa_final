<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<style type="text/css">
	

</style>
<script type="text/javascript">
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
	        	  console.log(account);
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
					$("#platForm").val(2);
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
<title>회원가입 선택</title>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
	<div class="wrap">
		<div>
			<ul>
				<li>
					<a href="enroll.me?platForm=1"><span>일반 회원 가입</span></a>
				</li>
				<li onclick="kakaoEnroll();">
					<a href="javascript:void(0)"><span>카카오 회원가입</span></a>
					
				</li>
				<li onclick="">
					<a href="javascript:void(0)"><span>네이버 회원가입</span></a>
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
</body>
</html>