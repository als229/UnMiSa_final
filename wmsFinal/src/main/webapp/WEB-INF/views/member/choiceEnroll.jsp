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
	
	$(function(){
		function basicEnroll(){
			location.href="enroll.me"
		}
		
		
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
				<li onclick="">
					<a href="javascript:void(0)"><span>카카오 회원가입</span></a>
				</li>
				<li onclick="">
					<a href="javascript:void(0)"><span>네이버 회원가입</span></a>
				</li>
			</ul>
		</div>
	</div>
	
	<div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>