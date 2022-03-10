<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/common/header.css"/>
<meta charset="UTF-8">
<title>zz</title>
<style>

        div{
         /*  border :  1px solid;  */
           box-sizing : border-box;
           font-family: 'gmarket_font_medium';	
        }
    
        /* 요기부터 에이 */

        #spcontent{
            height : 1000px;
            width: 1200px;
            padding: 20px 30px;
            margin: auto;
            background-color: rgb(229,242,248);
        }

        #spmain{
            width : 1000px;
            height : 900px;
            margin: auto;
            margin-top: 20px;
            background-color: white;
        }
		#diaryTop{
			width : 400px;
			height : 60px;
			margin-left : 300px;
			line-height : 60px;
			text-align : center;
			background-color: rgb(229,242,248);
			color : rgb(176,176,176);
			font-size : 24px;
		}
		
	    #diaryBorder{
            border : 3px solid rgb(176,176,176);
            width : 800px;
            height : 700px;
            margin-left : 100px;
            margin-top : 40px;
            position : relative;
        }
        
        #diaryTitle{
        	float : left;
        	margin-left : 150px;
        	margin-top : 30px;
        	width : 100px;
        	height : 40px;
        	text-align : center;
        	background-color : rgb(176,176,176);
        	color : white;
        	line-height : 40px;
        }
        #titleInput{
        	display : inline-block;
        	margin-top : 30px;
        	margin-left : 20px;
        	width: 400px;
        	height : 40px;
        	background-color : rgb(176,176,176);
        	color : white; 
        	line-height : 40px;
        }
        #tt_input{
        	margin-left : 10px;
    	    width: 375px;
        	height : 30px;
        	color : wihte;
        }
        #contentInput{
     	    margin-left : 150px;
     	    margin-top : 20px;
     	    
        	width : 520px;
        	height: 400px;
        	background-color : rgb(176,176,176);
        }
        #ct_input{
        	margin-left : 30px;
        	margin-top : 20px;
       		width : 460px;
        	height : 360px;
        }
        #diaryPicture{
        	float : left;
        	margin-left : 150px;
        	margin-top : 20px;
        	width : 100px;
        	height : 40px;
        	text-align : center;
        	background-color : rgb(176,176,176);
        	color : white;
        	line-height : 40px;
        
        }
        
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="wrap">
		<div id="spcontent">
			<div id="spmain">
				<br>
				<div id="diaryTop">
					3월 10일의 땀방울
				</div>
				<div id="diaryBorder">
					<div id="diaryTitle">제목</div>
					<div id="titleInput">
						<input type="text" id="tt_input" placeholder="제목"></input>	
					</div>		
					<div id="contentInput">
						<textarea id="ct_input" placeholder="내용"></textarea>
					</div>
					<div class="diaryBt" id="diaryPicture">사진</div>
					<div>fdsfs</div>
				
				
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>