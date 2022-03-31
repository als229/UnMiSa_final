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
	<script src="resources/js/markMarket/myPayment.js"></script>
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
    						<th>마크 설정</th>
    					</tr>
    				</thead>
    				<tbody>
    					<c:forEach var="p" items="${ list }">
    						<tr>
    							<td><img src="resources/image/mark/${p.markNo }.jpg" width="130px" height="130px"></td>
    							<c:choose>
	    							<c:when test="${p.paymentMethod == 1}">
		    							<td>카카오페이 결제</td>
	    							</c:when>
    								<c:otherwise>
    									<td>포인트 결제</td>
    								</c:otherwise>
    							</c:choose>
    							<td>${p.price }</td>
    							<td>${p.paymentDate }</td>
    							<td><button onclick='location.href="selectMark.pm?markNo=${p.markNo}"'>마크 설정하기</button></td>
    						</tr>
    					</c:forEach>
    				</tbody>
    			</table>
    		</div>
    		<div id ="content_3">
  				<div id = "pagin-area">
            		<ul class="pagination">
                		<c:choose>
                			<c:when test="${ pi.currentPage eq 1 }">
                    			<li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                			</c:when>
                			<c:otherwise>
                    			<li class="page-item"><a class="page-link" href="markMarket.pm?cpage=${ pi.currentPage - 1 }" style="color: rgb(135, 206, 235);">이전</a></li>
                			</c:otherwise>
                    	</c:choose>
                    	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    		<li class="page-item"><a class="page-link" href="markMarket.pm?cpage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
                   	 	</c:forEach>
                         			
                		<c:choose>
                			<c:when test="${ pi.currentPage eq pi.maxPage }">
                    			<li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
                			</c:when>
							<c:otherwise>
                    			<li class="page-item"><a class="page-link" href="markMarket.pm?cpage=${ pi.currentPage + 1 }" style="color: rgb(135, 206, 235);">다음</a></li>
							</c:otherwise>
                    	</c:choose>
                	</ul>
            	</div>
    		</div>
    	</div>
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>