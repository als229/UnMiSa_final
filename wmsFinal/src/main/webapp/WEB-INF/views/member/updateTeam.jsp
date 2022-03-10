<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 수정하기</title>
<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
<style>

    .content{
        height: 400px;
        width: 1200px;
    }
    .team-title{
        width: 80%;
        height: 15%;
    }
    .team-name{
        width: 80%;
        height: 5%;
    }
    .team-name-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamName{
        width: 70%;
        height: 100%;
    }
    .sports-name{
        width: 80%;
        height: 5%;
    }
    .sports-name-text{
        width: 30%;
        height: 100%;
    }
    .inputSportsName{
        width: 70%;
        height: 100%;
    }
    .team-intro{
        width: 80%;
        height: 40%;
    }
    .team-intro-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamIntro{
        width: 70%;
        height: 100%;
    }
    .team-logo{
        width: 80%;
        height: 30%;
    }
    .team-logo-text{
        width: 30%;
        height: 100%;
    }
    .inputImgTeamLogo{
        width: 30%;
        height: 100%;
    }
    .inputTeamLogoArea{
        width: 40%;
        height: 100%;
    }
    .button-area{
        width: 80%;
        height: 5%;
    }
    .updateButton{
        width: 50%;
        height: 100%;
    }
    .cancelButton{
        width: 50%;
        height: 100%;
    }

</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
	<div class="myPage-outer" style="height: 800px;">

        <div class="side-bar">
            <a href="myPage.me" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="selectListTeam.te">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te">내가 만든 팀</a> <br>
            <a href="">내 결제내역</a> <br>
            <a href="">내 체육관 예약관리</a> <br>
        </div>
        
        <div class="team-title">
            <h1 style="margin-left: 20px;">팀 수정하기</h1>
            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " onclick="location.href='myTeamMemberList.te'">팀원관리</button>
        </div>
		
        <div class="team-name">
            <div class="team-name-text" style="text-align: right; ">
                <p>팀 이름 : &nbsp;&nbsp;</p>
            </div>
            <div class="inputTeamName">
                <p>은평구 불빠따쓰</p>
            </div>
        </div>
        <div class="sports-name">
            <div class="sports-name-text"style="text-align: right;">
                <p>운동 종목 : &nbsp;&nbsp;</p>
            </div>
            <div class="inputSportsName">
                <p>야구</p>
            </div>
        </div>
        <div class="team-intro">
            <div class="team-intro-text" style="text-align: right;">
                <p>팀 소개 : &nbsp;&nbsp;</p>
            </div>
            <div class="inputTeamIntro">
                <textarea cols="50" rows="10" style="resize: none;">우리는 멍멍팀입니다</textarea>
            </div>
        </div>
        <div class="team-logo">
            <div class="team-logo-text" style="text-align: right;">
                <p>팀 로고 : &nbsp;&nbsp;</p>
                
            </div>
            <div class="inputImgTeamLogo">
                <img src="" alt="팀 로고">
            </div>
            <div class="inputTeamLogoArea">
                <input type="file">
            </div>
        </div>
        <div class="button-area">
            <div class="updateButton" style=" text-align: center;">
                <button style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary ">수정하기</button>
            </div>
            <div class="cancelButton"style=" text-align: center;">
                <button style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " onclick="location.href='selectListCreateTeam.te'">취소하기</button>
            </div>
        </div>

            
    </div>


    <jsp:include page="../common/footer.jsp" />



    
</body>
</html>