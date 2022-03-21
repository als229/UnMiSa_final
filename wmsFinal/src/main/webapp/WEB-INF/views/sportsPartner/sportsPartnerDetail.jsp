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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" href="resources/css/common/header.css"/>
<meta charset="UTF-8">
<title>디테일뷰</title>
<style>

        div{
         /*  border :  1px solid;  */
           box-sizing : border-box;
           font-family: 'gmarket_font_medium';	
        }
    
        /* 요기부터 에이 */

        #spcontent{
            height : 1100px;
            width: 1200px;
            padding: 20px 30px;
            margin: auto;
            background-color: rgb(229,242,248);
        }

        #spmain{
            width : 1000px;
            height : 1000px;
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
            height : 800px;
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
        	margin-left : 200px;
        	width: 400px;
        	height : 40px;
        	background-color : rgb(176,176,176);
        	color : white; 
        	line-height : 40px;
        	text-align : center;
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
        	background-color : white;
        	border : solid 10px rgb(176,176,176);
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
        	width : 520px;
        	height : 160px;
        	text-align : center;
        	background-color : rgb(176,176,176);
        	color : white;
        	line-height : 40px;
        }
        #file{
        	display : inline-block;
        	margin-left : 20px;
        	margin-top : 27px;
        	font-size : 18px;
        }
       
        #modal_box{
   
			float:left;
        	margin-top : 25px;
    		margin-left : 150px;
        	width : 170px;
        	height : 90px;
        	color : black;
        	background-color: rgb(229,242,248);
      		text-align : center;
      		font-size : 22px;
      		line-height : 80px;
        }
        #checkBorder{
        	display:inline-block;
        	height : 140px;
        	margin-top : 20px;
        	width : 310px;
        	margin-left : 15px;
        	background-color : rgb(176,176,176);
        	
        }
        
        .sportsBox{
        	text-align : center;
        	width : 65px;
        	height : 60px;
        	background-color: rgb(229,242,248);
        	margin-top : 15px;
        	line-height : 60px;
        	font-size : 14px;
        	/* border : 3px solid rgb(135, 206, 235); */
        	
        }
        

        #sports1{
        	float : left;
        	margin-left : 25px;
        	color : rgb(176,176,176);
        	
        }
        #sports2{	
        	display :inline-block;
        	margin-left : 20px;
        	color : rgb(176,176,176);
     
        }
    	#sports3{
    		display :inline-block;
    		margin-left : 20px;
    		color : rgb(176,176,176);
    
    	
    	}
    	#back{
    		float : left;
    		margin-top : 35px;
    		width : 160px;
    		height : 75px;
    		text-align : center;
    		line-height : 80px;
    		background-color : rgb(176,176,176);
    		margin-left : 300px;
    	}

		
		#back:hover{
           cursor: pointer;
           background-color : rgb(229,242,248);
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
					${ sd.diaryDate }의 땀방울
				</div>
				<div id="diaryBorder">
		
					<div id="titleInput">${ sd.diaryTitle }</div>		
					<div id="contentInput">
						${ sd.diaryContent }
					</div>
					
					<c:choose>
						<c:when test="${ not empty sd.diaryPhoto }">
							<div class="diaryBt" id="diaryPicture">
									
								<div>
									<a href="${pageContext.request.contextPath}/${ sd.diaryPhoto }" download="${ sd.diaryPhoto }">${ sd.diaryPhoto }</a>
									<img src="${pageContext.request.contextPath}/${ sd.diaryPhoto }" width="360" height="110">
								</div>
							</div>
						</c:when>
						<c:otherwise>

						</c:otherwise>
				
					</c:choose>
				
			
					
					<div id="back" onclick="location.href='sportsPartnerMain.sp'">운동파트너로 돌아가기</div>
			
				</div>
			</div>
    	</div>
	</div>
	

	<jsp:include page="../common/footer.jsp" />
</body>
</html>