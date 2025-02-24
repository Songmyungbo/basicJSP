<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 처리</title>
</head>
<body>
<%
try{
	int stuId = Integer.parseInt(request.getParameter("studentId"));
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	String [] hobbi = request.getParameterValues("hobby");
	String memo = request.getParameter("memo");
	
	String hobbyList = "";
	if(hobbi != null){
		for(int i = 0; i < hobbi.length; i++){
			hobbyList += hobbi[i] + " ";
		}
	}
	
%>
<table border = "1">
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>학년</th>
		<th>과목</th>
		<th>취미</th>
		<th>매모</th>
	</tr>
	<tr>
		<td><%= stuId %></td>
		<td><%= name %></td>
		<td><%= grade %></td>
		<td><%= subject %></td>
		<td><%= hobbyList %></td>
		<td><%= memo %></td>
<%
}
catch(Exception e){
	
}

%>	
	
	</tr>
</table>
</body>
</html>