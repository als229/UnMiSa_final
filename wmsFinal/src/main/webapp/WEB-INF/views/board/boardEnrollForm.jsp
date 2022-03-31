<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
    
   #enrollForm>table {width: 1200px;}
        #enrollForm>table * {margin:5px;}
   div{font-family: 'gmarket_font_medium';}     
</style>
</head>
<body>
        
    <jsp:include page="../common/header.jsp" />

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2 align="center">게시글 작성하기</h2>
            <br>

            <form id="enrollForm" method="post" action="nomalInsert.bo" enctype="multipart/form-data" align="center">
                <table algin="center">
                    <tr>
                        <th><label for="title" style="margin-left: 100px;" >제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="boardTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer" style="margin-left: 100px;">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" value="${loginUser.memberId }"  readonly> 
                        	<input type= "hidden" name="memberNo" value="${loginUser.memberNo }">
                        </td>
                    </tr>
                    <tr>
                        <th><label for="upfile" style="margin-left: 100px;">첨부파일</label></th>
                        <td><input type="file" id="upfile" class="form-control-file border" name="upfile"></td>
                    </tr>
                    <tr>
                        <th><label for="content" style="margin-left: 100px;">내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="boardContent" required></textarea></td>
                    </tr>
                </table>
                <br>

                <div align="center">
                    <button type="submit" class="btn btn-primary"style="background-color: lightblue;border: 1px lightblue;">등록하기</button>
                    <button type="reset" class="btn btn-danger"style="background-color: lightpink;border: 1px lightpink;">취소하기</button>
                </div>
            </form>
        </div>
        <br><br>

    </div>
    
    <jsp:include page="../common/footer.jsp" />
    
</body>
</html>