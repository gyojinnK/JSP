<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public int multiply(int a, int b) {
		return a * b;
	}%>
	
	<h1>두 수의 곱 구하기</h1>
	<input type="text" name="a"><input type="text" name="b">
	<%
	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));
	int mul = a*b;
	%>
	<h2>답 : <%= mul %></h2>
</body>
</html>