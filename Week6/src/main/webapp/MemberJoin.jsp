<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
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
		request.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String strDate = sdf.format(date);
	%>
	<jsp:useBean id="memberInfo" class="Week6.MemberInfo"/>
	<jsp:setProperty property="*" name="memberInfo"/>
	<jsp:setProperty property="password" name="MemberInfo" value="<%= memberInfo.getId()%>"/>
	<jsp:setProperty property="registerDate" name="MemberInfo" value="<%=strDate %>"/>
	
	<h3>회원가입 결과</h3>
	<table border="1">
		<tr>
			<td><jsp:getProperty property="id" name="memberInfo"/></td>
			<td>암호</td>
			<td><jsp:getProperty property="password" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="memberInfo"/></td>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>등록일자</td>
			<td colspan="3"><jsp:getProperty property="resiterDate" name="memberInfo"/></td>
		</tr>
	</table>
</body>
</html>