<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.*"%>
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
	String fileUploadPath = "C:\\jspUploadTest";
	
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem item = (FileItem)params.next();
		if(item.isFormField()){
			//일반 데이터인 경우
			String title = item.getString("utf-8");
			out.println("<h3>" + title + "</h3>");
		}else{
			//파일 데이터인 경우
			String filename = item.getName();
			filename = filename.substring(filename.lastIndexOf("\\")+1);
			File file = new File(fileUploadPath + "/" + filename);
			item.write(file);	//업로드
			out.println("파일 이름 : " + filename);
		}
	}
%>
</body>
</html>