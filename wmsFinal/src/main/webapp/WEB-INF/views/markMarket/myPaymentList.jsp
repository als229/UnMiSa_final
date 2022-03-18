<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제내역</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- myPayment css -->
	<link rel="stylesheet" href="resources/css/markMarket/myPayment.css"/>
	<script src="resources/js/markMarket/maPayment.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	<div id="content">
    		<div id="content_1">
    			<h2>내 결제 내역</h2>
    		</div>
    		<div id="content_2">
    			<table id = "paymentList">
    				<thead>
    					<tr>
    						<th>마크</th>
    						<th>결제 방법</th>
    						<th>결제 금액</th>
    						<th>결제 날짜</th>
    					</tr>
    				</thead>
    				<tbody>
    					<c:forEach var="p" items="${ list }">
    						<tr>
    							<td><img src="resources/image/mark/${p.markNo }.jpg" width="130px" height="130px"></td>
    							<td>${p.paymentMethod }</td>
    							<td>${p.price }</td>
    							<td>${p.paymentDate }</td>
    						</tr>
    					</c:forEach>
    				</tbody>
    			</table>
    		</div>
    		<div id ="content_3">
  				<!-- 빈칸용 -->
    		</div>
    	</div>
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>