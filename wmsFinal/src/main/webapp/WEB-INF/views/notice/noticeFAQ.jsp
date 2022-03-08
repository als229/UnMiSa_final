<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- FAQ css -->
<link rel="stylesheet" href="resources/css/notice/noticeFAQ.css"/>
<script src="resources/js/notice/notice.js"></script>
</head>
<body>
	<div id="header_area">
		<jsp:include page="../common/header.jsp"/>
	</div>
    <div class="wrap">
    	<div id="content">
    		<div id="content_1">
                <div class="content_1_select">
                    <div class="Notice_select"><a href="noticeList.no">공지사항</a></div>
                    <div class="FAQ_select"><a href="noticeFAQ.no">FAQ</a></div>
                    <div class="ChattingQ_select"><a href="">1:1 채팅문의</a></div>
                </div>
            </div>
    		<div id="content_2">
	    		<h1>자주하는 질문</h1>
    		</div>
    		<div id="content_3">
    		
	    		<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;마크를 잘못 샀는데 반품 되나요?</div>
      			<p class="faqAnswer">A&nbsp;&nbsp;마크 반품은 어렵습니다.<br><br>
      											   상품결제 하실 때 신중하게 고르시길 바랍니다.</p>

      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;용병인원이 약속을 안지키고 잠수 탔어요</div>
      			<p class="faqAnswer">A&nbsp;&nbsp;1:1 채팅문의에 잠수탄 용병의 아이디를 적어주시면 활동을 못하도록 행정처리 하겠습니다 </p>

      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;몸 사진 올려도 되나요?</div>
      			<p class="faqAnswer">A&nbsp;&nbsp;몸변화를 기록하기 위해 확인하는 용도로 운동일지에 올리는건 가능하지만<br><br>
      											   전체가 보는 게시판에 올리는것은 금하고 있습니다.</p>

      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;전화통화 가능한 시간 언제인가요?</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;아침 09:00 ~ 밤 21:00시 까지 운영중입니다.</p>

      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;마크를 구매하고 싶은데 어떡하죠?</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;마크를 구매하는 방법<br><br>
     											  1. 출석이벤틀를 이용해 포인트를 모은다.
     											  2. 카카오페이 결제를 통해 결제를 한다.</p>
     			
      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;대전 상대랑 채팅하는데 응답이 없어요</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;채팅이 응답없는 2가지 경우 중 하나입니다<br><br>
     												1. 채팅 상대방이 응답이 없을 경우<br><br>
     												2. 서버에 접속이 안되는 경우입니다. 컴퓨터 재부팅 후 다시 시도하세요.</p>
     			
      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;출석 이벤트 참여 어떻게 해야하나요?</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;운미사 출석이벤트에 참여 하려면 하루에 *한번* QR코드로 인증해 주세요 <br>
													출석방법<br><br>
													1. 'QR코드 받기'를 선택해서 QR코드를 찍어주세요<br><br>
													2. 그 후 'QR코드 출석하기'를 선택해서 가지고 있는 캠으로 찍은 QR코드를 비춰주세요</p>
     			
      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;회원아이디와 비밀번호를 변경하고 싶어요.</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;가입 시 등록하신 아이디는 고유한 것으로 변경이 불가 합니다.<br><br>
												    비밀번호는 생활체육정보센터 홈페이지에 로그인 하신 후<br>
											             우측 상단 [마이페이지]로 접속하셔서 비밀번호 재확인 후 변경이 가능하며<br><br>
												    그 외 휴대전화번호, 주소, 이메일 등을 변경하실 수 있습니다.</p>
      			<div class="faqQuestion">Q&nbsp;&nbsp;&nbsp;&nbsp;회원가입은 어떻게 하나요?</div>
     			<p class="faqAnswer">A&nbsp;&nbsp;메인화면에서 우측상단에 있는 [회원가입]을 선택하시고 본인인증 후 회원가입을 진행하시면 됩니다.</p>
    		</div>
    		<div id="FAQblank"></div>
    	</div>
    	
    </div>
    <div id="footer_area">
    	<jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>