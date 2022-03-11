<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 등록하기</title>
<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
    div{
        border: 1px solid red;
    }

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
        height: 10%;
    }
    .updateButton{
        width: 50%;
        height: 100%;
    }
    .cancelButton{
        width: 50%;
        height: 100%;
    }
    .team-local-area{
        width: 80%;
        height: 10%;
    }
    .team-local-area-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamLocalArea{
        width: 70%;
        height: 100%;
    }

</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="myPage-outer" style="height: 800px;">

    	<div class="side-bar">
            <a href="serchWms.te" class="big-menu">우리동네 운미사</a> <br>
            <a href="serchWms.te">우리동네 운미사 찾기</a> <br>
            <a href="gymReservation.te">우리동네 체육관 대여하기</a> <br>
            <a href="createTeamForm.te">팀 등록하기</a> <br>
        </div>
        
        <div class="team-title">
            <h1 style="margin-left: 20px;">팀 생성하기</h1>
        </div>
		<form action="" method="post">

            <div class="team-name">
                <div class="team-name-text" style="text-align: right; ">
                    <p>팀 이름 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamName">
                    <input type="text" name="teamName">
                </div>
            </div>
            <div class="sports-name">
                <div class="sports-name-text"style="text-align: right;">
                    <p>운동 종목 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputSportsName">
                    <input type="text" name="sportsName">
                </div>
            </div>
            <div class="team-intro">
                <div class="team-intro-text" style="text-align: right;">
                    <p>팀 소개 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamIntro">
                    <textarea cols="50" rows="10" style="resize: none;" name="teamIntro"></textarea>
                </div>
            </div>
            <div class="team-local-area">
                <div class="team-local-area-text" style="text-align: right;">
                    <p>지역 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamLocalArea">
                    <input type="text" name="localArea">
                </div>
            </div>
            <div class="team-logo" style="height: 200px;">
                <div class="team-logo-text" style="text-align: right;">
                    <p>팀 로고 : &nbsp;&nbsp;</p>
                    
                </div>
                <div class="inputImgTeamLogo">
                    <img src="" alt="팀 로고">
                </div>
                <div class="inputTeamLogoArea">
                    <input type="file" name="teamLogo">
                </div>
            </div>
            <div class="button-area" style="margin-top: 20px;">
                <div class="updateButton" style=" text-align: center;">
                    <button type="submit" style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary ">생성하기</button>
                </div>
                <div class="cancelButton"style=" text-align: center;">
                    <button type="reset" style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " >취소하기</button>
                </div>
            </div>
        </form>
            
            
    </div>


    <jsp:include page="../common/footer.jsp" />

	
</body>
</html>