<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{text-align : center}
	a{
		color:white;
	}
</style>
</head>
	<%
	String color = request.getParameter("color");
	%>
<body bgcolor="<%= color %>">
	<h1><a href="bgColor.html">뒤로가기</a></h1>
</body>
</html>