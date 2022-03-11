<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 동네 운미사 찾기</title>
<link rel="stylesheet" href="resources/css/team/team.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
    .search-area{
        width: 80%;
        height: 10%;
    }
    .search1{
        width: 10%;
        height: 100%;
    }
    .search2{
        width: 15%;
        height: 100%;
    }
    .search3{
        width: 20%;
        height: 100%;
    }
    .search-button{
        width: 20%;
        height: 100%;
    }
    .team-menu-title{
        width: 80%;
        height: 10%;
    }
    .team-paging-area{
        width: 80%;
        height: 10%;
    }
    .team-name-inTable:hover {
        cursor: pointer;
        background-color: rgb(229,242,248);
    }

</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
    
    <div class="team-outer">
    	<div class="side-bar">
            <a href="serchWms.te" class="big-menu">우리동네 운미사</a> <br>
            <a href="serchWms.te">우리동네 운미사 찾기</a> <br>
            <a href="gymReservation.te">우리동네 체육관 대여하기</a> <br>
            <a href="createTeamForm.te">팀 등록하기</a> <br>
        </div>
        <div class="team-menu-title">
            <h1 style="margin-left: 40px;">우리 동네 운미사</h1>
        </div>
        <div class="search-area" style="text-align: center;" >
            <div class="search1" style="margin-left: 100px;">
				<select name="battle-type"  class="form-select form-select-sm" style="margin-top: 5px;">
                    <option value="battle">대전</option>
                    <option value="noneBattle">비대전</option>
                </select>
            </div>
            <div class="search2"style="margin-left: 40px;">
                <select name="ball-game"class="form-select form-select-sm" style="margin-top: 5px;">
                    <option value="ballGame">구기종목</option>
                    <option value="noneBallGa me">비구기종목</option>
                </select>
            </div>
            <div class="search3"style="margin-left: 40px;" >
                <select name="sports-name"class="form-select form-select-sm" style="margin-top: 5px;">
                    <option value="baseball">야구</option>
                </select>
            </div>
            <div class="search-button">
                <button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "">검색하기</button>
            </div>
        </div>
        <div class="teamList-area">
            <table class="team-list table " style="width: 950px; text-align: center;">
                <thead>
                    <!-- 승률	운동종목	지역	팀 이름 	 승점	팀 등록 날짜	 동네 순위 -->
                    <tr>
                        <th>No.</th>
                        <th>승률</th>
                        <th>운동종목</th>
                        <th>지역</th>
                        <th>팀 이름</th>
                        <th>승점</th>
                        <th>팀 등록 날짜</th>
                        <th>동네 순위</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10</td>
                        <td>70%</td>
                        <td>야구</td>
                        <td>은평구</td>
                        <td class="team-name-inTable">은평구 불빠따쓰</td>
                        <td>240점</td>
                        <td>2022-03-12</td>
                        <td>1</td>
                    </tr>


                </tbody>
            </table>

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

    </div>
    
    <script>
        $(function(){
            $(".team-name-inTable").click(function(){
                location.href="teamDetail.te";
            })
        })
    </script>
    
    
    
    
    
    
    
        <jsp:include page="../common/footer.jsp" />
</body>
</html>