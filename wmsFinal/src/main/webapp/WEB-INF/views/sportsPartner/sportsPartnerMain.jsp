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
    <title>스포츠 파트너</title>
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
            height : 630px;
            margin: auto;
            margin-top: 20px;
            background-color: white;
        }

        #m3{
            float: left;
            width: 200px;
            margin-top : 42px;
            margin-left : 60px;
            height : 550px;
        }

        #profileBorder{
            
            border : 3px solid rgb(176,176,176);
            width : 200px;
            height : 200px;
        }
        #profileName{
            float: left;
            width:50px;
            margin-left: 60px;
            margin-top: 6px;
        }
        #mark{
            margin-top : 6px;
        }
        #profile{
            width : 180px;
            height: 158px;
            margin : auto;
            margin-top : 4px;
        }

        #inbody{
            border : 3px solid rgb(176,176,176);
            width : 345px;
            height : 300px;
            display: inline-block;
            margin-left : 14px;
            margin-top : 42px;
            
        }

        #day{
            border : 3px solid rgb(176,176,176);
            width : 200px;
            height : 160px;
            margin-top : 30px;
        }
        #famousSaying{
            width : 140px;
            height : 90px;
            margin : auto;
            margin-top : 10px;
        }
        #diaryWrite{
            float: left;
            background-color: rgb(176,176,176);
            margin-top : 30px;
            width : 200px;
            height : 114px;
            border-radius:6%;
        }
        #ment{
            background-color: rgb(229,242,248);
            width: 200px;
            height:60px;
            float: left;
        }
        #graph{
            background-image:url(resources/image/sportsPartner/달리깅.jpg);
            background-size: 600px;
            border : 3px solid rgb(176,176,176);
            width : 660px;
            height : 215px;
            margin-left: 300px;
            margin-top : 20px;
        }

        #diaryList5{
            border : 3px solid rgb(176,176,176);
            width : 300px;
            height : 300px;
            display: inline-block;
            margin-left : 40px;
            margin-top : 42px;
            float: left;
        }

        #diaryListPlus{
            display: inline-block;
            float: right;
            margin-right: 14px;
            cursor: pointer;
        }
        #diaryListPlus:hover{
  			background-color: rgb(229,242,248);
            height : 8px;
        }
        
        
        #ib1{
            width: 54px;
            height: 30px;
            line-height: 27px;
            margin-top: 30px;
            margin-left: 40px;
            display: inline-block;
            font-weight: bold;
            float: left;
            background-color: rgb(176,176,176);
            text-align: center;
            border-radius:4%;
        }
        #weight{
            width: 206px;
            height: 30px;
            margin-top: 30px;
            margin-left: 10px;
            display: inline-block;
            color:rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
            float: left;
        }

        #ib2{
            width: 54px;
            height: 30px;
            line-height: 27px;
            margin-top: 7px;
            margin-left: 40px;
            display: inline-block;
            font-weight: bold;
            float: left;
            background-color: rgb(176,176,176);
            text-align: center;
            border-radius:4%;
        }
        #muscle{
            width: 206px;
            height: 30px;
            margin-top: 7px;
            margin-left: 10px;
            display: inline-block;
            color:rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
    
        }

        #ib3{
            width: 54px;
            height: 30px;
            line-height: 27px;
            margin-top: 7px;
            margin-left: 40px;
            display: inline-block;
            font-weight: bold;
            float: left;
            background-color: rgb(176,176,176);
            text-align: center;
            border-radius:4%;
        }
        #bodyFat{
            width: 206px;
            height: 30px;
            margin-top: 7px;
            margin-left: 10px;
            display: inline-block;
            color:rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
        } 
        
        #ss1{
            margin-left: 40px;
            text-align: center;
            width: 78px;
            height: 30px;
            float: left;
            background-color: rgb(229,242,248);
            border : 3px solid rgb(176,176,176);
            margin-top: 22px;
            font-weight: bold;

        }
        #ss2{
            margin-left: 16px;
            text-align: center;
            width: 78px;
            height: 30px;
            display: inline-block;
            background-color: rgb(229,242,248);
            border : 3px solid rgb(176,176,176);
            margin-top: 22px;
            font-weight: bold;
      
        }
        #ss3{
            margin-left: 16px;
            text-align: center;
            width: 78px;
            height: 30px;
            display: inline-block;
            background-color: rgb(229,242,248);
            border : 3px solid rgb(176,176,176);
            margin-top: 22px;
            font-weight: bold;

        }
        #ssh1{
            margin-left: 40px;
            text-align: center;
            width: 78px;
            height: 25px;
            float: left;
            background-color: rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
            font-size: 13px;

            font-weight: bold;

        }
        #ssh2{
            margin-left: 16px;
            text-align: center;
            width: 78px;
            height: 25px;
            display: inline-block;
            background-color: rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
            font-size: 13px;
       
            font-weight: bold;
        }
        #ssh3{
            margin-left: 16px;
            text-align: center;
            width: 78px;
            height: 25px;
            display: inline-block;
            background-color: rgb(176,176,176);
            border : 3px solid rgb(176,176,176);
            font-size: 13px;
            font-weight: bold;
          
        }
        
        #ago4{
            font-size: 12px;
            float: left;
            width: 100px;
            height: 100px;
            margin-top: 110px;
            margin-left: 24px;
        }
        #ago3{
            font-size: 12px;
            display: inline-block;
            width: 100px;
            height: 100px;
            margin-top: 110px;
            margin-left: 24px;
            
        }
        #ago2{
            font-size: 12px;
            display: inline-block;
            width: 100px;
            height: 100px;
            margin-top: 110px;
            margin-left: 24px;
        }
        #ago1{
            font-size: 12px;
            display: inline-block;
            width: 100px;
            height: 100px;
            margin-top: 110px;
            margin-left: 24px;
        }
        #ago0{
            font-size: 12px;
            display: inline-block;
            width: 100px;
            height: 100px;
            margin-top: 110px;
            margin-left: 24px;
        }
        #ago4check{
            background-color: rgb(135, 206, 235);
            /*이프문으로 운동했으면 회색 안했으면 퍼렁색*/
            float: left;
            width: 20px;
            height: 70px;
            margin-top: 30px;
            margin-left: 24px;
        }
        #ago3check{
            background-color: rgb(176,176,176);
            float: left;
            width: 20px;
            height: 70px;
            margin-top: 30px;
            margin-left: 24px;
        }
        #ago2check{
            background-color: rgb(135, 206, 235);
            float: left;
            width: 20px;
            height: 70px;
            margin-top: 30px;
            margin-left: 24px;
        }
        #ago1check{
            background-color: rgb(135, 206, 235);
            float: left;
            width: 20px;
            height: 70px;
            margin-top: 30px;
            margin-left: 24px;
            
        }
        #ago0check{
            background-color: rgb(135, 206, 235);
            float: left;
            width: 20px;
            height: 70px;
            margin-top: 30px;
            margin-left: 24px;
        }
        .sports1{
            background-color: rgb(176,176,176);
            width: 50px;
            height: 20px;
            border-radius: 30px;
            text-align: center;

            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 25px;
        }
        .sports2{
            background-color: rgb(176,176,176);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;

            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 45px;
        }
        .sports3{
            background-color: rgb(176,176,176);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 65px;
           
        }
        #ago4day{
            background-color: rgb(229,242,248);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 5px;
        }
        #ago3day{
            background-color: rgb(176,176,176);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 5px;
        }
        #ago2day{
            background-color: rgb(229,242,248);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 5px;
        }
        #ago1day{
            background-color: rgb(229,242,248);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 5px;
        }
        #ago0day{
            background-color: rgb(229,242,248);
            width: 50px;
            height: 20px;
            float:right;
            border-radius: 30px;
            text-align: center;
            position: absolute;
            bottom: 0px;
            margin-left: 48px;
            margin-bottom: 5px;
        }
        
		#diaryWrite:hover {
            cursor: pointer;
            background-color: rgb(135, 206, 235);
        }
				        #weightPercent{
			           		background-color: rgb(229,242,248);
				            width: 88px; 
				            
				            /* 
					                총 200px인데 여기에 쿼리를 먹임 
					                ex) 몸무게 목표 달성도가 44%라면 88px
					                달성도가 30이라면 30을 값으로 빼와서 x2 하고 그걸 width px style에 맥이는 방식
					         
					                퍼센트 구하는법)
					                몸무게 감량 목표 : 현재 몸무게가 80이고 목표 감량 몸무게가 60이라면
				                80(현재 몸무게) - 60(감량 몸무게) = 20(빼야하는 살)
				                20 / 100 백분율로 나눠서 1kg를 뺄 때마다 %가 5%씩 올라감
				                4kg를 빼서 몸무게가 76kg가 되었다면 16% => 32px 퍼센테이지로 보여주기
				            */
				            
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
				        }        
				        
				        #musclePercent{
				            background-color: rgb(229,242,248);
				            width: 40px; 
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
				        }        
				        
				        #bodyFatPercent{
				            background-color: rgb(229,242,248);
				            width: 200px; 
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
			       		}     	        
        

        </style>
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	
	<div class="wrap">
		<div id="spcontent">
		<h1 style="text-align: center; margin-top: 0px; color: gray;">SPORTS
			PARTNER</h1>
		<div id="spmain">

			<div id="m3">

				<div id="profileBorder">
					<div id="profileName">${ loginUser.memberName }</div>
					<div id="mark">🥊</div>
					<div id="profile">
						<img src="resources/image/sportsPartner/person.jpg" width="180px"
							height="156px">
					</div>
				</div>

				<div id="day">

					<h6
						style="font-weight: bolder; text-align: center; margin-top: 18px;">운동
						1일차 입니다!</h6>
					<div id="famousSaying" style="font-size: 12px;">사람이 자신의 몸이 가질
						수 있는 아름다움과 강함을 알지 못하고 늙어 버리는 것은 안타까운 일이다. -소크라테스-</div>
				</div>


				<!-- p.sports 널로 c문 만들어서 알렛으로 못가게 해보리기 이따 해야댐 -->
				<div id="diaryWrite" onclick="location.href='sportsPartnerDiaryWrite.sp'" >
					<div
						style="font-weight: bolder; text-align: center; font-size: 15px; margin-top: 5px;">오늘은
						어떤 운동을 했어?💪</div>
					<div id="ment" style="font-size: 11px;">
						<div style="margin-top: 6px;">
							당신일 흘린 땀을 기록하여 보관하고 추억하는것은 얼마나 멋진 일일까요 .. ? <br> 당신이 흘린 땀방울을
							기록해주세요!
						</div>
					</div>
				</div>

			</div>



			<div id="diaryList5">

				<table class="table table-hover" align="center"
					style="font-size: 12px;">

					<thead>
						<tr>
							<th colspan="2" style="text-align: center;">최근 운동일지</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>이젠 알아요</th>
							<th>23일</th>
						</tr>
						<tr>
							<th>너무 깊은 사랑은</th>
							<th>24일</th>
						</tr>
						<tr>
							<th>외려 슬픈 마지막을~</th>
							<th>25일</th>
						</tr>
						<tr>
							<th>가져 온다는 걸</th>
							<th>26일</th>
						</tr>
						<tr>
							<th>그대여 빌게요</th>
							<th>27일</th>
						</tr>
					</tbody>
				</table>



				<div id="diaryListPlus" style="font-size: 12px; line-height: 2px;" onclick="location.href='sportsPartnerDiaryList.sp'">더 보기 >></div>

			</div>


			<c:choose>
				<c:when test="${ p.sports1 ne null }">
					<div id="inbody">
						<div id="ib1">몸무게</div>
						<div id="weight">
							<div id="weightPercent">44%</div>
						</div>
						<div id="ib2">근육량</div>
						<div id="muscle">
							<div id="musclePercent">20%</div>
						</div>
						<div id="ib3">체지방</div>
						<div id="bodyFat">
							<div id="bodyFatPercent">100%</div>
						</div>					

						<div id="ss1">${ p.sports1 }</div>
						<div id="ss2">${ p.sports2 }</div>
						<div id="ss3">${ p.sports3 }</div>
		
						<div id="ssh1">${ p.sportsCount1 }회</div>
						<div id="ssh2">${ p.sportsCount2 }회</div>
						<div id="ssh3">${ p.sportsCount3 }회</div>
						<div id="purposeDetail">목표진행중</div>
						<div id="purposeClear">목표완료</div>
					</div>
					<style>
						#purposeDetail{
				        	float:left;
				            background-color: rgb(176,176,176);
				            margin-left: 40px;
				            margin-top: 20px;
				            width: 130px;
				            height:40px;
				            line-height: 40px;
				            text-align: center;
				            font-size: 14px;
				            border-radius:3%;
				        }
				        
				        #purposeClear{
				        	display: inline-block;
				        	background-color: rgb(229,242,248); 
				        	margin-left : 10px;
				        	margin-top : 20px;
				            width: 130px;
				            height:40px;
				        	line-height: 40px;
				            text-align: center;
				            font-size: 14px;
				            border-radius:3%;
				        }
				        #purposeClear:hover{
				        	cursor: pointer;
				            background-color: rgb(176,176,176);
				        }
					</style>
						
					
					<script>
					
						var bw = ${ p.beginningWeight }; // 초기 몸무게
						var cw = ${ p.currentWeight }; // 현재 몸무게
						var pw = ${ p.purposeWeight }; // 목표 몸무게
						
						var bm = ${ p.beginningMuscle }; // 초기 근육량
						var cm = ${ p.currentMuscle }; // 현재 근육량
						var pm = ${ p.purposeMuscle }; // 목표 근육량		
						
						var bf = ${ p.beginningFat }; // 초기 체지방
						var cf = ${ p.currentFat }; // 현재 체지방
						var pf = ${ p.purposeFat }; // 목표 체지방
						
					
						
						var gw = bw - pw; // 감량해야될 몸무게
						var jm = pm - bm; // 증가해야될 근육량
						var gf = pf - bf; // 감량해야될 체지방

						if( cw == pw ){
							
							$('#weightPercent').width('200px');
							$('#weightPercent').html('100%');
							
						}else{
							
							$('#weightPercent').width('0px');
							$('#weightPercent').html('0%');
							
						};
						
						
						if( cf == pf ){
							
							$('#bodyFatPercent').width('200px');
							$('#bodyFatPercent').html('100%');
							
						}else{
							
							$('#bodyFatPercent').width('0px');
							$('#bodyFatPercent').html('0%');
						};
						
						
						
						if( cm == pm ){
							
							$('#musclePercent').width('200px');
							$('#musclePercent').html('100%');
							
						}else{
							
							$('#musclePercent').width('0px');
							$('#musclePercent').html('0%');
						};
						
						
						

						
						
					</script>
					
				</c:when>
				<c:otherwise>
					<div id="inbody">
						<div id="ib1">몸무게</div>
						<div id="weight">
							<div id="weightPercent">0</div>
						</div>
						<div id="ib2">근육량</div>
						<div id="muscle">
							<div id="musclePercent">0</div>
						</div>
						<div id="ib3">체지방</div>
						<div id="bodyFat">
							<div id="bodyFatPercent">0</div>
						</div>					

						<div id="ss1">운동</div>
						<div id="ss2">운동</div>
						<div id="ss3">운동</div>
		
						<div id="ssh1">0</div>
						<div id="ssh2">0</div>
						<div id="ssh3">0</div>
						<div id="purposeDetail" onclick="location.href='sportsPartnerPurpose.sp'">목표설정</div>
						<div id="purposeClear">목표완료</div>
					</div>
					<style>
						#purposeDetail{
				        	float:left;
				            background-color: rgb(229,242,248); 
				            margin-left: 40px;
				            margin-top: 20px;
				            width: 130px;
				            height:40px;
				            line-height: 40px;
				            text-align: center;
				            font-size: 14px;
				            border-radius:3%;
				        }
				        
				        #purposeClear{
				        	display: inline-block;
				        	background-color: rgb(176,176,176);
				        	margin-left : 10px;
				        	margin-top : 20px;
				            width: 130px;
				            height:40px;
				        	line-height: 40px;
				            text-align: center;
				            font-size: 14px;
				            border-radius:3%;
				        }
				        
				        #purposeDetail:hover{
				        	cursor: pointer;
				            background-color: rgb(135, 206, 235);
				        }
				        #weightPercent{
			           		background-color: rgb(229,242,248);
				            width: 200px; 
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
				        }        
				        
				        #musclePercent{
				            background-color: rgb(229,242,248);
				            width: 200px; 
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
				        }        
				        
				        #bodyFatPercent{
				            background-color: rgb(229,242,248);
				            width: 200px; 
				            height: 24px;
				            text-align: center;
				            font-weight: bold;
				            display: inline-block;
			       		} 	
					</style>
				</c:otherwise>
			</c:choose>
		
			
			<div id="graph" onclick="console.log('33')">
				<div id="ago4">
					<div id="ago4check"></div>
					<div class="sports1">헬스장</div>
					<div class="sports2">홈운동</div>
					<div class="sports3">조기축구</div>
					<div id="ago4day">23일</div>
				</div>
				<div id="ago3">
					<div id="ago3check"></div>
					<!-- <div class="sports1">헬스장</div>
                            <div class="sports2">홈운동</div>
                            <div class="sports3">조기축구</div>-->
					<div id="ago3day">24일</div>
				</div>
				<div id="ago2">
					<div id="ago2check"></div>
					<div class="sports1">헬스장</div>
					<!--     <div class="sports2">홈운동</div>
                            <div class="sports3">조기축구</div>-->
					<div id="ago2day">25일</div>
				</div>
				<div id="ago1">

					<div id="ago1check"></div>

					<div class="sports1">헬스장</div>
					<div class="sports2">홈운동</div>
					<!--  <div class="sports3">조기축구</div> -->

					<div id="ago1day">26일</div>
				</div>
				<div id="ago0">
					<div id="ago0check"></div>
					<div class="sports1">헬스장</div>
					<div class="sports2">홈운동</div>
					<div class="sports3">조기축구</div>
					<div id="ago0day">27일</div>
				</div>
			</div>

		</div>
	</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
<script>
	$(function(){
		
		const i = Math.floor(Math.random() * 10);
		const famous = ["사람이 자신의 몸이 가질수 있는 아름다움과 강함을 알지 못하고 늙어 버리는 것은 안타까운 일이다. <br> -소크라테스-", "믿음이 부족하기에 사람들은 도전하기를 두려워하지만, 나는 나 자신을 믿는다. <br> -무하마드 알리-", "포기하지 않는 자를 이기는 것은 너무나도 여려운 일이다. <br> -베이브 루스-", "슛은 시도하고 실패할 수 있지만 당신이 시도하지 않은 슛은 100% 실패로 돌아갈 뿐이다. <br> -웨인 그레츠키-", "나를 의심했던 사람들에게 감사하다. 그들은 내가 더 빨리 달릴 수 있는 자극제가 되었다. <br> -우사인 볼트-", "오늘 당신이 느끼는 고통은 훗날 당신이 느낄 힘이 되어서 돌아온다. <br> -라이트급 챔피언 복서 김관민-", "나는 포기했을 때의 기분을 이미 알고있다. 그래서 포기하지 않았을 때에 무슨 일이 일어날지 알고 싶다. <br> -네일라 레이-", "나는 내가 더 노력할수록 운이 더 좋아진다는 것을 발견했다. <br> -토마스 제퍼슨", "인생이란 자신을 찾는 것이 아니라, 자신을 만드는 것이다. <br> -롤리 다스칼-", "성취의 크기는 목표를 이루기 위해 당신이 극복해야 했던 장애물의 크기로 잰다. <br> –부커 T. 워싱턴-"]
		
		
		$('#famousSaying').html(famous[i]);
		
	})


</script>
	


</body>
</html>