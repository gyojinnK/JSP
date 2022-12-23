<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Week9.MemberInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% MemberInfo member = new MemberInfo(); %>
	<c:set var="m" value="<%=member %>" scope="request"/>
	<c:set target="${m }" property="id" value="admin"/>
	<c:set target="${m }" property="password" value="admin"/>
	<c:set target="${m }" property="name" value="김똘기"/>
	<jsp:forward page="jstlResult2.jsp"/>
</body>
</html>