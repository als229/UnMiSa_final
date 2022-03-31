<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 관리</title>

<style>

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

    .team-list>table {
    margin: auto;
    text-align: center;

    }
    .teamHeader{
        width: 80%;
        height: 15%;
    }
    .teamLogo{
        width: 30%;
        height: 100%;
    }
    .teamName{
        width: 70%;
        height: 100%;
    }
    .buttonArea{
        width: 100%;

    }





</style>
<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
	<div class="myPage-outer" style="height: 950px;">

        <div class="side-bar">
            <a href="myPage.me" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="selectmyJoinTeamList.te?memberNo=${ loginUser.memberNo }">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te?memberNo=${ loginUser.memberNo }">내가 만든 팀</a> <br>
            <a href="myPayment.pm">마크 관리</a> <br>
        </div>
        
            <div class="team-title">
                <h1 style="margin-left: 20px;">팀원 관리</h1>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myMatchSchedule.me?teamNo=${t.teamNo}'">경기 기록 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='updateFormTeam.te?teamNo=${t.teamNo}'">팀 수정</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myTeamMemberList.te?teamNo=${t.teamNo}'">팀원 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='battleApplyList.te?teamNo=${t.teamNo}'">경기 신청 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myTeamMemberJoinList.te?teamNo=${t.teamNo}'">멤버 신청 관리</button>
	        </div>
            <div class="teamHeader">
                <div class="teamLogo">
                    <img src="${t.logoChangeName }" alt="팀 로고"style="width:140px; height:140px;margin-left: 40px;">
                </div>
                <div class="teamName">
                    <p style="font-size: 30px; font-weight: bold;">${t.teamName }</p>
                </div>    
            </div>
            <div class="team-list table " style="width: 80%; height: 70%;">
                <table style="width: 100%;">
                    <thead>
                        
                        <tr>
                            <th>멤버 번호</th>                        
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>가입날짜</th>
                            <th>탈퇴시키기</th>
                        </tr>
                    </thead>
                    <tbody>
						<c:forEach var="mt" items="${ mtList }">
	                        <tr>
	                            <td style="vertical-align: middle;">${ mt.memberNo }</td>
	                            <td class="team-name" style="vertical-align: middle;">${ mt.memberName }</td>
	                            <td style="vertical-align: middle;">${ mt.birthDate }</td>
	                            <td style="vertical-align: middle;">${ mt.joinDate }</td>
	                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" data-bs-toggle="modal" data-bs-target="#deleteMember" data-test="${ mt.teamNo }"data-test2="${ mt.memberNo }">탈퇴시키기</button></td>
	                        </tr>
	
						</c:forEach>
                    </tbody>
                        
                    </table>
                </div>
            
        </div>
        <div class="team-paging-area" style="height: 50px; " >
            <ul class="pagination" style="justify-content : center;" >
                <c:choose >
                     <c:when test="${ pi.currentPage eq 1 }">
                         <li class="page-item disabled"><a class="page-link" href="#"><Previous></a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="list.bo?cpage=${ pi.currentPage -1 }" style="color: rgb(135, 206, 235);">이전</a></li>
                     </c:otherwise>
                </c:choose>
                
                <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                     <li class="page-item"><a class="page-link" href="list.bo?cpage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
                </c:forEach>

                <c:choose>
                     <c:when test="${ pi.currentPage eq  pi.endPage }">
                         <li class="page-item disabled"><a class="page-link" href="#"  >다음</a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="list.bo?cpage=${ pi.currentPage +1 }" style="color: rgb(135, 206, 235);">다음</a></li>
                     </c:otherwise>
                </c:choose>
           
             </ul>
        </div>

    <jsp:include page="../common/footer.jsp" />


  <!-- Modal -->
  <div class="modal fade" id="deleteMember" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">팀원 탈퇴시키기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <p>팀원을 정말 탈퇴시키시겠습니까?</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" onclick="quitTeam();">탈퇴시기키</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
  
  
    <script>
    
	    var TEAMNO = "";
	    var MEMBERNO = "";
	    $(document).ready(function() {     
	        $('#deleteMember').on('show.bs.modal', function(event) {          
	        	TEAMNO = $(event.relatedTarget).data('test');
	        	MEMBERNO = $(event.relatedTarget).data('test2');
	        });
	    });
	    
		function quitTeam(){
		    	location.href="quitTeam.te?teamNo="+TEAMNO+"&memberNo="+MEMBERNO;
		};
    
    </script>
    
    
</body>
</html>