<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 setAttribute.jsp가 생성한 것입니다.
	<%
		request.setCharacterEncoding("utf-8");
		request.setAttribute("id", "김인기");
		request.setAttribute("passwd", "김인기1");
		request.setAttribute("name", "22");
		request.setAttribute("addr", "서울");
		request.setAttribute("email", "ingi@naver.com");
	%>
<jsp:forward page="/getAttribute.jsp">
</body>
</html>