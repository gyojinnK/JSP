<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		
		String folder = "fileSave";
		String realPath = application.getRealPath(folder);
		int max = 5*1024*1024;
		
		MultipartRequest mr = new MultipartRequest(request, realPath, max, "utf-8", new DefaultFileRenamePolicy());
	
		String empno = mr.getParameter("empno");
		String empname = mr.getParameter("empname");
		String empdept = mr.getParameter("empdept");
		String empjob = mr.getParameter("empjob");
		int empsal = Integer.parseInt(mr.getParameter("empsal"));
		String empimage = mr.getFilesystemName("empimage");
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql1 = "select * from emp where empno = ?";
		ps = conn.prepareStatement(sql1);
		ps.setString(1, empno);
		rs = ps.executeQuery();
				
		int empnoCheck = 0;	//플래그 태그 (태이블에 empno가 있는지, 있으면 1, 없으면 0)
		int res = 0;
		
		
		if(rs.next()){
			//테이블에 해당 empno가 존재한다는 의미
			empnoCheck = 1;
		}else{
			//태이블에 해당 empno가 없는 경우
			String sql2 = "insert into emp values (?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql2);
			ps.setString(1, empno);
			ps.setString(2, empname);
			ps.setString(3, empdept);
			ps.setString(4, empjob);
			ps.setInt(5, empsal);
			ps.setString(6, empimage);
			res = ps.executeUpdate();	// insert, update가 처리된 행의 갯수를 반환
		}
		request.setAttribute("empnoCheck", empnoCheck);
		request.setAttribute("res", res);
		
		rs.close();
		conn.close();
		ps.close();		
	%>
	<jsp:forward page="inputEmpResult.jsp"/>
</body>
</html>