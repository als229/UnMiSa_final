<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기 신청 관리</title>
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
                <h1 style="margin-left: 20px;">경기 신청 관리</h1>
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
                            <th>대전날짜</th>
                            <th>팀 소개</th>
                            <th>수락버튼</th>
                            <th>거절버튼</th>
                            <th>채팅하기</th>
                        </tr>
                    </thead>
                    <tbody>
					<c:forEach var="bt" items="${ bList }">
                        <tr>
                            <td class="team-name" style="vertical-align: middle;">${ bt.awayTeamName }</td>
                            <td style="vertical-align: middle;">${ bt.battleDate }</td>
                            <td><button type="button" class="btn btn-primary teamIntro"data-bs-toggle="modal" data-bs-target="#teamIntro" data-test="${ bt.teamIntro }">팀 소개</button></td>
                            <td><button type="button" class="btn btn-primary acceptButton" id="acceptButton" value="${ bt.battleNo }">수락하기</button></td>
                            <td><button type="button" class="btn btn-primary refuseButton" value="${ bt.battleNo }">거절하기</button></td>
                            <td><button type="button" class="btn btn-primary " id="awayBossNo" value="${ bt.awayBossNo }" data-away-teamName="${bt.awayTeamName}" data-away-memberNo="${ bt.awayBossNo }">채팅하기</button></td>
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



  <div class="modal fade" id="teamIntro" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">팀 소개</h5>
        </div>
        <div class="modal-body">
            <p id="introText"> </p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

        <jsp:include page="../common/footer.jsp" />
        
	<script>
	
	    var introTeam = "";
	
		$(function(){
		    
		    $(document).ready(function() {     
		        $('#teamIntro').on('show.bs.modal', function(event) {          
		        	introTeam = $(event.relatedTarget).data('test');
		        	
		        });
		    });
		    
			$(".teamIntro").on("click",function(){
				
				$("#introText").text(introTeam);
			})			
			
			
		
		})	
			$("#acceptButton").click(function(){
				var battleNo = $(this).val();
				var memberNo = '${ loginUser.memberNo }';
				
				location.href="acceptBattle.te?battleNo=" + battleNo + "&memberNo=" + ${ loginUser.memberNo };
			})			
			
			$(".refuseButton").on("click",function(){
				var battleNo = $(this).val();
				var memberNo = '${ loginUser.memberNo }';
				
				location.href="refuseBattle.te?battleNo=" + battleNo + "&memberNo=" + ${ loginUser.memberNo };
			})	
			
			$(document).on("click", "#awayBossNo", function(){
				var awayMemberNo = $(this).val();
				var memberNo = '${ loginUser.memberNo }';
				var teamName = '${t.teamName}';
				var awayTeamName = $(this).attr("data-away-teamName");
				var chatName = teamName + "vs" + awayTeamName;
				$.ajax({
					url : 'leaderChatAdd.ct',
					type : "get",
					data : {
						memberNo : memberNo,
						awayMemberNo : awayMemberNo,
						chatName : chatName
					},
					success : function(result){
							console.log(result)
							var roomNo = result[0];
							var roomName = result[1];
							window.open("chatWindow.ct?roomNo="+roomNo+"&roomName="+roomName, "채팅창", "width=550 , height=800");
					},
					error : function(){
						console.log('조회 실패');
					}
				})	
			})			
		
	</script>
</body>
</html>