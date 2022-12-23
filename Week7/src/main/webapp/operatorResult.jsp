<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL 연산자 결과</h3>
	x = ${param.num1 }, y = ${param.num2 }<br>
	x + y = ${param.num1 + param.num2 }<br>
	x - y = ${param.num1 - param.num2 }<br>
	x * y = ${param.num1 * param.num2 }<br>
	x / y = ${param.num1 / param.num2 }<br>
	<hr>
	x와 y가 양수입니까? ${param.num1 > 0 && param.num2 > 0 }<br>
	x와 y는 같습니까? ${param.num1 == param.num2 }<br>
	<hr>
	${text = "admin";''}<br>		<!-- 변수를 만들기만 해도 화면에 출력된다. ;을 사용하여 숨길 수 있다.-->
	${strArr = ['가' , '나' , '다'];''}<br>
	strArr = ${strArr }입니다.<br>
	<hr>
	${text == "admin" }<br>
	${strArr[0] += strArr[1] += strArr[2]}
</body>
</html>