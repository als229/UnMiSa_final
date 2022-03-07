<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 메인</title>
<style>
    div{
        box-sizing: border-box;
        border: 1px solid red;
        margin: auto;
       
    }

    .myPage-outer{
         width: 1200px;
         height: 1400px;
    }
    .myPage-outer div{
        float: left;
    }
    .side-bar{
        width: 25%;
        height: 100%;
    }
    .myTeam{
        width: 25%;
        height: 100%;
    }
    .myMark{
        width: 25%;
        height: 100%;
    }
    .partner{
        width: 25%;
        height: 100%;
    }
    .side-bar a{
        text-decoration-line: none;
        color: black;
        
    }
    .side-bar a:hover{
        text-decoration-line: none;
        color: blue;
    }


</style>
</head>

<body>
    <jsp:include page="../common/header.jsp"/>
    <div class="myPage-outer">

        <div class="side-bar">
            <a href="" style="font-size: 30px;">마이페이지</a> <br>
            <a href="">개인 정보 수정</a> <br>
            <a href="">내가 가입한 팀 관리</a> <br>
            <a href="">내가 만든 팀</a> <br>
            <a href="">운미사 운동파트너</a> <br>
            <a href="">내 결제내역</a> <br>
            <a href="">내 체육관 예약관리</a> <br>
        </div>
        <div class="myTeam">
            <table>
                <tr>
            	내 팀 목록
            </tr>
            <br>
            <td>
                멍멍 왈왈쓰
            </td>
            <td>
                은평구 불빠따쓰
            </td>
            <td>
                멍멍
            </td>
            <td>
                킹호 라이언즈
            </td>
        </table>
    </div>
    <div class="myMark">
        <table>
            <tr>
                내 팀 목록
            </tr>
            <td>
                멍멍 왈왈쓰
            </td>
            <td>
                은평구 불빠따쓰
            </td>
            <td>
                멍멍
            </td>
            <td>
                킹호 라이언즈
            </td>
        </table>
        
    </div>
    <div class="partner">
        <table>
            <tr>
                내 팀 목록
            </tr>
            <td>
                멍멍 왈왈쓰
            </td>
            <td>
                은평구 불빠따쓰
            </td>
            <td>
                멍멍
            </td>
            <td>
                킹호 라이언즈
            </td>
        </table>
        
    </div>
</div>

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>