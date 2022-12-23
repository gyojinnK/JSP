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
		request.setCharacterEncoding("utf-8");
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		String umail = request.getParameter("umail");
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql1 = "select * from userinfo where uid = ?";
		ps = conn.prepareStatement(sql1);
		ps.setString(1, uid);
		rs = ps.executeQuery();
				
		int uidChk = 0;	
		int res = 0;
		
		
		if(rs.next()){
			uidChk = 1;
		}else{
			String sql2 = "insert into userinfo values (?,?,?)";
			ps = conn.prepareStatement(sql2);
			ps.setString(1, uid);
			ps.setString(2, upw);
			ps.setString(3, umail);
			res = ps.executeUpdate();
		}
		request.setAttribute("uidChk", uidChk);
		request.setAttribute("res", res);

		rs.close();
		conn.close();
		ps.close();		
	%>
	<jsp:forward page="userinfoResult.jsp"/>
</body>
</html>