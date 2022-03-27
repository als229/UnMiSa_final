<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 세부사항</title>
<link rel="stylesheet" href="resources/css/team/team.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
    .team-detail-header{
        width: 80%;
        height: 20%;
    }
    .team-detail-logo{
        width: 30%;
        height: 100%;
    }
    .team-detail-name{
        width: 70%;
        height: 100%;
    }
    .team-detail-content{
        width: 80%;
        height: 70%;
    }
    .team-create-date{
        width: 30%;
        height: 10%;
    }
    .team-detaile-inputDate{
        width: 70%;
        height: 10%;
    }
    .team-detail-record-text{
        width: 30%;
        height: 10%;
    }
    .team-detail-recordInput{
        width: 70%;
        height: 10%;
    }
    .team-detail-intro-text{
        width: 30%;
        height: 50%;
    }
    .team-detail-inputIntro{
        width: 70%;
        height: 50%;
    }
    .team-detail-buttonArea{
        width: 80%;
        height:10%;
    }
    .team-join-button{
        width: 50%;
        height: 100%;

    }
    .team-detail-battleApply-button{
        width: 50%;
        height: 100%;
    }
    .team-detail-logo img{
    	width: 280px;
        height: 175px;
    
    }

</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <div class="team-outer">
        <div class="side-bar">
            <a href="myPage.me" class="big-menu">우리동네 운미사</a> <br>
            <a href="serchWms.te">우리동네 운미사 찾기</a> <br>
            <a href="gymReservation.te">우리동네 체육관 대여하기</a> <br>
            <a href="createTeamForm.te">팀 등록하기</a> <br>
        </div>
        <div class="team-detail-header">

            <div class="team-detail-logo">
                <img src="${ t.logoChangeName }" alt="팀 로고">
            </div>
            <div class="team-detail-name">
                <p style="font-size: 40px; font-weight: bold;">${ t.teamName }</p>
            </div>
        </div>
        <div class="team-detail-content">
            <div class="team-create-date"style="text-align: right;">
                <p>생성 날짜 : &nbsp; &nbsp;</p>
            </div>
            <div class="team-detaile-inputDate">
                <p>${ t.createDate }</p>
            </div>
            <div class="team-detail-record-text" style="text-align: right;">
                <p>전적 :  &nbsp; &nbsp;</p>
            </div>
            <div class="team-detail-recordInput">
                <p>${ t.winCount }승 ${ t.loseCount }패</p>
            </div>
            <div class="team-detail-intro-text" style="text-align: right;">
                <p>팀 소개 : &nbsp; &nbsp;</p>
            </div>
            <div class="team-detail-inputIntro">
                <textarea cols="50" rows="12" style="resize: none;" >${ t.teamIntro }</textarea>
            </div>
        </div>
        <div class="team-detail-buttonArea">
            <div class="team-join-button" style="text-align: center;">
                <button style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#team-join-apply-bttopn">팀 가입 신청하기</button>
            </div>
            <div class="team-detail-battleApply-button" style="text-align: center;">
                <button style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#battle-apply-button">대전 신청하기</button>
            </div>
        </div>


    </div>


    <jsp:include page="../common/footer.jsp" />

  
  <!-- Modal -->
  <div class="modal fade" id="team-join-apply-bttopn" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">팀 가입 신청하기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <textarea cols="30" rows="10" style="resize: none;">자기 소개 : 저는 꼭 이 팀에 들어가고 싶슴다 열시미 하겠슴다저는 꼭 이 팀에 들어가고 싶슴다 열시미 하겠슴다저는 꼭 이 팀에 들어가고 싶슴다 열시미 하겠슴다저는 꼭 이 팀에 들어가고 싶슴다 열시미 하겠슴다저는 꼭 이 팀에 들어가고 싶슴다 열시미 하겠다</textarea>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary">팀 가입 신청하기</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

  
  <!-- Modal -->
  <div class="modal fade" id="battle-apply-button" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">대전 신청하기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" style="text-align: center;">
            <input type="date">
            <textarea cols="30" rows="10" style="resize: none;">상대에게 할 말 : 재밌는 게임 한번 해봐영 ^^ 즐겜해영 저희 </textarea>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary">대전 신청하기</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

    
</body>
</html>