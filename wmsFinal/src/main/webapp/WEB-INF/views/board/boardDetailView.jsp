<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        
   <jsp:include page="../common/header.jsp" />

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 상세보기</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
                <tr>
                    <th width="100">제목</th>
                    <td colspan="3">${ b.boardTitle }</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${b.memberId }</td>
                    <th>작성일</th>
                    <td>${b.createDate }</td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td colspan="3">
                       	<c:choose>
							<c:when test="${ empty b.originName }">                    
		                    	<!-- 첨부파일이 없을경우 -->
		                    	첨부파일이 없습니다.
                    		</c:when>
                    		<c:otherwise>
		                    	<!-- 첨부파일이 있을경우 -->
		                        <a href="${ b.changeName }" download="${ b.originName }">${ b.originName }</a>
                    		</c:otherwise>
                    	</c:choose>
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">${b.boardContent }</p></td>
                </tr>
            </table>
            <br>

            <div align="center">
           		 <c:if test="${loginUser.memberId eq b.memberId }">
                <a class="btn btn-primary" href="nomalUpdateForm.bo?boardNo=${b.boardNo }">수정</a>
                <a class="btn btn-primary" href="nomalDelete.bo?boardNo=${b.boardNo }">삭제</a>
                </c:if>
                <a class="btn btn-danger" href="">취소</a>
            </div>
            <br><br>

            
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                        <th colspan="2">
                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%;"></textarea>
                        </th>
                        <th style="vertical-align:middle"><button class="btn btn-secondary">등록하기</button></th>
                    </tr>
                    <tr>
                        <td colspan="3">댓글(<span id="rcount">3</span>)</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>설윤수</th>
                        <td>다이어트는 내일부터</td>
                        <td>2022-03-17</td>
                    </tr>
                    <tr>
                        <th>박현빈</th>
                        <td>운동이 너무 재밌어요</td>
                        <td>2022-03-16</td>
                    </tr>
                    <tr>
                        <th>킹관민</th>
                        <td>에베베베</td>
                        <td>2022-03-11</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>

    </div>
    
     <jsp:include page="../common/footer.jsp" />
    
</body>
</html>