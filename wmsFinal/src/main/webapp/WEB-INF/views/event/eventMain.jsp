<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<script src ="https://unpkg.com/sweetalert/dist/sweetalert.min.js " > </script> 
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript"
	src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
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
        	<img src="resources/image/common/eventBanner.png" width="1196px" height="300px">
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
                		<th>일 </th>
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
    	<c:forEach var="a" items="${ list }">
    	<script>
    	
    	
    	$(function(){
    		var attYear = $(".year_mon").text().substring(0,4);
    		var attMonth = $(".year_mon").text().substring($(".year_mon").text().indexOf("년")+1,$(".year_mon").text().indexOf("월"));
    		
    		
    		//
    		//console.log(${a.attendanceYear});
    		 $("input[name=preMon]").click(function() { // 이전달
    		 attYear = $(".year_mon").text().substring(0,4);
    	     attMonth = $(".year_mon").text().substring($(".year_mon").text().indexOf("년")+1,$(".year_mon").text().indexOf("월"));
    	     $(".date").each(function(index){
                 if(attYear==${a.attendanceYear} && attMonth==${a.attendanceMonth} && $(".date").eq(index).text()==${a.attendanceDate}) { 
                    
                 	$(".date").eq(index).addClass('colAttend');
                 }
             })  		
             })
    		 $("input[name=nextMon]").click(function() { // 이전달
    		 attYear = $(".year_mon").text().substring(0,4);
    	     attMonth = $(".year_mon").text().substring($(".year_mon").text().indexOf("년")+1,$(".year_mon").text().indexOf("월"));
    	     $(".date").each(function(index){
                 if(attYear==${a.attendanceYear} && attMonth==${a.attendanceMonth} && $(".date").eq(index).text()==${a.attendanceDate}) { 
                    
                 	$(".date").eq(index).addClass('colAttend');
                 }
             })  		
             })
    		 
    		
			$(".date").each(function(index){
                if(attYear==${a.attendanceYear} && attMonth==${a.attendanceMonth} && $(".date").eq(index).text()==${a.attendanceDate}) { 
                   
                	$(".date").eq(index).addClass('colAttend');
                }
            })  		
    	
    		
    	})
    	</script>
    	</c:forEach>
    	
    	
    	
    	<c:if test="${loginUser != null }">
    	<form id="frm">
    		<div id="content_3">
    			<input id="content" type="hidden" name="content" value="${content }"/>
    			<input type = "button" class="QrRe_Btn btn btn-primary chbutton" id="execute" value = "QR코드 받기"/>
    			<input type = "button" class="QrAt_Btn btn btn-primary chbutton" id="check"value = "QR코드 출석하기"/>
    		</div>
    		<!-- 받아들인 qr 값-->
			<div class="scan_con" style="display: none;">
				<label>SCAN QR CODE</label> <input type="text" name="text" id="text"
					 placeholder="scan qrcode" class="form-control">
			</div>
    			<!-- qr박스 -->
			<div class="rc_background2">
				<div class="popup2">
					<div class="cd-popup-container2">
						<div class="rc_cont2">
							<img id="img" style=" width: 350px; height: 350px;" onload="this.style.display = 'inline-block'" />
						</div>
						<ul id="close2" class="cd-buttons2">
							<li class="rc_li2"><a class="rc_a2" id="rc_close2">닫기</a></li>
						</ul>
					</div>
				</div>
			</div>
    	</form>
    	</c:if>
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
    <div class="videoModal">
		<div class="container" id="container" >
			<p id="closeScan" style="cursor: pointer;  font-size:30px;">&#120;</p>
			<div class="col-md-6" style="width: 100%; text-align:center;">
				<video id="preview" width="130%" style="margin-left:190px;"></video>
			</div>
		</div>
	</div>
    
    
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
    
    
</body>
</html>