<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Event css -->
	<link rel="stylesheet" href="resources/css/event/eventMain.css"/>
	<script src="resources/js/event/eventMain.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	<div id="content_1">
        	<img src="resources/image/common/markMarket.png" width="1196px" height="300px">
    	</div>
    	<div id = "content_2">
    		<table id="calendar">
        		<thead>
            		<tr>
               			<th><input name="preMon" type="button" value="<"></th>
                		<th colspan="5" class="year_mon"></th>
                		<th><input name="nextMon" type="button" value=">"></th>
            		</tr>
            		<tr>
                		<th>일</th>
                		<th>월</th>
                		<th>화</th>
                		<th>수</th>
                		<th>목</th>
                		<th>금</th>
                		<th>토</th>
            		</tr>
        		</thead>
        		<tbody>
        		</tbody>
    		</table>
    	</div>
    	<div id="content_3">
    		<button class="QrRe_Btn btn btn-primary">QR코드 받기</button>
    		<button class="QrAt_Btn btn btn-primary">QR코드 출석하기</button>
    	</div>
    	<div id="content_4">
    		<div id="content_4_text1">
    		<p>
    			*** 이벤트 참여하는 방법 ***<br><br>
    			1. 'QR코드 받기' 버튼을  누르고  QR코드를 스마트폰으로 찍어주세요.<br><br>
    			2. 'QR코드 출석하기'버튼을 누른 후  캠에다가 찍은 QR코드를 비춰주세요.<br><br><br><br>
    		</p>
    		</div>
    		<div id="content_4_text2">
    			<p>
    				!!주의 사항!!<br><br>
    				07:00시부터 07:10 분까지만 가능합니다.<br><br>
    				1분이라도 늦으면 찍히지 않습니다.(지각은 금물) 
    			</p>
    		</div>
    	</div>
    	
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>