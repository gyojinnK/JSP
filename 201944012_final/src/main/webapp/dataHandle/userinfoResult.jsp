<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int uidChk = (Integer)request.getAttribute("uidChk");
	int res = (Integer)request.getAttribute("res");	

	if(uidChk > 0){
%>
	<script>
		alert("이미 등록된 아이디입니다.");
		history.back();
	</script>
<%
	}
	if(res > 0){
%>
	<script>
		alert("회원가입을 완료했습니다!!!");
		location.href="../login.jsp";
	</script>
<%
	}
%>
</body>
</html>