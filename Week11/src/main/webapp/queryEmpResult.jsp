<%@page import="Week11.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="text-align: center">
		<tr>
			<td colspan="5">사원 목록 조회</td>
		</tr>
		<tr bgcolor="orange">
			<th>사번</th>
			<th>이름</th>
			<th>부서</th>
			<th>업무</th>
			<th>급여</th>
			<th>사진</th>
		</tr>
		<%
			ArrayList<Emp> elist = (ArrayList<Emp>)request.getAttribute("elist");			
		%>
		<c:forEach var="e" items="${elist }">
			<tr>
				<td>${e.getEmpno() }</td>
				<td>${e.getEmpname() }</td>
				<td>${e.getEmpdept() }</td>
				<td>${e.getEmpjob() }</td>
				<td>${e.getEmpsal() }</td>
				<td>
					<img alt="${e.getEmpimage() }" src="fileSave/${e.getEmpimage() }">
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<button onclick="location.href='menu.jsp'">메뉴화면</button>
</body>
</html>