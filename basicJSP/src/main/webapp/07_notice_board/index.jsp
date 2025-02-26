<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 먼저 실행하는 페이지 index.jsp
if(session.getAttribute("dao")==null){
	session.setAttribute("dao", new BoardDAO());
}
System.out.println("index.jsp");
response.sendRedirect("_00_main.jsp");
%> 