<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="DBconn.jsp" %>
<%
	String empno = request.getParameter("empno");
	String empdept = request.getParameter("empdept");
	String empjob = request.getParameter("empjob");
	int empsal = Integer.parseInt(request.getParameter("empsal"));
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	int res = 0;
	
	ps = conn.prepareStatement("update emp set empdept=?, empjob=?, empsal=? where empno = ?");
	ps.setString(1, empdept);
	ps.setString(2, empjob);
	ps.setInt(3, empsal);
	ps.setString(4, empno);
	res = ps.executeUpdate();
	
	request.setAttribute("res", res);
	request.setAttribute("empno", empno);
	
	ps.close();
	rs.close();
	conn.close();
%>
<jsp:forward page="updateEmpResult.jsp"/>
</body>
</html>