<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
    
<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");

	dao.userUpdate(name,gender);
%>
	<script>
	msgGoMain('회원수정을 완료했습니다');
	</script>