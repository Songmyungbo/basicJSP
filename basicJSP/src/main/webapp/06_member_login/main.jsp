<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="./header.jsp" %>  
<% if(dao.getLog() == -1){
	out.println("<h1>메인 : 로그인상태</h1>");
	out.println("<h1>로그아웃</h1>");
}else{
	out.println("<h1>메인 : 로그인상태</h1>");
	int loginIdx = dao.getIdx();
	String userName = dao.getUserName(loginIdx);
	out.println("<h1>"+userName+"</h1>");
}
%>


<%@ include file="./footer.jsp" %> 