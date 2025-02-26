<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./common.jsp" %>
 
 <%
 	String id = request.getParameter("inputId");
 	String pw = request.getParameter("inputPw");
 
 	if(dao.loginCheck(id,pw)){%>
		<script>
		msgGoMain('로그인을 성공하였습니다');
		</script>
 		
 	<% }else{%>
 	<script>
 	goBack('아이디와 비밀번호가 일치하지 않습니다');
 	</script>
 	<%
 	return;
 	}
 %>
  
  

  
  
  
  
 