<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>application 기본 객체</h3>
	<%
		String realPath = application.getRealPath("/");	//'/'는 root를 뜻함
		String conPath = application.getContextPath();
	%>
	루트의 실제 파일 경로 = <%= realPath %>
	웹 어플리케이션의 URL 경로 = <%= conPath %>
</body>
</html>