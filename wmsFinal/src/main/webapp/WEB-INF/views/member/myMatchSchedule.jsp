<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 경기 일정</title>
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
                <h1 style="margin-left: 20px;">경기 기록 관리</h1>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myMatchSchedule.me?teamNo=${t.teamNo}'">경기 기록 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='updateFormTeam.te?teamNo=${t.teamNo}'">팀 수정</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myTeamMemberList.te?teamNo=${t.teamNo}'">팀원 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='battleApplyList.te?teamNo=${t.teamNo}'">경기 신청 관리</button>
	            <button style="float: right; background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); margin-right: 65px;" class="btn btn-primary " onclick="location.href='myTeamMemberJoinList.te?teamNo=${t.teamNo}'">멤버 신청 관리</button>
            </div>
            <div class="teamHeader">
                <div class="teamLogo">
                    <img src="${t.logoChangeName }"style="width:140px; height:140px;margin-left: 40px;" alt="팀 로고">
                </div>
                <div class="teamName">
                    <p style="font-size: 30px; font-weight: bold;">${t.teamName }</p>
                </div>    
            </div>
            <div class="team-list table " style="width: 80%; height: 70%;">
                <table style="width: 100%;">
                    <thead>
                        <tr>
                            <th>대결신청팀</th>
                            <th>경기 종목</th>
                            <th>대전날짜</th>
                            <th>결과 입력하기</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="b" items="${ bList }">
                    		<c:choose>
		                        <c:when test="${ b.resultStatus eq 0}">
			                        <tr>
			                            <td>${ b.teamName }</td>
			                            <td>${ b.sportsName }</td>
			                            <td>${ b.battleDate }</td>
			                            <td>
			                            <button type="button" class="btn btn-primary insertResult" style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick="insertResult(${b.battleNo}, 1);">승</button>
			                            <button type="button" class="btn btn-primary insertResult " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick="insertResult(${b.battleNo}, 2);">무</button>
			                            <button type="button" class="btn btn-primary insertResult " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick="insertResult(${b.battleNo}, 3);">패</button>
			                            </td>
			                        </tr>
		                        </c:when>
		                        <c:otherwise>
			                        <tr>
			                            <td>${ b.teamName }</td>
			                            <td>${ b.sportsName }</td>
			                            <td>${ b.battleDate }</td>
				                            <c:choose>
					                            <c:when test="${ b.resultStatus eq 1 }">
					                            	<td style="color:green">승리</td>
					                            </c:when>
					                            <c:when test="${ b.resultStatus eq 2 }">
					                            	<td style="color:gray">무승부</td>
					                            </c:when>
					                            <c:otherwise>
					                            	<td style="color:red">패배</td>
				                            </c:otherwise>
			                            </c:choose>
			                        </tr>
		                        </c:otherwise>
                        
                    		</c:choose>
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
        
	<script>
	    
		function insertResult (battleNo, resultStatus){
			
			location.href="insertBattleResult.te?battleNo=" + battleNo + "&resultStatus=" + resultStatus;
		}
		
	</script>
</body>
</html>