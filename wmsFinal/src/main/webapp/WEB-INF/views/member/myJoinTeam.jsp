<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 가입한 팀 관리</title>

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
    .myPage-outer{
        height: 700px;
    }
    .team-list>table {
    margin: auto;
    text-align: center;

}

.team-name:hover {
    cursor: pointer;
    background-color: rgb(229,242,248);
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
	<div class="myPage-outer" style="height: 800px;">

        <div class="side-bar">
            <a href="myPage.me" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="selectmyJoinTeamList.te?memberNo=${ loginUser.memberNo }">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te?memberNo=${ loginUser.memberNo }">내가 만든 팀</a> <br>
            <a href="myPayment.pm">마크 관리</a> <br>
        </div>
        
            <div class="team-title">
                <h1 style="margin-left: 20px;">내가 가입한 팀 관리</h1>
            </div>
            <div class="team-list table " style="width: 80%; height: 85%;">
                <table style="width: 100%;">
                    <thead>
                        
                        <tr>
                            <th>팀 번호</th>                        
                            <th>팀 이름</th>
                            <th>운동 종목</th>
                            <th>탈퇴하기</th>
                        </tr>
                    </thead>
                    <tbody>
						<c:forEach var="t" items="${ myJoinTeamList }">
	                        <tr class="team-info">
	                            <td style="vertical-align: middle;">${ t.teamNo }</td>
	                            <td class="team-name" style="vertical-align: middle;">${ t.teamName }</td>
	                        	<input type="hidden" name="teamNo" value="${ t.teamNo }">
	                            <td style="vertical-align: middle;">${ t.sportsName }</td>
	                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" data-bs-toggle="modal" data-bs-target="#delete-team" data-test="${ t.teamNo }"data-test2="${ loginUser.memberNo }">탈퇴하기</button></td>
	                        	
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
                         <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="selectmyJoinTeamList.te?myJoinPage=${ pi.currentPage -1 }" style="color: rgb(135, 206, 235);">이전</a></li>
                     </c:otherwise>
                </c:choose>
	            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                <c:choose>
	                	<c:when test="${ pi.currentPage eq p }">
	                    	 <li class="page-item disabled"><a class="page-link" href="selectmyJoinTeamList.te?myJoinPage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
	                	</c:when>
	                	<c:otherwise>
		                     <li class="page-item"><a class="page-link" href="selectmyJoinTeamList.te?myJoinPage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
	                	</c:otherwise>
	                </c:choose>
	            </c:forEach>

                <c:choose>
                     <c:when test="${ pi.currentPage eq  pi.endPage }">
                         <li class="page-item disabled"><a class="page-link" href="#"  >다음</a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="selectmyJoinTeamList.te?myJoinPage=${ pi.currentPage +1 }" style="color: rgb(135, 206, 235);">다음</a></li>
                     </c:otherwise>
                </c:choose>
           
             </ul>
        </div>

    <jsp:include page="../common/footer.jsp" />

  <div class="modal fade" id="delete-team" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">팀 탈퇴하기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <p>정말 팀을 탈퇴하시겠습니까?</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" onclick="quitTeam();">탈퇴하기</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>




    
    <script>
    
	    var TEAMNO = "";
	    var MEMBERNO = "";
	    $(document).ready(function() {     
	        $('#delete-team').on('show.bs.modal', function(event) {          
	        	TEAMNO = $(event.relatedTarget).data('test');
	        	MEMBERNO = $(event.relatedTarget).data('test2');
	        });
	    });
	    
	    
		    function quitTeam(){
		    	location.href="quitTeam.te?teamNo="+TEAMNO+"&memberNo="+MEMBERNO;
		    	
		    };
		    
	        $(function(){
	        	
	        	$(".team-name").click(function(){
		        	location.href='teamDetail.te?teamNo= ' + $(this).next().val();        	
		        })
			})
	    
    
    </script>
    
</body>
</html>