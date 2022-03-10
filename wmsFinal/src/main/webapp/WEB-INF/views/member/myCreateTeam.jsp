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
            <a href="selectListTeam.te">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te">내가 만든 팀</a> <br>
            <a href="">내 결제내역</a> <br>
            <a href="">내 체육관 예약관리</a> <br>
        </div>
        
            <div class="team-title">
                <h1>내가 만든 팀 관리</h1>
            </div>
            <div class="team-list table " style="width: 80%; height: 85%;">
                <table style="width: 100%;">
                    <thead>
                        
                        <tr>
                            <th></th>                        
                            <th>팀 이름</th>
                            <th>운동 종목</th>
                            <th>탈퇴하기</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">1</td>
                            <td class="team-name" style="vertical-align: middle;">은평구 불 빠따쓰</td>
                            <td style="vertical-align: middle;">야구</td>
                            <td ><button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick = "location.href = 'updateFormTeam.te' ">수정하기</button></td>
                        </tr>



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



    
</body>
</html>