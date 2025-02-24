<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Random" %>
<%
    // 세션에서 랜덤 값 가져오기
    Integer targetNumber = (Integer) session.getAttribute("targetNumber");

    // 처음 게임을 시작할 때만 랜덤 값 생성
    if (targetNumber == null) {
        Random random = new Random();
        targetNumber = random.nextInt(100) + 1; // 1~100 사이의 숫자 생성
        session.setAttribute("targetNumber", targetNumber); // 세션에 저장
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>업다운게임</title>
</head>
<body>
    <h2>업다운게임</h2>
    <p>치트키 : <%= targetNumber %></p>
    
    <form action="updownGameplayPro.jsp" method="post">
        <input type="number" name="userGuess" required>
        <input type="submit" value="전송">
    </form>
</body>
</html>