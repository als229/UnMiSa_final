<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<style>

		 div{
         /*  border :  1px solid;  */
           box-sizing : border-box;
           font-family: 'gmarket_font_medium';	
        }
    
        /* 요기부터 에이 */

        #spcontent{
            height : 1100px;
            width: 1200px;
            padding: 20px 30px;
            margin: auto;
            background-color: rgb(229,242,248);
        }

        #spmain{
            width : 1000px;
            height : 1000px;
            margin: auto;
            margin-top: 20px;
            background-color: white;
        }
        #diaryTop{
			width : 400px;
			height : 60px;
			margin-left : 300px;
			text-align : center;
			background-color: rgb(229,242,248);
			color : rgb(176,176,176);
			font-size : 24px;
			line-height : 0px;
		}
		
	    #diaryBorder{
            border : 3px solid rgb(176,176,176);
            width : 800px;
            height : 800px;
            margin-left : 100px;
            margin-top : 40px;
            position : relative;
        }
        #diaryList{
        	width :500px;
        	height : 400px;
        	text-align : center;
        
        }

</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div class="wrap">
		<div id="spcontent">
			<div id="spmain">
				<br>
				<div id="diaryTop">땀방울 수건</div>
				<div id="diaryBorder">
					<div class="innerOuter">
						<br><br>
						<table id="diaryList" class="table table-hover" align="center">
			                <thead>
			                    <tr>
			                        <th colspan="2">제목</th>
			                        <th>날짜</th>
			                    </tr>
			                </thead>
							<tbody>
							
			                  <c:forEach var="sd" items="${ list }">
			                  		<tr id="${ sd.diaryNo }">
				                        <td width="15px">
				                          
					                         <c:if test="${ not empty sd.diaryPhoto }">
					                  			    📷
					                        </c:if>
				                        </td>
				                        <td width="400px">${ sd.diaryTitle }</td>
				                        <td width="90px">${ sd.diaryDate }</td>
				                    </tr>
				                    <input type="hidden" name="diaryNo" value="${ sd.diaryNo }">
				                    <script>
				             			$('#${ sd.diaryNo }').click(function(){
				             				
				             				location.href = "detail.sd?diaryNo=${ sd.diaryNo }";
				             			})
				                    </script>
			                  </c:forEach>
								
								<!-- 현재 조회수가 가장 높은 상위 5개의 게시글 조회해서 뿌리기(ajax 이용) -->
								<!-- 
								<tr onclick="location.href='sportsPartnerDetail.sp'">
									<td width="10px"></td>
									<td width="400px">상남자특)술마시러감</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px">📷</td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px">📷</td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px"></td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px"></td>
									<td width="400px">하남자특)집에서 코딩함5</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px">📷</td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px"></td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px"></td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px">📷</td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								<tr>
									<td width="10px"></td>
									<td width="400px">하남자특)집에서 코딩함</td>
									<td width="90px">2022-03-10</td>
								<tr>
								 -->
							</tbody>
			            </table>
			            
					</div>
					
					<div class="team-paging-area" style="height: 50px; " >
			            <ul class="pagination" style="justify-content : center;" >
			                <c:choose >
			                     <c:when test="${ pi.currentPage eq 1 }">
			                         <li class="page-item disabled"><a class="page-link" href="#"><Previous></a></li>
			                     </c:when>
			                     <c:otherwise>
			                         <li class="page-item"><a class="page-link" href="sportsPartnerDiaryList.sp?cpage=${ pi.currentPage -1 }" style="color: rgb(135, 206, 235);">이전</a></li>
			                     </c:otherwise>
			                </c:choose>
			                
			                <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			                     <li class="page-item"><a class="page-link" href="sportsPartnerDiaryList.sp?cpage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
			                </c:forEach>
			
			                <c:choose>
			                     <c:when test="${ pi.currentPage eq  pi.endPage }">
			                         <li class="page-item disabled"><a class="page-link" href="#"  >다음</a></li>
			                     </c:when>
			                     <c:otherwise>
			                         <li class="page-item"><a class="page-link" href="sportsPartnerDiaryList.sp?cpage=${ pi.currentPage +1 }" style="color: rgb(135, 206, 235);">다음</a></li>
			                     </c:otherwise>
			                </c:choose>
			           
			             </ul>
			        </div>
				
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../common/footer.jsp" />
	
	
</body>
</html>