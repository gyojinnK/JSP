<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- input태그에서 넘어오는 데이터는 param을 이용한다. -->
	${param.id }님 안녕하세요!<br>
	관심있는 스포츠 : ${paramValues.sports[0] }
					${paramValues.sports[1] } 
					${paramValues.sports[2] } 
					${paramValues.sports[3] }
</body>
</html>