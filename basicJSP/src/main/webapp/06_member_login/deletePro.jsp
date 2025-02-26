<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./common.jsp" %>
 <% 
 	String pw = request.getParameter("delPw");
 
 	if(dao.delPwCheck(pw)){%>
 		<script>
		msgGoMain('회원탈퇴를 성공하였습니다');
		</script>
 		
 	<%}else{%>
 		<script>
 		goBack('비밀번호가 일치하지 않습니다');
 		</script>
 		
 	<%} %>
 	 
