<%@page import="java.io.File"%>
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
<%
	String fileSave = "/fileSave";
	String real = application.getRealPath(fileSave);	//실제 경로
	int max = 10*1024*1024;	//이미지의 최대 사이즈 설정
	
	MultipartRequest mr = new MultipartRequest(request, real, max, "utf-8", new DefaultFileRenamePolicy());
	
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String filename = mr.getFilesystemName("file");
	String original = mr.getOriginalFileName("file");
	File f = new File(real + "/" + filename);
	int size = (int)f.length();
%>

<h3>파일 업로드 결과</h3>
제목    	: <%=title %><br>
작성자   	: <%=writer %><br>
파일명	: <%=filename %><br>
파일원본 	: <%=original %><br>
파일크기 	: <%=size %><br>
<br><br>
<button onclick="location.href='uploadView.jsp?filename=<%=filename%>'">파일보기</button>
</body>
</html>