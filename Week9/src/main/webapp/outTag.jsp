<%@page import="java.io.FileReader"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	FileReader fr = null;
	String path = request.getParameter("path");
	fr = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
	소스코드 = <%=path %>
	<c:out value="<%=fr %>" escapeXml="true"/>
</pre>
<% if(fr != null) fr.close(); %>
</body>
</html>