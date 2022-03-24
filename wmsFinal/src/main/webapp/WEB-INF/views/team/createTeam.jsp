<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 등록하기</title>
<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
    div{
        border: 1px solid red;
    }

    .content{
        height: 400px;
        width: 1200px;
    }
    .team-title{
        width: 80%;
        height: 15%;
    }
    .team-name{
        width: 80%;
        height: 5%;
    }
    .team-name-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamName{
        width: 70%;
        height: 100%;
    }
    .sports-name{
        width: 80%;
        height: 5%;
    }
    .sports-name-text{
        width: 30%;
        height: 100%;
    }
    .inputSportsName{
        width: 70%;
        height: 100%;
    }
    .team-intro{
        width: 80%;
        height: 40%;
    }
    .team-intro-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamIntro{
        width: 70%;
        height: 100%;
    }
    .team-logo{
        width: 80%;
        height: 30%;
    }
    .team-logo-text{
        width: 30%;
        height: 100%;
    }
    .inputImgTeamLogo{
        width: 30%;
        height: 100%;
    }
    .inputTeamLogoArea{
        width: 40%;
        height: 100%;
    }
    .button-area{
        width: 80%;
        height: 10%;
    }
    .createButton{
        width: 50%;
        height: 100%;
    }
    .cancelButton{
        width: 50%;
        height: 100%;
    }
    .team-local-area{
        width: 80%;
        height: 10%;
    }
    .team-local-area-text{
        width: 30%;
        height: 100%;
    }
    .inputTeamLocalArea{
        width: 70%;
        height: 100%;
    }
    .inputImgTeamLogo img{
    	width: 280px;
        height: 190px;
    
    }

</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="myPage-outer" style="height: 800px;">

    	<div class="side-bar">
            <a href="serchWms.te" class="big-menu">우리동네 운미사</a> <br>
            <a href="serchWms.te">우리동네 운미사 찾기</a> <br>
            <a href="gymReservation.te">우리동네 체육관 대여하기</a> <br>
            <a href="createTeamForm.te">팀 등록하기</a> <br>
        </div>
        
        <div class="team-title">
            <h1 style="margin-left: 20px;">팀 생성하기</h1>
        </div>
		<form action="" method="post"  enctype="multipart/form-data">

            <div class="team-name">
                <div class="team-name-text" style="text-align: right; ">
                    <p>팀 이름 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamName">
                    <input type="text" name="teamName">
                </div>
            </div>
            <div class="sports-name">
                <div class="sports-name-text"style="text-align: right;">
                    <p>운동 종목 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputSportsName">
                    <input type="text" name="sportsName">
                </div>
            </div>
            <div class="team-intro">
                <div class="team-intro-text" style="text-align: right;">
                    <p>팀 소개 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamIntro">
                    <textarea cols="50" rows="10" style="resize: none;" name="teamIntro"></textarea>
                </div>
            </div>
            <div class="team-local-area">
                <div class="team-local-area-text" style="text-align: right;">
                    <p>지역 : &nbsp;&nbsp;</p>
                </div>
                <div class="inputTeamLocalArea">

					<select id="siDoSelect" name="sidoName">
						<option value="">서울특별시</option>
						<option>부산광역시</option>
						<option>대구광역시</option>
						<option>인천광역시</option>
						<option>광주광역시</option>
						<option>대전광역시</option>
						<option>울산광역시</option>
						<option>세종특별자치시</option>
						<option>경기도</option>
						<option>강원도</option>
						<option>충청북도</option>
						<option>충청남도</option>
						<option>전라북도</option>
						<option>전라남도</option>
						<option>경상북도</option>
						<option>경상남도</option>
						<option>제주특별자치도</option>

					</select> 
					<select id="siGunGuSelect" style="margin-left:40px;" name="siGunGu">
						
                    </select>
                </div>
            </div>
            <div class="team-logo" style="height: 200px;">
                <div class="team-logo-text" style="text-align: right;">
                    <p>팀 로고 : &nbsp;&nbsp;</p>
                    
                </div>
                <div class="inputImgTeamLogo" >
                </div>
                <div class="inputTeamLogoArea">
                    <input type="file" name="teamLogo" onchange="setLogo(event)">
                </div>
            </div>
            <div class="button-area" style="margin-top: 20px;">
                <div class="createButton" style=" text-align: center;">
                    <button type="submit" style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary ">생성하기</button>
                </div>
                <div class="cancelButton"style=" text-align: center;">
                    <button type="reset" style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235);" class="btn btn-primary " >취소하기</button>
                </div>
            </div>
        </form>
            
            
    </div>

    <jsp:include page="../common/footer.jsp" />

	<script>
		$.getJSON('resources/json/team/address.json', function(address) {

			var siDoSelect = document.querySelector("#siDoSelect");
			var siDoSelectOption ="";
			var siGunGuSelect = "";
			
			let createSelection = function () {
	            siGunGuSelect = document.querySelector("#siGunGuSelect");
	            // siGunGuSelect 의 요소들을 가져옴
	            while (siGunGuSelect.firstChild) {
	            	// firstChild 를 쓰면 첫번째 요소를 가져오는데 반복문을 통해 firstChild 가 없을 때까지 돌음
	                siGunGuSelect.removeChild(siGunGuSelect.firstChild)
	                // removeChuilde 를 통해서 값을 지워준다.
	            }
	            siDoSelectOption = siDoSelect.options[siDoSelect.selectedIndex].innerText;
	            // siDoSelectOption 에 siDoSelect 옵션들 중에 선택된 요소의 innerText를 가져옴
	            var mapSet = map.get(siDoSelectOption);
				
	            //siDoSelectOption get 을 사용해서 siDoSelectOption에 들어있는 키값으로 value들을 가져옴
	            for(var opt of mapSet){
	            	// 맵은 for in 문이 아니라 for of 를 사용한다.
	                var option = document.createElement('option');
	            	// option 요소들을 option 변수에 담는다.
	                option.innerText = opt;
	            	// option의 innerText에 opt(value) 값을 넣어준다.
	                siGunGuSelect.append(option);
	            	// append를 사용해 value를 추가해준다. 반복문으로 돌리면 option 애덜이 계속 들어간다.
	            }
	        }
	        
	        siDoSelect.onchange = function() {
	            createSelection();
	            // siDoSelect에 변화가 있을때 createSelection 메서드가 호출된다.
	        }
			
			let map = new Map();
	        for (key in address) {

	            // key가 없는 경우 key와 value에 set 생성
	            if(map.get(address[key].sidoName) === undefined) {
	                    let newSet = new Set();
	                    map.set(address[key].sidoName, newSet);
	            }
	            
	            // set 호출
	            let set = map.get(address[key].sidoName);

	            // siGun이 null이 아닐 때
	            if (address[key].siGun) {
	                set.add(address[key].siGun);
	            // gu가 null이 아닐 때
	            } else if(address[key].gu) {
	                set.add(address[key].gu);
	            }
	        }
	        createSelection();
	        // createSelection 메서드를 한번 호출해 줌으로써 맨 처음 들어오면 서울이 자동으로 선택되고 실행되서 값이 자동으로 들어가짐 
		});
		
		function setLogo(event) { 
			
			var reader = new FileReader();
			var divSelector = document.querySelector("div.inputImgTeamLogo");
			divSelector.removeChild(divSelector.firstChild);
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				divSelector.appendChild(img);
			};
			
			reader.readAsDataURL(event.target.files[0]);
		}

	</script>


</body>
</html>