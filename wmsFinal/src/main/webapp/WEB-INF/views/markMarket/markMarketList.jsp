<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마크상점이에유</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- markMarket css -->
	<link rel="stylesheet" href="resources/css/markMarket/markMarketList.css"/>
	<script src="resources/js/markMarket/markMarketList.js"></script>
	
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	    <div id="content">
            <div id="content_1">
                <div id="content_1_header">
                    <img src="resources/image/common/markMarket.png" width="1200px" height="300px">
                </div>
            </div>
            <div id="content_2">
                <div class="content_2_mark"> <!--여기에 클래스 추가 시켜서 번호마다 결제 jQuery먹게끔-->
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지1.png" width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>25000</h2>
                    </div>
                    <div class="content_2_markHover">
                        <div class="content2_markHover_1">
                            <h4>쁘띠라고? 정말 사고싶다 ㅇㅈ?</h4>

                        </div>
                        <div class="content2_markHover_2">
                            <button class="markHover_btn1 btn btn-secondary">포인트 구매</button>
                            <button class="markHover_btn2 btn btn-primary">카카오페이</button>
                        </div>
                    </div>
                </div>
                <div class="content_2_mark">
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지2.png" width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>10000</h2>
                    </div>
                </div>
                <div class="content_2_mark">
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지3.png" width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>15000</h2>
                    </div>
                </div>
                <div class="content_2_mark">
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지1.png"width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>25000</h2>
                    </div>
                </div>
                <div class="content_2_mark">
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지2.png"width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>10000</h2>
                    </div>
                </div>
                <div class="content_2_mark">
                    <div class="content_2_markImg">
                        <img src="resources/image/mark/마크이미지3.png" width="300px" height="310px">
                    </div>
                    <div class="content_2_markName">
                        <h2>쁘띠 발렌타인 컬렉션</h2>
                    </div>
                    <div class="content_2_markPrice">
                        <h2>15000</h2>
                    </div>
                </div>

            </div>
            <div id="content_3">
               <h2>페이징 처리</h2> 
            </div>
        </div>
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>