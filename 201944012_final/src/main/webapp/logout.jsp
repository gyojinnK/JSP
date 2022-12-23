<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
   	if (confirm("다음에 또 오세요!!!")) {
		<% session.invalidate(); %>
   		location.href = 'main.jsp';
   	}
</script>
</body>
</html>