<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지 from.jsp가 생성한 것입니다.
	<jsp:forward page="//to.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value="adminpw" name="passwd"/>
		<jsp:param value="홍길동" name="name"/>
		<jsp:param value="서울" name="addr"/>
		<jsp:param value="hgd@naver.com" name="email"/>
	</jsp:forward>
</body>
</html>