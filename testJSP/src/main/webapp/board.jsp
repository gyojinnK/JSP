<%@page import="java.io.*, java.util.*"%>
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
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Date date = new Date();
		Long time = date.getTime();
		
		String filename = time + ".txt"; 
		String filePath = application.getRealPath("//WEB-INF//borad" + filename);
		
		FileWriter fw = new FileWriter(filePath);
		try{
			String data = "제목" + title + "\n";
			data += "글쓴이" + name + "\n";
			data += content;
			fw.write(data);
			out.println("저장되었습니다.");
		}catch(IOException e){
			out.println("파일에 데이터를 저장할 수 없습니다.");
		}finally{ fw.close(); }
	%>
</body>
</html>