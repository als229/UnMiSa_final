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
<title>zz</title>
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
        	height : 90px;
        	margin-top : 25px;
        	width : 335px;
        	margin-left : 15px;
        	background-color : rgb(176,176,176);
        	
        }
        
        .sportsBox{
        	text-align : center;
        	width : 80px;
        	height : 60px;
        	background-color: rgb(229,242,248);
        	margin-top : 15px;
        	line-height : 60px;
        	/* border : 3px solid rgb(135, 206, 235); */
        	
        }
        
        .sportsBox:hover{
           cursor: pointer;
           border : 3px solid rgb(135, 206, 235);
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
    		width : 140px;
    		height : 55px;
    		text-align : center;
    		line-height : 60px;
    		background-color : rgb(176,176,176);
    		margin-left : 250px;
    	}
		#diary_commit{
			display :inline-block;
			width : 140px;
			height : 55px;
			margin-top : 35px;
			margin-left : 30px;
			text-align : center;
    		line-height : 60px;
			background-color : rgb(229,242,248);
		}	
		
		#back:hover{
           cursor: pointer;
           background-color : rgb(229,242,248);
        }
        #diary_commit:hover{
           cursor: pointer;
           background-color : rgb(176,176,176);
        }
        
        
        #md_kg{
        	float : left;
        	margin-left : 20px;
        	width : 80px;
	    	hegiht : 100px;

        }
        #ip_kg{
	    	display : inline-block;
	    	margin-left : 20px;
	    	width : 80px;
	    	hegiht : 100px;
	    }
	    
        #md_gb{
        	float : left;
        	margin-left : 20px;
        	width : 80px;
	    	hegiht : 100px;
        }
        #ip_gb{
	    	display : inline-block;
	    	margin-left : 20px;
	    	width : 80px;
	    	hegiht : 100px;
	    }
        
    	#md_gy{
        	float : left;
    		margin-left : 20px;
    		width : 80px;
	    	hegiht : 100px;
 
    	}
	    #ip_gy{
	    	display : inline-block;
	    	margin-left : 20px;
	    	width : 80px;
	    	hegiht : 100px;
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
					오늘의 일기 작성
				</div>
				<div id="diaryBorder">
					<div id="diaryTitle">제목</div>
					
					<form id="enrollDiary" action="insert.sd" method="post" enctype="multipart/form-data">
					<input type="hidden" value="${ loginUser.memberNo }" name="memberNo">
					<input id="hdspc1" type ="hidden" name ="sportsCount1" value="0"></input>
					<input id="hdspc2" type ="hidden" name ="sportsCount2" value="0"></input>
					<input id="hdspc3" type ="hidden" name ="sportsCount3" value="0"></input>
					
					<div id="titleInput">
						<input type="text" id="tt_input" placeholder="제목" maxlength="20" name="diaryTitle" required></input>	
					</div>		
					<div id="contentInput">
						<textarea id="ct_input" placeholder="내용" name="diaryContent" required></textarea>
					</div>
					<div class="diaryBt" id="diaryPicture">사진</div>
					<input type="file" id="file" name="upfile"></input>
					
					<button type="button" class="btn btn-primary" id="modal_box" data-bs-toggle="modal" data-bs-target="#inbody-update">
						인바디 변동
					</button>
					<div id="checkBorder">
						<div id="sports1" class="sportsBox">
							${ p.sports1 }
						</div>
						
						<div id="sports2" class="sportsBox">
							${ p.sports2 }
						</div>
		
						<div id="sports3" class="sportsBox">
							${ p.sports3 }
						</div>
										  
					</div>
					
					
					
						<div class="modal" id="inbody-update" tabindex="-1">
					        <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					            <h5 class="modal-title">인바디 변동</h5>
					            </div>
					            <div class="modal-body">
					     	
					            <div id="md_kg">
					            	몸무게 
					            </div>
					            <div id="ip_kg">
					            	<input type="number" step="0.1" class="input" placeholder="몸무게(kg)" max="200" min="20" name="currentWeight" value="${ p.currentWeight }" required></input>
					            </div>
					            <br>
					            
					            
					            <div id="md_gb">
					            	체지방률
					            </div>
					            <div id="ip_gb">
					            	<input type="number" step="0.1" class="input" placeholder="체지방률(%)" max="100" min="0" name="currentFat" value="${ p.currentFat }" required></input>
					            </div>
								<br>
					
					            <div id="md_gy">
					            	근육량
					            </div>
					            <div id="ip_gy">	
					            	<input type="number" step="0.1" class="input" placeholder="근육량(kg)" max="100" min="0" name="currentMuscle" value="${ p.currentMuscle }" required></input>
					            </div>
					            
					            
					            
					            </div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-primary"  data-bs-dismiss="modal">인바디 변동</button>
					                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">돌아가기</button>
					            </div>
					           
					           	<script>
									$(function(){
										
										var i=0;
										var o=0;
										var p=0;
										var color=["rgb(135, 206, 235)","rgb(176,176,176)"];
										
										
										
										$('#sports1').click(function(){
											$(this).css("color",color[i]);
											
											i++;
											if(i==2){i=0};
											
											if(i==1){
												$('#hdspc1').attr('value', 1);
											};
							
							
										});
										
							
										
										// 선택되어 있을경우 히든으로 보내는 카운트의 밸루를 1로 보내서 카운트에 추가하게해줌
										
										
										
										
										$('#sports2').click(function(){
											$(this).css("color",color[o]);
											
											o++;
											if(o==2){o=0};
											
											
											if(o==1){
												$('#hdspc2').attr('value', 1);
											}
							
										});

										
										
										$('#sports3').click(function(){
											$(this).css("color",color[p]);
											
											p++;
											if(p==2){p=0};
											
											if(p==1){
												$('#hdspc3').attr('value', 1);
											}
							
										});
										
										

										
									});
									
								</script>
					           
					            
					        </div>
					        </div>
					    </div>

					<div id="back" onclick="location.href='sportsPartnerMain.sp'">다음에 하기</div>
					<button type="submit" id="diary_commit">땀방울 기록</button>
					</form>
				</div>
				

			</div>
    	</div>
	</div>
	

	
	
	
	<jsp:include page="../common/footer.jsp" />
	
	


   
</body>
</html>