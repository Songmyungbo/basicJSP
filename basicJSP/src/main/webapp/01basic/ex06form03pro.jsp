<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값 받는 실습폼</title>
</head>
<body>
<a href="./ex06form03pro.jsp?num1=10&num2=20">ex06formPro 이동</a>
<%
int number = 0;

if(request.getParameter("num1").equals("") || request.getParameter("num2").equals("")){
	out.println("<h1>비어있는 값이 있습니다</h1>");
}else if(number == 0){
	number = Integer.parseInt(request.getParameter("num1")) > Integer.parseInt(request.getParameter("num2"))? Integer.parseInt(request.getParameter("num1")) : Integer.parseInt(request.getParameter("num2"));
	out.println("<h1>" + number+ "값이 더 큽니다"+ "</h1>");
}


%>
</body>
</html>