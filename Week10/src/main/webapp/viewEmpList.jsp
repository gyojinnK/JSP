<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원 목록 보기</h3>
	<table border="1" width="100%"  style="text-align: center">
	<tr>
		<td>번호</td><td>이름</td><td>근무부서</td><td>업무</td>업무<td>급여</td>
	</tr>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
	
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		String url = "jdbc:mysql://localhost:3306/jspDB";
		String sql = "select * from emp";
		
		conn = DriverManager.getConnection(url, "root", "kang063606!");
		
		stat = conn.createStatement();
		
		rs = stat.executeQuery(sql);
		
		while(rs.next()){
			out.println("<tr><td>");
			out.println(rs.getString("empno") + "</td><td>");
			out.println(rs.getString("empname") + "</td><td>");
			out.println(rs.getString("empdept") + "</td><td>");
			out.println(rs.getString("empjob") + "</td><td>");
			out.println(rs.getString("empsal") + "</td></tr>");
		}
		rs.close();
		conn.close();
	%>
	</table>
</body>
</html>