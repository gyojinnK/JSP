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
	
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		ps = conn.prepareStatement("select * from emp where empno = ?");
		ps.setString(1, empno);
		rs = ps.executeQuery();
		
		int res = 0;
		
		if(rs.next()){
			res = 1;
			request.setAttribute("empno", rs.getString("empno"));
			request.setAttribute("empname", rs.getString("empname"));
			request.setAttribute("empdept", rs.getString("empdept"));
			request.setAttribute("empjob", rs.getString("empjob"));
			request.setAttribute("empsal", rs.getInt("empsal"));
		}
		
		request.setAttribute("res", res);
		
		rs.close();
		conn.close();
		ps.close();
	%>
	<jsp:forward page="viewEmpResult.jsp"/>
</body>
</html>