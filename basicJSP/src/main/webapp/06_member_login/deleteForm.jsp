<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>

<h1>회원삭제</h1>

	<form action="./deletePro.jsp" method="post">
	<table border = 1px>
		<tr>
		<td>PW</td>
		<td><input type="text" name="delPw" required></td>
		</tr>
		<tr>
		<td colspan="2" align="center"><input type="submit" value="회원탈퇴"></td>
		</tr>	
	</table>
	
	</form>






<%@ include file="./footer.jsp" %>  