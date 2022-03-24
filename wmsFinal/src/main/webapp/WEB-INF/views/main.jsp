<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/common/header.js"></script>
<meta charset="UTF-8">
<title>메인</title>
<style>
    div{
    
    }
    
    .wrap{
        width: 1200px;
        height: 2800px;
    }
    .wrap div{
        float: left;
    }
    .carousel{
        width: 1200px;
        height: 20%;
    }
    .news-title{
        width: 1200px;
        height: 5%;
    }
    .news-content{
        width: 1200px;
        height: 25%;
    }
    .recommend-title{
        width: 1200px;
        height: 5%;
        
    }
    .recomment-content{
        
        width: 1200px;
        height: 20%;
    }
    .picture1-area{
        width: 33%;
        height: 100%;
        
    }
    .picture2-area{
        width: 33%;
        height: 100%;
        
    }
    .picture3-area{
        width: 34%;
        height: 100%;
        
    }
    .pructure1{
        width: 100%;
        height: 90%;
    }
    .pructure2{
        width: 100%;
        height: 90%;
    }
    .pructure3{
        width: 100%;
        height: 90%;
    }
    .sports-name{
        width: 100%;
        height: 10%;
    }
    .event-title{
        width: 100%;
        height: 5%;
        
    }
    .event-content{
        width: 100%;
        height: 20%;
    	border: 4px solid rgb(229, 242, 248);
    	border-radius:10px;
    }
    .event-picture{
        width: 40%;
        height: 100%;
        opacity:0.9;

    }
    .event-bigContent{
        width: 60%;
        height: 100%;
        
    }
    .evnet-miniTitle{
        padding-top:20px;
        width: 100%;
        height: 20%;
        border-bottom: 4px solid rgb(229, 242, 248);
        text-align:center;
    }
    .event-minContent{
        padding-top:60px;
        padding-left:20px;
        width: 100%;
        height: 60%;
        font-size:19px;
    }
    .event-miniButton{
     	width: 100%;
        height: 20%;
    	padding-right:40px;
    }
    .event-miniButton>div{
        float:right;
    }
    #event-content_Btn{
    	height:70px;
    	width:300px;
    	background: rgb(229, 242, 248);
    	border-radius:10px;
    	font-size:18px;
    	text-align:center;
    	padding-top:22px;
    	cursor:pointer;
    	color: skyblue;
    }
    #event-content_Btn:hover{
    	background: skyblue;
    	color: steelblue;
    }
</style>
    <link rel="stylesheet" href="resources/css/member/myPage.css"/>
</head>
<body>
	<div id="header_area">
		<jsp:include page="common/header.jsp"/>
	</div>
    <!-- 헤더 밑에 컨텐츠 영역 전체 -->
    <div class="wrap">
        <!-- 케러셀 영역 -->
    	<div class="carousel">
            
        </div>
        <!-- 실시간 소식 제목 -->
        <div class="news-title">
            <br><br>
            
			<h1>&nbsp;&nbsp;우리 동네 최근 소식들</h1>
        </div>
        <!-- 실시간 소식 나오는 영역 -->
        <div class="news-content">

        </div>
        <!-- 나에게 맞는 운동 추천 -->
        <div class="recommend-title">
            <br><br>
            <h1>&nbsp;&nbsp;나에게 맞는 운동 추천</h1>
        </div>
        <!-- 나에게 맞는 운동 전체 영역 -->
        <div class="recomment-content">
            <!-- 첫 번째 사진 영역 -->
            <div class="picture1-area">
                <div class="pructure1">
                    
                </div>
                <div class="sports-name">
                    
                </div>
            </div>
            <!-- 두 번째 사진 영역 -->
            <div class="picture2-area">
                <div class="pructure2">
                    
                </div>
                <div class="sports-name">
                    
                </div>
                    
            </div>
            <!-- 세 번째 사진 영역 -->
            <div class="picture3-area">
                <div class="pructure3">
                    
                </div>
                <div class="sports-name">
                    
                </div>
                    
            </div>
        </div>
        <!-- 이벤트 영역 제목 -->
        <div class="event-title">
            <br><br>
            <h1>&nbsp;&nbsp;진행중인 이벤트!</h1>
        </div>
        <!-- 제목 밑에 컨텐츠 영역 전체 -->
        <div class="event-content">
            <!-- 이벤트 사진 영역 -->
            <div class="event-picture">
                <img src="resources/image/common/eventImg.jpg" width="100%" height="100%" style="border-radius:10px;">
            </div>
            <!-- 이벤트 제목, 내용 들어가는 영역 -->
            <div class="event-bigContent">

                <div class="evnet-miniTitle">
                    <h2>아침형 인간이 되자!!<br> 상쾌한 산책으로 아침 시작하기</h2>
                </div>
                <div class="event-minContent">
                    <p>
                    	아침 출석 이벤트를 완료한 후 아침 조깅을 뛰어보세요!<br><br>
                    	아침 공복(빈 속)의 15~30분 정도의 운동은 장 건강에 정말 좋으며<br><br>
                    	기억력 증강, 엔돌핀 분비 유도/기억력/집중력 향상 등 뇌 건강, 정신건강 향상 등등,<br><br>
                    	 아침에 하는 가벼운 운동 자체는 그 유익성을 일일이 열거하기도 힘들 정도입니다!  </p>
                </div>
                <div class="event-miniButton">
                	<div id="event-content_Btn">이벤트 참여하러 바로가기</div>
                </div>
                <script>
               	 	$(function(){
                		$("#event-content_Btn").click(function(){
                    		location.href = "eventMain.ev";
                    	})
               	 	})
                </script>
            </div>
        </div>
    </div>
    <div id="footer_area">
    	<jsp:include page="common/footer.jsp"/>
    </div>
</body>
</html>