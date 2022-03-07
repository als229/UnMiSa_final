<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지 메인</title>
    <style>
        div {
            box-sizing: border-box;
            margin: auto;

        }

        div {
            font-family: 'gmarket_font_medium';
        }

        .myPage-outer {
            width: 1200px;
            height: 500px;
        }

        .myPage-outer div {
            float: left;
        }

        .side-bar {
            width: 25%;
            height: 100%;
            border-right: 1px solid  rgb(229,242,248);
        }

        .myTeam {
            width: 20%;
            height: 100%;
            margin-left: 20px;
        }

        .myMark {
            width: 25%;
            height: 100%;
        }

        .partner {
            width: 25%;
            height: 100%;
        }

        .side-bar a {
            text-decoration-line: none;
            color: black;
            line-height: 50px;
            margin-left: 10px;

        }

        .side-bar a:hover {
            text-decoration-line: none;
            color: rgb(135, 206, 235);
        }

        .big-menu {
            font-size: 30px;
        }

        .myPage-outer table {
            margin: auto;
            text-align: center;
            border-spacing : 10px;
            border-collapse: separate;
        }
        .myPage-outer thead{
            background-color: rgb(229,242,248);
        }
        .myPage-outer td:hover {
            cursor: pointer;
            background-color: rgb(229,242,248);
        }

        
    </style>
</head>

<body>
    <jsp:include page="../common/header.jsp" />
    <div class="myPage-outer">

        <div class="side-bar">
            <a href="" class="big-menu">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="">내가 가입한 팀 관리</a> <br>
            <a href="">내가 만든 팀</a> <br>
            <a href="">운미사 운동파트너</a> <br>
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
                </tbody>
            </table>


        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
</body>

</html>