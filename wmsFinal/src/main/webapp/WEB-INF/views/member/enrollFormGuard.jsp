<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<link rel="stylesheet" href="resources/css/member/memberForm.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/member/member.js"></script>
</head>
<body>
	<div class="header">
		<div class="logo_bg">
			<img src="resources/image/common/WMS2.png" alt="운미사">
		</div>
	</div>
	<div class="outer">
		<div class="m-title">
			<h1>회원 정보 수정</h1>
		</div>
		
		<div class="m-content">
		<form action="">
			<div class="">
				<h4>비밀번호를 입력해 주세요</h4>
			</div>
			<div class="input-area">
				<input type="password" >
			</div>
			
			<div class="btn-area">
				<button type="submit">입력하기</button>
			</div>
		</form>
		</div>
	</div>
</body>
</html>