<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Week11.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBconn.jsp" %>
<%
	Statement stat = null;
	ResultSet rs = null;
	
	ArrayList<Emp> elist = new ArrayList<>();
	
	String sql = "select * from emp";
	
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
	
	while(rs.next()){
		Emp e = new Emp();
		e.setEmpno(rs.getString("empno"));
		e.setEmpname(rs.getString("empname"));
		e.setEmpdept(rs.getString("empdept"));
		e.setEmpjob(rs.getString("empjob"));
		e.setEmpsal(Integer.parseInt(rs.getString("empsal")));
		e.setEmpimage(rs.getString("empimage"));
		elist.add(e);
	}
	request.setAttribute("elist", elist);
	
	rs.close();
	conn.close();
	stat.close();
	
	RequestDispatcher rd = request.getRequestDispatcher("queryEmpResult.jsp"); //forward기능을 사용할 수 있음
	rd.forward(request, response);
%>
</body>
</html>