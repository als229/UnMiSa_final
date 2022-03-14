<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Notice css -->
	<link rel="stylesheet" href="resources/css/notice/noticeList.css"/>
	<script src="resources/js/notice/notice.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
	<div id="content">
            <div id="content_0">
                <!--content부분 하얀색 배경할라고-->
            </div>
            <div id="content_1">
                <div class="content_1_select">
                    <div class="Notice_select"><a href="noticeList.no">공지사항</a></div>
                    <div class="FAQ_select"><a href="noticeFAQ.no">FAQ</a></div>
                    <div class="ChattingQ_select"><a href="">1:1 채팅문의</a></div>
                </div>
                <div class="noticeList_title">
                 	  공지사항
                </div>
            </div>
            <div id="content_2">
             <form id="content_2_searchForm" action="" method="get" align="center">
                <div class="content2_searchDiv">
                    <select name="notice_search" id="notice_search">
                        <option value="while">전체</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input type="text" placeholder="검색어를 입력하세요" id="notice_searchBar">
                    <button class="notice_searchBtn btn btn-secondary">검색</button>
                </div>
             </form>
            </div>
            <div id="content_3">
            	<table class="table" id = "noticeTable">
            		<thead>
            			<tr>
            				<td>번호</td>
            				<td>제목</td>
            				<td>작성일</td>
            				<td>첨부파일</td>
            				<td>조회</td>
            			</tr>
            		</thead>
            		<tbody>
            		
            			<c:forEach var="n" items="${ list }">
            			<tr>
            				<td class="nno">${n.noticeNo }</td>
            				<td>${ n.noticeTitle }</td>
            				<td>${ n.createDate }</td>
            				<td>
            					<c:if test="${ not empty n.originName }">
            						@
            					</c:if>
            				</td>
            				<td>${ n.count }</td>
            			</tr>
            			</c:forEach>
            			
            		</tbody>
            	</table>
            	<div id = "notice_enrollBtnDiv"> <!-- 관리자면 보여주는 등록하기 버튼 -->
            	 <button class="notice_enrollBtn btn btn-primary">공지사항 작성하기</button>
            	</div>
            </div>
            <div id="content_4">
            	<div id = "pagin-area">
            		<ul class="pagination">
                		<c:choose>
                			<c:when test="${ pi.currentPage eq 1 }">
                    			<li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                			</c:when>
                			<c:otherwise>
                    			<li class="page-item"><a class="page-link" href="noticeList.no?cpage=${ pi.currentPage - 1 }" style="color: rgb(135, 206, 235);">이전</a></li>
                			</c:otherwise>
                    	</c:choose>
                    	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    		<li class="page-item"><a class="page-link" href="noticeList.no?cpage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
                   	 	</c:forEach>
                         			
                		<c:choose>
                			<c:when test="${ pi.currentPage eq pi.maxPage }">
                    			<li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
                			</c:when>
							<c:otherwise>
                    			<li class="page-item"><a class="page-link" href="noticeList.no?cpage=${ pi.currentPage + 1 }" style="color: rgb(135, 206, 235);">다음</a></li>
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