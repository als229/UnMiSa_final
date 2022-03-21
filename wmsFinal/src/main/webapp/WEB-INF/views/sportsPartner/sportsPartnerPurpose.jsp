<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
z
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>목표페이지</title>
<style>

		
		div{
         /*  border :  1px solid;  */
           box-sizing : border-box;
           font-family: 'gmarket_font_medium';	
        }

        #spcontent{
            height : 800px;
            width: 1200px;
            padding: 20px 30px;
            margin: auto;
            background-color: rgb(229,242,248);
        }
        
        #spmain{
            width : 1000px;
            height : 630px;
            margin: auto;
            margin-top: 20px;
            background-color: white;
        }
        
        #purposeBorder{
        	float:left;
            border : 3px solid rgb(176,176,176);
            width : 750px;
            height : 500px;
            margin-left : 140px;
            margin-top : 60px;
            position : relative;
        }
        
        #pp_header{
        	margin : auto;
        	margin-top : 12px;
        	background-color : rgb(176,176,176);
        	text-align : center;
        	line-height : 38px;
        	width : 400px;
        	height : 38px;
        	border-radius: 2%;
        }
        #beforePic{
        	position : absolute;
        	z-index : 1;
        	margin-top : 180px;
        	margin-left : 60px;
        }
        
        #afterPic{
        	position : absolute;
        	z-index : 1;
        	margin-top : 180px;
        	margin-left : 806px;
        }
        #before{
        	float : left;
        	margin-left : 100px;
        	margin-top : 20px;
        	width : 245px;
        	height : 320px;
        	background-color : rgb(176,176,176);
        	
        }
        #arrow{
            position : absolute;
        	display : inline-block;
        	margin-left : 10px;
        	width : 20px;
        	height : 20px; 
        	margin-top : 165px;
        }
        #after{
    	    display : inline-block;
        	margin-left : 40px;
        	margin-top : 20px;
        	width : 245px;
        	height : 320px;
        	background-color: rgb(229,242,248);
        }
        #pp_back{
    		float : left;
        	width : 120px;
        	height : 40px;
        	background-color : rgb(176,176,176);
        	margin-left : 160px;
        	margin-top : 20px;
        	text-align : center;
        	line-height : 42px;
        	color : white;
        }
        
        #pp_back:hover{
			cursor: pointer;
			background-color: black;
        }
        #pp_commit{
        
        	display : inline-block;
        	width : 120px;
        	height : 40px;
        	background-color: rgb(229,242,248);
        	margin-top : 20px;
    		margin-left : 167px;
        	text-align : center;
        	line-height : 42px;
        
        }
        #pp_commit:hover{
			cursor: pointer;
			background-color: rgb(135, 206, 235);
        }
        .kg{
      		float : left;
        	background-color:white;
        	width : 80px;
        	height : 25px;
        	margin-left : 14px;
        	margin-top : 22px;
        	text-align : center;
 
        }
        
        
		.cgy{
      		float : left;
        	background-color:white;
        	width : 80px;
        	height : 25px;
        	margin-left : 14px;
        	margin-top : 12px;
        	text-align : center;
 
        }
        
        
        .eq{
        	display : inline-block;
        	background-color:white;
        	margin-left : 14px;
        	margin-top : 22px;
        	width : 30px;
        	height : 25px;
        	text-align : center;
        	
        }
        .eq2{
        	display : inline-block;
        	background-color:white;
        	margin-left : 14px;
        	margin-top : 12px;
        	width : 30px;
        	height : 25px;
        	text-align : center;
        	
        }      
        
        
        
        
        
        .ipkg{
			
			display : inline-block;
            background-color:white;
        	margin-left : 10px;
        	margin-top : 22px;
        	width : 80px;
        	height : 25px;
        	text-align : center;
        	
        }
        
        .ipkg2{
			display : inline-block;
            background-color:white;
        	margin-left : 10px;
        	margin-top : 12px;
        	width : 80px;
        	height : 25px;
        	text-align : center;
        }        
        
        
        
        .input{
        	width : 75px;
        	height : 18px;
        	border : none;
        }
        
        .sportsBorder{
        	width : 218px;
        	height : 160px;
        	margin-left : 14px;
        	margin-top : 16px;
        	background-color:white;
        }
        .sports1{
        	float : left;
        	margin-top : 14px;
        	margin-left : 55px;
       		width : 105px;
       		height : 35px;
       		background-color : rgb(176,176,176);
        }
       	.sports2{
       		display : inline-block;
      	 	margin-left : 55px;
      	 	margin-top : 14px;
       		width : 105px;
       		height : 35px;
       		background-color : rgb(176,176,176);
       	} 
        .sports3{
    	    display : inline-block;
        	margin-left : 55px;
        	margin-top : 14px;
        	width : 105px;
       		height : 35px;
       		background-color : rgb(176,176,176);
        }
        .sp_input{
        	margin-left : 7px;
        	margin-top : 5px;
        	width : 90px;
        	height : 24px;
        	border : none;
        }
        
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div class="wrap">

	<div id="spcontent">
		<h3 style="text-align: center; margin-top: 0px; color: gray;">'${ loginUser.memberName }'를(을) 바꾸는 것은 '${ loginUser.memberName }' 자신 뿐이다.</h3>
		<div id="spmain">
			<div id="beforePic">
	         	<img src="resources/image/sportsPartner/before.png" width="160px" height="240px">
	        </div>
	        
	        
	        <form id="enrollPurpose" action="insert.pp" method="post">
	        <input type = "hidden" name ="purposeNo" value="${ loginUser.memberNo }"></input>
		        <div id="purposeBorder">
		         	<div id="pp_header">운동 목표  :  
						<input type="text" id="" style="height:30px; text-align:center" placeholder="올해는 꼭 다이어트" name="purposeName" required></input>
					</div> 		
		        
		        	<div id="before">
		        		<div class="kg">몸무게</div>
		        		<div class="eq">:</div>
		        		<div class="ipkg">
							<input type="number" class="input" placeholder="현재(kg)" max="200" min="20" name="beginningWeight" required></input>		        		
		        		</div>
		        		
		        		<div class="cgy">체지방률</div>
		        		<div class="eq2">:</div>
		        		<div class="ipkg2">
							<input type="number" class="input" placeholder="현재(%)" max="100" min="0" name="beginningFat" required></input>		        		
		        		</div>
		        		
						<div class="cgy">근육량</div>
		        		<div class="eq2">:</div>
		        		<div class="ipkg2">
							<input type="number" class="input" placeholder="현재(kg)" max="100" min="0" name="beginningMuscle" required></input>		        		
		        		</div>
		        		
		        		<div class="sportsBorder">
		        			<div class="sports1">
		        				<input type="text" id="spip1" class="sp_input" placeholder="진행할운동1" name="sports1"></input>	
		        			</div>
		        			<div class="sports2">
		        				<input type="text" id="spip2" class="sp_input" placeholder="진행할운동2" name="sports2"></input>	
		        			</div>
		        			<div class="sports3">
		        				<input type="text" id="spip3" class="sp_input" placeholder="진행할운동3" name="sports3"></input>	
		        			</div>
		        		</div>
		        	</div>
		        	
		        	
		        	
		        	
		        	
		        	
		        	
		        	
		        	<div id="arrow">>></div>
		        	
		        	<div id="after">
		        		<div class="kg">몸무게</div>
		        		<div class="eq">:</div>
		        		<div class="ipkg">
							<input type="number" class="input" placeholder="목표(kg)" max="200" min="20" name="purposeWeight" required></input>		        		
		        		</div>
		        		
		        		<div class="cgy">체지방률</div>
		        		<div class="eq2">:</div>
		        		<div class="ipkg2">
							<input type="number" class="input" placeholder="목표(%)" max="100" min="0" name="purposeFat" required></input>		        		
		        		</div>
		        		
		        		<!-- 숫자만 입력하게 키보드 제한 설정하기 + before 진행할운동 1에 쓰면 after 1에도 써지게 하기 -->
		        		
						<div class="cgy">근육량</div>
		        		<div class="eq2">:</div>
		        		<div class="ipkg2">
							<input type="number" class="input" placeholder="목표(kg)" max="100" min="0" name="purposeMuscle" required></input>		        		
		        		</div>
		        		
		        		<div class="sportsBorder">
		        			<div class="sports1">
		        				<input type="text" id="spop1" class="sp_input" placeholder="진행할운동1" readonly="readonly"></input>	
		        			</div>
		        			<div class="sports2">
		        				<input type="text" id="spop2" class="sp_input" placeholder="진행할운동2" readonly="readonly"></input>	
		        			</div>
		        			<div class="sports3">
		        				<input type="text" id="spop3" class="sp_input" placeholder="진행할운동3" readonly="readonly"></input>	
		        			</div>
		        		</div>
		        	</div>
		        	
		        	
		        	<script>
		        		$('#spip1').keydown(function(){
		        			$('#spop1').val($(this).val());
		        		});
	        			$('#spip1').change(function(){
		        			$('#spop1').val($(this).val());
		        		});
		        		$('#spip2').keydown(function(){
		        			$('#spop2').val($(this).val());
		        		});
	        			$('#spip2').change(function(){
		        			$('#spop2').val($(this).val());
		        		});
		        		$('#spip3').keydown(function(){
		        			$('#spop3').val($(this).val());
		        		});
	        			$('#spip3').change(function(){
		        			$('#spop3').val($(this).val());
		        		});
		        	
		        	</script>
		        	
		        	<div id="pp_back" onclick="location.href='sportsPartnerMain.sp'">다음에 하기</div>
		        	<button type="submit" id="pp_commit">목표 설정 완료</button>
		        
		        
		        </div>
	        </form>
	        
	        
	        
	        
	        <div id="afterPic">
	         	<img src="resources/image/sportsPartner/after.png" width="160px" height="240px">
	        </div>
        </div>
	</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>