<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 동네 운미사 찾기</title>
<link rel="stylesheet" href="resources/css/team/team.css?ver=1"/>
<style>

</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
    
    <div class="team-outer">
    	<div class="side-bar">
            <a href="myPage.me" class="big-menu">우리동네 운미사</a> <br>
            <a href="">우리동네 운미사 찾기</a> <br>
            <a href="selectListTeam.te">우리동네 체육관 대여하기</a> <br>
            <a href="selectListCreateTeam.te">팀 등록하기</a> <br>
        </div>
        <div class="search-area">
            <div class="serach1">
				<select name="battle-type">
                    <option value="대전">대전</option>
                    <option value="비대전">비대전</option>
                </select>
            </div>
            <div class="search2">
                <select name="ball-game">
                    <option value="구기종목">구기종목</option>
                    <option value="비구기종목">비구기종목</option>
                </select>
            </div>
            <div class="search3">

            </div>
            <div class="search-button">

            </div>
        </div>
        <div class="teamList-area">


        </div>

    </div>
    
    
    
    
    
    
    
    
    
        <jsp:include page="../common/footer.jsp" />
</body>
</html>