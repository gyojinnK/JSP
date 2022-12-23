<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String fileName = request.getParameter("fileName");
		String path = application.getRealPath("./WEB-INF/board2/" + fileName);
		
		BufferedReader br = new BufferedReader(new FileReader(path));
		
		while(true){
			String data = br.readLine();
			if(data == null) break;
			out.println(data + "<br>");
		}
		br.close();
	%>
</body>
</html>