<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 동네 운미사 찾기</title>
<link rel="stylesheet" href="resources/css/team/team.css?ver=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
    .search-area{
        width: 80%;
        height: 10%;
    }
    .search1{
        width: 10%;
        height: 100%;
    }
    .search2{
        width: 15%;
        height: 100%;
    }
    .search3{
        width: 20%;
        height: 100%;
    }
    .search-button{
        width: 20%;
        height: 100%;
    }
    .team-menu-title{
        width: 80%;
        height: 10%;
    }
    .team-paging-area{
        width: 80%;
        height: 10%;
    }
    .team-name-inTable:hover {
        cursor: pointer;
        background-color: rgb(229,242,248);
    }

</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
    
    <div class="team-outer">
    	<div class="side-bar">
            <a href="serchWms.te" class="big-menu">우리동네 운미사</a> <br>
            <a href="serchWms.te">우리동네 운미사 찾기</a> <br>
            <a href="gymReservation.te">우리동네 체육관 대여하기</a> <br>
            <a href="createTeamForm.te">팀 등록하기</a> <br>
        </div>
        <div class="team-menu-title">
            <h1 style="margin-left: 40px;">우리 동네 운미사</h1>
        </div>
        <div class="search-area" style="text-align: center;" >
            <div class="siDoSelect" style="margin-left: 100px;">
				<select id="siDoSelect" class="form-select form-select-sm" style="margin-top: 5px;" required>
					<option>서울특별시</option>
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
            </div>
            <div class="search2"style="margin-left: 40px;">
                <select id="siGunGuSelect"class="form-select form-select-sm" style="margin-top: 5px;">

                </select>
            </div>
            <div class="search3"style="margin-left: 40px;" >
                <select id="sports-name"class="form-select form-select-sm" style="margin-top: 5px;"required>
                    	<option>축구</option>
                    	<option>야구</option>
                    	<option>농구</option>
                    	<option>탁구</option>
                    	<option>볼링</option>
                    	<option>배드민턴</option>
                    	<option>당구</option>
                    	<option>런닝</option>
                    	<option>사이클</option>
                    	<option>등산</option>
                    	<option>테니스</option>
                </select>
            </div>
            <div class="search-button">
                <button type="button" class="btn btn-primary " style="background-color: rgb(135, 206, 235); border: 1px solid rgb(135, 206, 235); vertical-align: middle;" onclick="serchSelectWms();">검색하기</button>
            </div>
        </div>
        <div class="teamList-area">
            <table class="team-list table " style="width: 950px; text-align: center;">
                <thead>
                    <!-- 승률	운동종목	지역	팀 이름 	 승점	팀 등록 날짜	 동네 순위 -->
                    <tr>
                        <th>팀 번호</th>
                        <th>운동종목</th>
                        <th>지역</th>
                        <th>팀 이름</th>
                        <th>팀 등록 날짜</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="t" items="${ tList }">
	                    <tr class="teamTable">
	                        <td>${ t.teamNo }</td>
	                        <td>${ t.sportsName }</td>
	                        <td>${ t.sidoName }  ${t.siGunGuName }</td>
	                        <td class="team-name-inTable">${ t.teamName }</td>
	                        <input type="hidden" value="${ t.teamNo }">
	                        <input type="hidden" value="${ t.sportsName }">
	                        <td>${ t.createDate }</td>
	                    </tr>
					</c:forEach>

                </tbody>
            </table>

        </div>

    </div>
        <div class="team-paging-area" style="height: 50px; " >
            <ul class="pagination" style="justify-content : center;" >
                <c:choose >
                     <c:when test="${ pi.currentPage eq 1 }">
                         <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="serchWms.te?serchWmsPage=${ pi.currentPage -1 }" style="color: rgb(135, 206, 235);">이전</a></li>
                     </c:otherwise>
                </c:choose>
	            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                <c:choose>
	                	<c:when test="${ pi.currentPage eq p }">
	                    	 <li class="page-item disabled"><a class="page-link" href="serchWms.te?serchWmsPage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
	                	</c:when>
	                	<c:otherwise>
		                     <li class="page-item"><a class="page-link" href="serchWms.te?serchWmsPage=${ p }" style="color: rgb(135, 206, 235);">${ p }</a></li>
	                	</c:otherwise>
	                </c:choose>
	            </c:forEach>

                <c:choose>
                     <c:when test="${ pi.currentPage eq  pi.endPage }">
                         <li class="page-item disabled"><a class="page-link" href="#"  >다음</a></li>
                     </c:when>
                     <c:otherwise>
                         <li class="page-item"><a class="page-link" href="serchWms.te?serchWmsPage=${ pi.currentPage +1 }" style="color: rgb(135, 206, 235);">다음</a></li>
                     </c:otherwise>
                </c:choose>
           
             </ul>
        </div>
    
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
        	
        $(function(){
        	
        	$(".team-name-inTable").click(function(){
        		var memberId = '${loginUser.memberId}';
        		
	        	location.href='teamDetail.te?teamNo= ' + $(this).next().val() + "&memberId=" + memberId + "&sportsName=" +$(this).next().next().val();        	
        	
        	})
        	

        })
        
        
	        function serchSelectWms(){
	        		
        		var selectSiDoName = $("#siDoSelect").val();
        		var selectSiGunGuName = $("#siGunGuSelect").val();
        		var selectSportsName = $("#sports-name").val();
        		
	        	location.href="serchSelectWms.te?sidoName=" + selectSiDoName +"&siGunGuName=" + selectSiGunGuName + "&sportsName=" + selectSportsName;
	        		
	        }
        	
    </script>
    
    
    
    
    
    
    
        <jsp:include page="../common/footer.jsp" />
</body>
</html>