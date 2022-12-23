<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="Week6.MemberInfo" scope="request"/>
	<jsp:getProperty property="name" name="member"/>
	<jsp:getProperty property="id" name="member"/>
	(<jsp:getProperty property="emoal" name="member"/>) 회워님, 안녕하세요??
링	당신의 이메일은 <jsp:getProperty property="email" name="member"/> 입니다.
</body>
</html>