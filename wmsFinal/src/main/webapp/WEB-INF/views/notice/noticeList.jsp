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
	<script src="resources/js/notice/noticeList.js"></script>
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
                    <div class="Notice_select"><a href="">공지사항</a></div>
                    <div class="FAQ_select"><a href="">FAQ</a></div>
                    <div class="ChattingQ_select"><a href="">1:1 채팅문의</a></div>
                </div>
                <div class="noticeList_title">
                 	  공지사항
                </div>
            </div>
            <div id="content_2">
                <div class="content2_searchDiv">
                    <select name="notice_search" id="notice_search">
                        <option value="while">전체</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input type="text" placeholder="검색어를 입력하세요" id="notice_searchBar">
                    <button class="notice_searchBtn btn btn-secondary">검색</button>
                </div>
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
            			<tr>
            				<td>18</td>
            				<td>이세계에서 치트능력을 손에 넣은 나는 현실세계에서도 무쌍한다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>18</td>
            			</tr>
            			<tr>
            				<td>17</td>
            				<td>이세계에서 스킬을 해체했더니 치트인 신부가 증가했습니다</td>
            				<td>2022-02-26</td>
            				<td></td>
            				<td>41</td>
            			</tr>
            			<tr>
            				<td>16</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>15</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td></td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>14</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>13</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>12</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>11</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>10</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>9</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            			<tr>
            				<td>8</td>
            				<td>이세계에서 돌아온 전 용사지만 데스게임에 휘말렸습니다</td>
            				<td>2022-02-26</td>
            				<td>@</td>
            				<td>23</td>
            			</tr>
            		</tbody>
            	</table>
            	<div id = "notice_enrollBtnDiv"> <!-- 관리자면 보여주는 등록하기 버튼 -->
            	 <button class="notice_enrollBtn btn btn-primary">공지사항 등록하기</button>
            	</div>
            </div>
            <div id="content_4"><h4>페이징 처리</h4></div>
        </div>
        </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>


</body>
</html>