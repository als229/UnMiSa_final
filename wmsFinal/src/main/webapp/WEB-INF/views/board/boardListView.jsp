<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

  <style>
 
        #boardList {text-align:center;}
        #boardList>tbody>tr:hover {cursor:pointer ;
                                    background-color:lightblue;    }

        #pagingArea {width:fit-content; margin:auto;}
        
        #searchForm {
            width:80%;
            margin:auto;
        }
        #searchForm>* {
            float:left;
            margin:5px;
        }
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
    </style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	<div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2 align="center">우리동네 커뮤니티</h2>
              <br>
            <br>
            <br>
            <br>
             <form id="searchForm" action="" method="get" align="center">
                <div class="select">
                    <select class="custom-select" name="condition">
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </div>
                <div class="text">
                    <input type="text" class="form-control" name="keyword">
                </div>
                <button type="submit" class="searchBtn btn btn-secondary" style="background-color: lightblue;border: 1px lightblue;">검색</button>
            </form>
            <br>
            <br>
            <br>
            <br>
            <!-- 로그인 상태일 경우만 보여지는 글쓰기 버튼 -->
            <a class="btn btn-secondary" style="background-color: lightblue;border: 1px lightblue;float:right;" href="enrollForm.bo">글쓰기</a>
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th>작성일</th>
                        <th>첨부파일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>5</td>
                        <td>글그르그르그륵르그르그</td>
                        <td>설윤수</td>
                        <td>10</td>
                        <td>2020-02-10</td>
                        <td>★</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>운동 개노잼~~~</td>
                        <td>킹관민</td>
                        <td>10</td>
                        <td>2020-02-07</td>
                        <td>★</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>게레게ㅔ레레게게레</td>
                        <td>킹대성</td>
                        <td>10</td>
                        <td>2020-02-03</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>카ㅏ라라가가라앙</td>
                        <td>김민준</td>
                        <td>100</td>
                        <td>2020-02-01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>기리리기리리기ㅣㄹ</td>
                        <td>킹호</td>
                        <td>45</td>
                        <td>2019-12-25</td>
                        <td>★</td>
                    </tr>
                </tbody>
            </table>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
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