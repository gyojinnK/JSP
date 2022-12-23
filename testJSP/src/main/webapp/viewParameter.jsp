<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<h3>요청 파라미터 출력</h3>
	<h4 style="color : red">request.getParameter</h4>
	name 파라미터 : <%= request.getParameter("name") %><br>
	addr 파라미터 : <%= request.getParameter("addr") %>
	
	<h4>requestgetParameterValues() 메서드 사용</h4>
	<% 
		String[] values = request.getParameterValues("pet"); 
		if(values != null){
			for(int i=0; i<values.length; i++){
				out.println(values[i]);
			}
		}
	%>
	
	<h4>requestgetParameterNames() 메서드 사용</h4>
	<%
		Enumeration paraEnum = request.getParameterNames();
		while(paraEnum.hasMoreElements()){
			String name = (String)paraEnum.nextElement();
			out.println(name);
		}
	%>
	
	<h4>requestgetParameterMap() 메서드 사용</h4>
	<%
		Map paraMap = request.getParameterMap();
		String[] nameParam = (String[])paraMap.get("pet");
		for(int i=0; i<paraMap.size(); i++){
			out.println(nameParam[i]);
		}
	%>
</body>
</html>