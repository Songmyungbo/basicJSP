<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ include file="./common.jsp" %>
  	<style>
  		p{
  		font-size: 1.3em;
  		}
  	</style>
  	
  	<%
  	int cnt = dao.getListSize();
  	out.println("<p>전체 게시글 수 : "+cnt+"</p>");
  	%>
  	
    <table border = 1px>
    	<tr>
    	<th>번호</th>
    	<th>작성자</th>
    	<th>작성일</th>
    	<th>제목</th>
    	<th>내용</th>
    	<th>삭제</th>
    	</tr>
    	<%= dao.getListAsTableData()%>
    
    </table>
    
