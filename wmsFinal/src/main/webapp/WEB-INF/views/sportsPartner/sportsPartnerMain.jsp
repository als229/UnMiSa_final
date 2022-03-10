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
        #musclePercent{
            background-color: rgb(229,242,248);
            width: 40px; 
            height: 24px;
            text-align: center;
            font-weight: bold;
            display: inline-block;
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
        #bodyFatPercent{
            background-color: rgb(229,242,248);
            width: 200px; 
            height: 24px;
            text-align: center;
            font-weight: bold;
            display: inline-block;
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
        #purposeDetail{
            background-color: rgb(229,242,248); 
            margin-left: 40px;
            margin-top: 20px;
            width: 271px;
            height:40px;
            line-height: 50px;
            text-align: center;
            font-size: 24px;
            line-height: 40px;
            border-radius:3%;
        }
        #purposeDetail:hover{
        	cursor: pointer;
            background-color: rgb(176,176,176);
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
					<div id="profileName">대성이</div>
					<div id="mark">🥊</div>
					<div id="profile">
						<img src="resources/image/sportsPartner/momisterran.jpg" width="180px"
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



				<div id="diaryListPlus" onclick="console.log('33')"
					style="font-size: 12px; line-height: 2px;" onclick="location.href='sportsPartnerList.sp'">더 보기 >></div>

			</div>

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

				<div id="ss1" onclick="console.log('1')">헬스장</div>
				<div id="ss2" onclick="console.log('2')">홈운동</div>
				<div id="ss3" onclick="console.log('333')">조기축구</div>

				<div id="ssh1">30회</div>
				<div id="ssh2">11회</div>
				<div id="ssh3">47회</div>

				<div id="purposeDetail" onclick="location.href='sportsPartnerPurpose.sp'">목표설정</div>

			</div>

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
</body>
</html>