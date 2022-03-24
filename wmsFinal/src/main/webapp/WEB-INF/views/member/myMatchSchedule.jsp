<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 경기 일정</title>
<style>
    div{
        border: solid 1px red;
    }
    .content{
        height: 400px;
        width: 1200px;
    }
    .team-title{
        width: 80%;
        height: 10%;
    }
    .team-list{
        width: 80%;
        height: 90%;
    }
    .myPage-outer{
        height: 700px;
    }
</style>
<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
</head>
<jsp:include page="../common/header.jsp" />
	<div class="myPage-outer" style="height: 800px;">

        <div class="side-bar">
            <a href="myPage.me" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="selectmyJoinTeamList.te">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te">내가 만든 팀</a> <br>
            <a href="">내 결제내역</a> <br>
            <a href="myMatchSchedule.me">내 경기 일정</a> <br>
        </div>
        
            <div class="team-title">
                <h1 style="margin-left: 20px;">내가 가입한 팀 관리</h1>
            </div>
	</div>
<jsp:include page="../common/footer.jsp" />
</body>
</html>