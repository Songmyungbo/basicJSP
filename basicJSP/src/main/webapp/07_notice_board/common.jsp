<%@page import="board.BoardDAO"%>
<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="./common.js"> </script>    

    <%
    BoardDAO dao = null;
    if(session.getAttribute("dao")==null){
    	System.out.println("common.jsp");
    	response.sendRedirect("./index.jsp");
    	return;
    }else{
    	dao = (BoardDAO)session.getAttribute("dao");
    }
    
    
    %>