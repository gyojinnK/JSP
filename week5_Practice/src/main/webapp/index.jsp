<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	section{height: 60vh; text-align: center;}
	section h1{background-color: lightgray; height: 45vh; font-size: 2em; line-height: 45vh}
	section div:nth-of-type(1){font-weight: bold; font-size: 1.5em; margin: 0 0 3vh 0}
	section div:nth-of-type(2){font-size: 1.3em;}
</style>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
		String time = sdf.format(date);
		Calendar cal = Calendar.getInstance();
	%>
	<section>
		<h1>
			웹 쇼핑몰에 오신 것을 환영합니다.
		</h1>
		<div>
			Welcome to Web Market!
		</div> 
		<div>
			현재 접속 시각 : 
			<%= cal.get(Calendar.YEAR) %>년
			<%= cal.get(Calendar.MONTH) %>월
			<%= cal.get(Calendar.DATE) %>일
			<%= time %>
		</div>
	</section>
</body>
</html>