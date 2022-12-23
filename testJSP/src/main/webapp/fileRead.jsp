<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>파일 읽기</h3>
	<%
		String real = application.getRealPath("WEB-INF//text.txt");
		BufferedReader br = new BufferedReader(new FileReader(real));
		
		while(true){
			String data = br.readLine();
			if(data == null) break;
			out.println(data + "<br>");
		}
		br.close();
	%>
</body>
</html>