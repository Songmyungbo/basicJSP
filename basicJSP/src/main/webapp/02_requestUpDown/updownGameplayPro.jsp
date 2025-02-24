<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Integer targetNumber = (Integer) session.getAttribute("targetNumber");
    int userGuess = Integer.parseInt(request.getParameter("userGuess"));

    String resultMessage = "";
    if (userGuess < targetNumber) {
        resultMessage = "내가 작다.";
    } else if (userGuess > targetNumber) {
        resultMessage = "내가 크다.";
    } else {
        resultMessage = "정답입니다. " + targetNumber;
        session.removeAttribute("targetNumber"); // 정답 맞히면 세션에서 삭제 → 새 게임 시 새로운 숫자 생성
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>업다운 결과</title>
</head>
<body>
    <h2>업다운게임</h2>
    <p><%= resultMessage %></p>
    
    <% if (userGuess == targetNumber) { %>
        <a href="index.jsp">처음으로</a>
    <% } else { %>
        <a href="updownGameplay.jsp">되돌아가기</a>
    <% } %>
</body>
</html>