<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<h1>사칙연산 결과</h1>
	<h3><%=num1%> + <%=num2%> = <%= num1 + num2 %></h3>
	<h3><%=num1%> - <%=num2%> = <%= num1 - num2 %></h3>
	<h3><%=num1%> * <%=num2%> = <%= num1 * num2 %></h3>
	<h3><%=num1%> / <%=num2%> = <%= num1 / num2 %></h3>
</body>
</html>