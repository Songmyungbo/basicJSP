<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>

<%

int idx = Integer.parseInt(request.getParameter("idx"));

if(dao.adminCheck()){
	dao.adminUserDel(idx);%>
	<script>
	msgGoMain('회원 삭제 완료');
	</script>
<%}else{%>
	<script>
	msgGoMain('관리자만 삭제 가능합니다');
	</script>	
<%}




%>