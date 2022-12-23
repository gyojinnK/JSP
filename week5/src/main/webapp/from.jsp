<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
이 페이지는 from.jsp가 생성한 것입니다.
<jsp:forward page="to.jsp">
	<jsp:param value="admin" name="id"/>
	<jsp:param value="adminpw" name="password"/>
	<jsp:param value="김인기" name="name"/>
	<jsp:param value="지옥" name="addr"/>
	<jsp:param value="ingi@naver.com" name="email"/>
</jsp:forward>
</body>
</html>