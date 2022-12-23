<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="process.jsp" method="post" enctype="multipart/form-data">
	<p> 제목 : <input type="text" name="title1">
	<p> 파일 : <input type="file" name="fileName1">
	
	<p> 제목 : <input type="text" name="title2">
	<p> 파일 : <input type="file" name="fileName2">
	<p><input type="submit" value="submit">	
</form>
</body>
</html>