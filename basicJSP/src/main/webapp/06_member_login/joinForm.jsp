<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>

<h1> 회원가입 페이지</h1>
	<form action="./joinPro.jsp" method="post">
	<table border = 1px>
		<tr>
		<td>회원가입 ID</td>
		<td><input type="text" name = "id" required></td>
		</tr>
		<tr>
		<td>회원가입 PW</td>
		<td><input type="text" name = "pw" required></td>
		</tr>
		<tr>
		<td>회원가입 name</td>
		<td><input type="text" name = "name" required></td>
		</tr>
		<tr>
		<td>회원가입 성별</td>
		<td><input type="radio" name = "gender" value="남성">남자
		<input type="radio" name = "gender" value="여성">여자</td>
		</tr>
		<tr>
		<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
		</tr>
	</table>
	</form>


<%@ include file="./footer.jsp" %>  