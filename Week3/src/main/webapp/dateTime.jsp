<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*" %>	<%-- import는 page지시자를 이용하여 import--%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 문서입니다. -->
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
	String time = sdf.format(date);
	Calendar cal = Calendar.getInstance();
	
	/* String name; */
%>
	<h1>오늘은 <%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH)+1 %>월
	<%= cal.get(Calendar.DATE) %>일입니다.
	</h1>
	<h2>현재 시각 <%= time %></h2>
	
</body>
</html>