<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
          <style>
 		
 		.pagination{ font-family: 'gmarket_font_medium';}
        #boardList {text-align:center;
        			font-family: 'gmarket_font_medium';}
        #boardList>tbody>tr:hover {cursor:pointer ;
                                    background-color:lightblue;    }

        #pagingArea {width:fit-content; margin:auto;}
        
     	
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
        
	    .side-bar a {
		text-decoration-line: none;
		color: black;
        font-size: 20px;   
        
      
		}
	
		.side-bar a:hover {
		text-decoration-line: none;
		color: rgb(135, 206, 235);
		}
       
       	.region-select{
 		float:right;
 		width:150px;	      	
       	
       	}
    </style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
		
		<div class="innerOuter" style="padding:5% 10%;">
            <h2>우리동네 커뮤니티</h2>
           
	</div>
    <div class="wrap">
    	<div class="content">
    	
            <div class="side-bar" >

                <a href="nomalList.bo">자유게시판</a>
                <br>
                <br>
                <br>
                </div>
             
                <a class="btn btn-secondary" style="background-color: lightblue;border: 1px lightblue;" href="mercenaryList.mbo?boardSelect=0">구해요</a>

    	        <a class="btn btn-secondary" style="background-color: lightblue;border: 1px lightblue;" href="mercenaryList.mbo?boardSelect=1">끼워주세요</a>
                <br>
                <br>
            <!-- 로그인 상태일 경우만 보여지는 글쓰기 버튼 -->
            
           <c:if test="${not empty loginUser }">
	            <a class="btn btn-secondary" style="background-color: lightblue;border: 1px lightblue;float:right;" href="mercenaryEnrollForm.mbo">글쓰기</a>
	            <br>
            </c:if> 
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                        <th>지역</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach var="b" items="${list }">
                    <tr onclick="location.href='mercenaryDetail.mbo?boardNo=${b.boardNo}'">
                        <td>${ b.boardNo } </td>
                        <td>${ b.boardTitle }</td>
                        <td>${ b.memberId }</td>
                        <td>${ b.createDate }</td>
                        <td>${ b.count }</td>
                        <td>${ b.location }</td>
                        	 
                        	
                        
                    </tr>
                   </c:forEach> 
                </tbody>
            </table>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                <c:choose>
                	<c:when test="${pi.currentPage eq 1 }">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    </c:when>
                    <c:otherwise>
                    	<li class="page-item"><a class="page-link" href="/mercenaryList.mbo?cpage=${pi.cureentPage - 1 }">Previous</a>
                    </c:otherwise>
                    
                    </c:choose>
                <c:forEach var="p" begin="${pi.startPage }" end= "${ pi.endPage}">
                    <li class="page-item"><a class="page-link" href="/mercenaryList.mbo?cpage=${ p }">${ p }</a></li>
                </c:forEach> 
         
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                    	</c:when>
                    	<c:otherwise>
                    	 <li class="page-item"><a class="page-link" href="/mercenaryList.mbo?cpage=${ pi.currentPage + 1 }">Next</a></li>	
                    	</c:otherwise>
                    </c:choose>
                </ul>
            </div>

            <br clear="both"><br>

           
            <br><br>
        </div>
        <br><br>

    </div>
    	
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>


</body>
</html>