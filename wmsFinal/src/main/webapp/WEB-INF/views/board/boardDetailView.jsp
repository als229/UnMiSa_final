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
                    <td colspan="3">다이어트는 내일부터</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>admin</td>
                    <th>작성일</th>
                    <td>2020-02-07</td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td colspan="3">
                        <a href="" download="">파일명.jpg</a>
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">응 운동 안해~</p></td>
                </tr>
            </table>
            <br>

            <div align="center">
           
                <a class="btn btn-primary" href="">수정</a>
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