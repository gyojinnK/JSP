<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 getAttribute가 생성한 것입니다.
	<%
	String id = (String)request.getAttribute("id");
	String passwd = (String)request.getAttribute("passwd");
	String name = (String)request.getAttribute("name");
	String addr = (String)request.getAttribute("addr");
	String email = (String)request.getAttribute("email");
	%>
	<h3>페이결과</h3>
	아이디 : <%= id %><br>
	비번 : <%= passwd %><br>
	이름 : <%= name %><br>
	주소 : <%= addr %><br>
	이메일 : <%= email %><br>
</body>
</html>