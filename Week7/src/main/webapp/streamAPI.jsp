<%@page import="java.util.Arrays"%>
<%@page import="week7.Member"%>
<%@page import="java.util.List"%>
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
		List<Member> memList = Arrays.asList(new Member("김인기", 2000),
				new Member("김똘기", 92000),
				new Member("김만기", 99222),
				new Member("김푸득", 20444));
	
		request.setAttribute("member", memList);
	%>
	${ageList = member.stream().map(mem->mem.age).toList();'' }
	${ageList }<br>
	${member.stream().map(mem->mem.age).filter(x->x >= 40).toList() }<br>
	${member.stream().filter(x->x.age >= 40).map(x->x.age).toList(); ""}<br>
	${alv = member.stream().sorted((x1, x2)->x1.age > x2.age ? 1 : -1).toList();'' }<br>
	${alv.stream().map(x->x.name).toList()}<br>
	
	${sortedMem = member.stream().sorted((x1, x2) -> x1.age > x2.age ? 1 : -1).toList();'' }
	${sortedMem.stream().map(mem->mem.name).toList() }<br>
</body>
</html>