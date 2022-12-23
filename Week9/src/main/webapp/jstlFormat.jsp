<%@page import="java.util.*"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="date" value="<%=new Date() %>"/>
	[오늘 날짜]  <fmt:formatDate value="${date }"/><br>
	[현재 시각]  <fmt:formatDate value="${date }" type="time"/><br>
	[오늘 날짜]  <fmt:formatDate value="${date }" type="date" pattern="yyyy/MM/dd(E)"/><br>
	[현재 시간]  <fmt:formatDate value="${date }" type="time" pattern="(a)hh:mm:ss"/><br>
	금액 : <fmt:formatNumber value="1000000" type="currency" currencySymbol="$"/><br>
	퍼센트 : <fmt:formatNumber value="0.95" type="percent"/><br>
	
	<hr>
	
	<fmt:setLocale value="en"/>
	지역 설정 변경 : 미국<br>
	[오늘 날짜]  <fmt:formatDate value="${date }"/><br>
	[현재 시각]  <fmt:formatDate value="${date }" type="time"/><br>
	<fmt:setLocale value="ja_jp"/>
	[오늘 날짜]  <fmt:formatDate value="${date }"/><br>
	[현재 시각]  <fmt:formatDate value="${date }" type="time"/><br>
</body>
</html>