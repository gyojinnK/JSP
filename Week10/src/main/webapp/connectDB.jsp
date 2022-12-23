<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//JDBC 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspDB";
		String uid = "root";
		String passwd = "kang063606!";
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		//데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(url, uid, passwd);
		
		//Statement
		stat = conn.createStatement();
		
		// 쿼리 실행
		String sql = "select *from emp";
		rs = stat.executeQuery(sql);
		
		out.println("<h1>데이터베이스 연결</h1>");
		if(rs != null){
			out.println("데이터베이스 연결 성공!" + "<br>");
		}else{
			out.println("데이터베이스 연결 실패ㅠㅠ" + "<br>");
		}
		//사용한 Statement 종료
		rs.close();
		//커넥션 종료
		conn.close();
	%>
</body>
</html>