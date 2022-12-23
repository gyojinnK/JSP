<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Final.userVO" %>
<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
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
		String upw	 = request.getParameter("upw");
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql1 = "select * from userinfo where uid = ? and upw = ?";
		ps = conn.prepareStatement(sql1);
		ps.setString(1, uid);
		ps.setString(2, upw);
		rs = ps.executeQuery();
				
		int uidChk = 0;	//플래그 태그 (태이블에 empno가 있는지, 있으면 1, 없으면 0)
		int res = 0;
		
		if(rs.next()){
			session.setAttribute("uid", uid);
			response.sendRedirect("../siteMain.jsp");
			// insert, update가 처리된 행의 갯수를 반환
		}else{
	%>
		<script>
			alert("잘못된 아이디/비밀번호 입니다.ㅠㅠ");
			history.back();
		</script>
	<%
			
		}
		request.setAttribute("uidChk", uidChk);
		request.setAttribute("res", res);
		
		rs.close();
		conn.close();
		ps.close();		
	%>
</body>
</html>