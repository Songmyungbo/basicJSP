<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
	body{
	height:100vh;
	box-sizing: border-box;
	display: flex;
	flex-direction: column;
	
	}
	a{
	margin-bottom: 20px;
	
	}


</style>
</head>
<body>
	<h1>게시판</h1>
	<a href="_01_boardList.jsp">전체 게시글 확인하기</a>
	<a href="_02_addDummyPro.jsp">더미 게시글 추가하기</a>
	<a href="_03_deleteAllBoard.jsp">전체 게시글 삭제하기</a>
	<a href="_04_addBoard.jsp">게시글 추가하기</a>
	<hr></hr>
	<a href="_07_boardListPaging.jsp">페이징 게시판</a>

</body>
</html>