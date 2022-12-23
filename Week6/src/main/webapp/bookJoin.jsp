<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link 
	rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"
>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String strDate = sdf.format(date);
	%>
	
	<jsp:useBean id="book" class="Week6.Book" />
	<jsp:setProperty property="*" name="book"/>
	<jsp:setProperty property="pubDate" value="<%=strDate %>" name="book"/>
	
	<div class="container">
		<div class="jumbotron">
			<div class=container>
				<h3 class="display-3">도서 등록 결과</h3>			
			</div>
		</div>
		<table class="table table-striped">
			<thead>
				<th>제목</th><th>내용</th>
			</thead>
			<tr>
				<td>도서 코드</td>
				<td><%=book.getCode() %></td>
			</tr>
			<tr>
				<td>도서 제목</td>
				<td><%=book.getTitle() %></td>
			</tr>
			<tr>
				<td>도서 저자</td>
				<td><%=book.getWriter() %></td>
			</tr>
			<tr>
				<td>출판 일자</td>
				<td><%=book.getPubDate()%></td>
			</tr>
		</table>
	</div>
</body>
</html>