<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ include file="./header.jsp" %>
  
  <h1>로그인</h1>
  <form action="./loginPro.jsp" method="post">
  <table border = 1px>
  	<tr>
  		<td>ID</td>
  		<td><input type="text" name = "inputId" requiired></td>
  	
  	</tr>
  	<tr>
  		<td>PW</td>
  		<td><input type="text" name = "inputPw" requiired></td>
  	
  	</tr>
  	<tr>
  	<td colspan="2" align="center"><input type="submit" value="로그인"> </td>
  	</tr>
  
  </form>
  </table>
  
  <%@ include file="./footer.jsp" %>  
  
  