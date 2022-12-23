<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>절대 경로를 이용한 파일 읽기</h3>
	<%
		String path = "D:\\JSP\\ClassA\\.metadata\\." + 
					  "plugins\\org.eclipse.wst.server" + 
					  ".core\\tmp1\\wtpwebapps\\Week4\\text.txt";
	
	BufferedReader br = new BufferedReader(new FileReader(path));
	
	while(true){
		String str = br.readLine();
		if(str == null){
			break;
		}
		out.print(str + "<br>" + "\n");
	}
	br.close();
	%>
</body>
</html>