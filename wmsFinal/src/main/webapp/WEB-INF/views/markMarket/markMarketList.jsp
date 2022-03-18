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
            	<c:forEach var="p" items="${ list }">
                	<div id ="content_2_mark" class="content_2_mark${p.markNo }"> <!--여기에 클래스 추가 시켜서 번호마다 결제 jQuery먹게끔-->
                    	<div class="content_2_markImg">
                        	<img src="resources/image/mark/${p.markNo }.jpg" width="300px" height="310px"style=" border-radius:10px;">
                    	</div>
                    	<div class="content_2_markName">
                        	<h2>${p.markName }</h2>
                    	</div>
                    	<div class="content_2_markPrice">
                        	<h2>${p.price }</h2>
                    	</div>
                    	
                    	<div id = content_2_markHover class="content_2_markHover${p.markNo }">
                        	<div class="content2_markHover_1">
                            	<h4>${p.markContent }</h4>

                        	</div>
                        	<div class="content2_markHover_2">
                            	<input type=hidden value="${p.price }" id="hiidenPrice">
                            	<button class="markHover_btn1 btn btn-secondary">포인트 구매</button>
                            	<input type=hidden value="${p.markNo}">
                            	<input type=hidden value="${p.price }">
                            		<button class="markHover_btn2 btn btn-primary">카카오페이</button>
                            	<input type=hidden value="${p.markNo }">
                        	</div>
                    	</div>
                	</div>
                	<script>
                				$(function(){
                					$('.content_2_mark${ p.markNo }').mouseenter(function(){
                	       				$(".content_2_markHover${p.markNo }").show();
                	  	  			})
                	   			 	$('.content_2_mark${p.markNo }').mouseleave(function(){
                	      		 		$(".content_2_markHover${p.markNo }").hide();
                	    			})
                				})
                	</script>
                	<c:forEach var="m" items="${ list2 }">
                		<c:if test="${ loginUser.memberNo == m.memberNo && p.markNo == m.markNo }">
                			<script>
                				$(function(){
                	      		 		$(".content_2_markHover${p.markNo }").remove();
                				})
                			</script>
                	    		
                		</c:if>
                		
                	</c:forEach>
                	<c:if test="${ loginUser != null }">
                	<script>
                	$(function(){
                		$(".markHover_btn1").click(function(){
                			if(${loginUser.point > p.price }){
                		    	location.href = "paymentPoint.pm?markNo="+$(this).next().val()+"&&memberNo="+${ loginUser.memberNo } +"&&price="+$(this).prev("#hiidenPrice").val();
                			}else{
                				alertify.alert("포인트가 부족합니다.");
                			}
                		})
                	})
                	</script>
                	</c:if>
                </c:forEach>
                	<c:if test="${ loginUser != null }">	
                	<script>
                	$(function(){
                		$(".markHover_btn2").click(function(){
                		  $.ajax({
                			  url:'kakaopay.pm',
                			  data : {
                				  	price:$(this).prev().val(),
                				  	markNo:$(this).next().val(),
                				  	memberNo:${loginUser.memberNo}},
                			  dataType:'json',
                			  success:function(result){
                				  var box = result.next_redirect_pc_url;
                				  window.open(box);
                			  },
                			  error:function(error){
                				  alert(error);
                			  }
                		  });
                		})
                		
                	})
                	</script>
                	</c:if>
               </div>
            <div id="content_3">
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