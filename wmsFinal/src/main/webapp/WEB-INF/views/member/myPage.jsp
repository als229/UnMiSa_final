<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지 메인</title>
	<link rel="stylesheet" href="resources/css/member/myPage.css?ver=1"/>
</head>

<body>
    <jsp:include page="../common/header.jsp" />
    <div class="myPage-outer">

        <div class="side-bar">
            <a href="myPage.me" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="selectListTeam.te">내가 가입한 팀 관리</a> <br>
            <a href="selectListCreateTeam.te">내가 만든 팀</a> <br>
            <a href="">내 결제내역</a> <br>
            <a href="">내 체육관 예약관리</a> <br>
        </div>
        <div class="myTeam">
            <table class="table table-bordered ">
                <thead>
                    <tr>
                        <th>
                            내 팀 목록
                        </th>
                    </tr>
                </thead>
                <br>
                <tbody >
                    <tr>
                        <td>
                            멍멍 왈왈쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            은평구 불빠따쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            멍멍
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="myMark">
            <table class="table table-bordered ">
                <thead>
                    <tr>
                        <th>
                            나의 업적
                        </th>
                    </tr>
                </thead>
                <br>
                <tbody>
                    <tr>
                        <td>
                            멍멍 왈왈쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            은평구 불빠따쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            멍멍
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
        <div class="partner">
            <table class="table table-bordered ">
                <thead>
                    <tr>
                        <th>
                            운미사 운동파트너
                        </th>
                    </tr>
                </thead>
                <br>
                <tbody>
                    <tr>
                        <td>
                            멍멍 왈왈쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            은평구 불빠따쓰
                        </td>
                    </tr>
                    <tr>
                        <td>
                            멍멍
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                    <tr>
                        <td>
                            킹호 라이언즈
                        </td>
                    </tr>
                </tbody>
            </table>


        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
</body>

</html>