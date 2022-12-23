<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
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
	MultipartRequest multi = new MultipartRequest(request, "C:\\jspUploadTest", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

	String title1 = multi.getParameter("title1");
	String title2 = multi.getParameter("title2");
	
	Enumeration files = multi.getFileNames();
	String file1 = (String)files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	String original1 = multi.getOriginalFileName(file1);
	
	String file2 = (String)files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	String original2 = multi.getOriginalFileName(file2);
%>
<h3>제목 :  <%=title1 %></h3>
<hr>
요청 파라미터 : <%=filename1 %><br>
실제 파일 이름 : <%=original1 %> <br> 
저장 파일 이름 : <%=filename1 %> <br>

<h3>제목 :  <%=title2 %></h3>
<hr>
요청 파라미터 : <%=filename2 %> <br>
실제 파일 이름 : <%=original2 %> <br> 
저장 파일 이름 : <%=filename2 %> <br>
</body>
</html>