<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
	
	<h1>회원 수정</h1>
	<form action="./updatePro.jsp" method="post">
	<table border = 1px>
		<tr>
		<td>아이디</td>
		<td><input type="text" name = "id" readonly></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type="text" name = "pw" readonly ></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><input type="text" name = "name" required></td>
		</tr>
		<tr>
		<td>성별</td>
		<td><input type="radio" name = "gender" value="남성">남자
		<input type="radio" name = "gender" value="여성">여자</td>
		</tr>
		<tr>
		<td colspan="2" align="center"><input type="submit" value="정보수정"></td>
		</tr>
	</form>
	
	
	




  <%@ include file="./footer.jsp" %>  