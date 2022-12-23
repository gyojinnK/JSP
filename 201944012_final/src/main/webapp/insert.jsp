<%@page import="img.imgVO"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="dataHandle/DBconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getParameter("path");
	String uid = (String)session.getAttribute("uid");
	String imgname = path;
	String filepath = "upload/" + path;
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String sql = "insert into images values(?,?,?)";
	ps = conn.prepareStatement(sql);
	ps.setString(1, uid);
	ps.setString(2, imgname);
	ps.setString(3, filepath);
	int flag = ps.executeUpdate();
	
%>
<jsp:forward page="myPage.jsp"/>
</body>
<script>
</script>
</html>