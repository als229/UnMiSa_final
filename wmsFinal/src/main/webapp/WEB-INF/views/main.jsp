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
        height:1000px;
    }
    .wrap div{
        float: left;
    }
    .carousel{
        width: 1200px;
        height: 400px;
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
        height: 100px;
        
    }
    .event-content{
        width: 100%;
        height: 500px;
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
    	color: black;
    }
    #event-content_Btn:hover{
    	background: skyblue;
    	color: steelblue;
    }
    
    /* Slideshow container */
.slideshow-container {
  max-width: 1440px;
  position: relative;
  margin: auto;
}

/* effect */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 5.0s;
  animation-name: fade;
  animation-duration: 5.0s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;	
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.3s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}
.mySlideDiv img{
	width:1200px;
	height:400px;
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
            <div class="slideshow-container">

			     <div class="mySlideDiv fade active">
			        <img src="resources/image/common/1.jpg"> 
			     </div>
			            
			     <div class="mySlideDiv fade">
			         <img src="resources/image/common/2.jpg"> 
			     </div>
			            
			     <div class="mySlideDiv fade">
			         <img src="resources/image/common/3.jpg"> 
			     </div>
			     
			     <div class="mySlideDiv fade">
			         <img src="resources/image/common/4.jpg"> 
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
                    	
                    	$(document).ready(function () {
                    		$(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
                    		
                    		setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
                    	});

                    	//이전 슬라이드
                    	function prevSlide() {
                    		$(".mySlideDiv").hide(); //모든 div 숨김
                    		var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
                    		var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
                    		
                    		//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
                    		$(".mySlideDiv").each(function(index,item){ 
                    			if($(this).hasClass("active")) {
                    				currentIndex = index;
                    			}
                    	        
                    		});
                    		
                    		//새롭게 나타낼 div의 index
                    		var newIndex = 0;
                    	    
                    		if(currentIndex <= 0) {
                    			//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
                    			newIndex = allSlide.length-1;
                    		} else {
                    			//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
                    			newIndex = currentIndex-1;
                    		}

                    		//모든 div에서 active 클래스 제거
                    		$(".mySlideDiv").removeClass("active");
                    	    
                    		//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
                    		$(".mySlideDiv").eq(newIndex).addClass("active");
                    		$(".mySlideDiv").eq(newIndex).show();

                    	}

                    	//다음 슬라이드
                    	function nextSlide() {
                    		$(".mySlideDiv").hide();
                    		var allSlide = $(".mySlideDiv");
                    		var currentIndex = 0;
                    		
                    		$(".mySlideDiv").each(function(index,item){
                    			if($(this).hasClass("active")) {
                    				currentIndex = index;
                    			}
                    	        
                    		});
                    		
                    		var newIndex = 0;
                    		
                    		if(currentIndex >= allSlide.length-1) {
                    			//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
                    			newIndex = 0;
                    		} else {
                    			//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
                    			newIndex = currentIndex+1;
                    		}

                    		$(".mySlideDiv").removeClass("active");
                    		$(".mySlideDiv").eq(newIndex).addClass("active");
                    		$(".mySlideDiv").eq(newIndex).show();
                    		
                    	}

                    	
                    	
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