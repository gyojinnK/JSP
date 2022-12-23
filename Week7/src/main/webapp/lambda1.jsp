<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>람다식 예제</h3>
	1. 두 개의 숫자 중 큰 수 찾기<br>
	${max = (x, y) -> x > y ? x : y }<br>
	${max = (x, y) -> x > y ? x : y;'' }<br>
	(3, 5)  중 큰 수 = ${max(3, 5) }<br><br>
	
	2. 두 문자열이 같은지 체크하기<br>
	${strEQ = (str1, str2) -> str1 == str2 ? true : false; '' }<br>
	("admin", "김인직") 두 문자열은 같은가? ${strEQ("admin", "김인직") }<br><br>
	
	3. 피타고라스의 정리<br>
	${Func = (a, b) -> Math.sqrt(a*a + b*b); '' }<br>
	두 변의 길이가 3, 4인 직각삼각형의 빗변의 길이는 ${Func(3, 4) }이다<br>
</body>
</html>