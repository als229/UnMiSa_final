<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        table * {margin:5px;}
        table {width:100%;}
</style>
</head>
<body>
        
   <jsp:include page="../common/header.jsp" />

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 상세보기</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="nomalList.bo">목록으로</a>
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
                    	<c:choose>
                    		<c:when test="${empty loginUser }">
                    	<!-- 로그인 전 -->
                        <th colspan="2">
                            <textarea class="form-control"  cols="55" rows="2" style="resize:none; width:100%;" readonly>로그인 후 이용해주세요.</textarea>
                        </th>
                        <th style="vertical-align:middle"><button class="btn btn-secondary disabled">등록하기</button></th>
                        </c:when>
                        
                        <c:otherwise>
                        <!-- 로그인 후 -->
                        <th colspan="2">
                            <textarea class="form-control"  id="content" cols="55" rows="2" style="resize:none; width:100%;"></textarea>
                        </th>
                        <th style="vertical-align:middle"><button class="btn btn-secondary" onclick="addReply();">등록하기</button></th>
                        </c:otherwise>
                       </c:choose>  
                        
                    </tr>
                    <tr>
                        <td colspan="3">댓글(<span id="rcount">0</span>)</td>
                    </tr>
                </thead>
                <tbody>
                  	
                </tbody>
            </table>
        </div>
        <br><br>
	
    </div>
    	<script>
    		
    	
    	$(function(){
    		selectReplyList();
    	})
    	
    	function addReply(){ // 댓글작성용
    		
    		// 아무것도 입력 안되어있을 때는 요청이 불가능하게끔 만들어주자
    		if($("#content").val().trim() != 0){
    			$.ajax({
						url : "rinsert.bo",
    					data : {
    							refBoardNo : ${ b.boardNo },	// EL
    							replyContent : $("#content").val(),  //jQuery
    							memberId : '${ loginUser.memberId }'
    					}, success:function(status){
    						if(status == "success"){
								selectReplyList();
								$("#content").val("");
    						}
    					}, error:function(){
    						console.log("댓글 작성 실패!");
    					}
    			})
    		} 
    		else{
    			alertify.alert("댓글 똑바로써라 이놈!!!!! 으디!!!댓글을 그렇게써!!!!!!!");	
    		}
    		
    		
    		
    		
    		
    		
    		
    	}
			function selectReplyList(){
				
				$.ajax({
					url:"rlist.bo",
					data:{bno : ${b.boardNo}},
					success:function(list){
						
						let value="";
						for(let i in list){
							
							value += "<tr>"
								+"<tr>" + list[i].memberId + "</th>"
								+"<tr>" + list[i].replyContent + "</th>"
								+"<tr>" + list[i].createDate + "</th>"
								+"</tr>"
						}
						$("#replyArea tbody").html(value);
						$("#rcount").text(list.length);
					},error : function(){
						console.log("댓글 조회 실패")
					}
					
				})
			
			}
		
		
		</script>
     <jsp:include page="../common/footer.jsp" />
    
</body>
</html>