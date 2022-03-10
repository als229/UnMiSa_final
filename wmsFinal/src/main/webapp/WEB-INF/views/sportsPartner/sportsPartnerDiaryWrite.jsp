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
            height : 800px;
            width: 1200px;
            padding: 20px 30px;
            margin: auto;
            background-color: rgb(229,242,248);
        }

        #spmain{
            width : 1000px;
            height : 700px;
            margin: auto;
            margin-top: 20px;
            background-color: white;
        }
		#diaryTitle{
			float:left;
			width : 400px;
			height : 60px;
			margin-left : 300px;
			
			margin-top : 40px;
			background-color: rgb(229,242,248);
			
		}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="wrap">
		<div id="spcontent">
			<div id="spmain">
				<div id="diaryTitle">
				</div>
				
				
				
				
				
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>