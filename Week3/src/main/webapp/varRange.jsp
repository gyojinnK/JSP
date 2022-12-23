<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>변수의 범위</h3>
	<%!
		//선언문 - 선언문 내에서 정의된 변수는 전역변수
		//String strVar = "전역변수입니다.";
		String strVar;
	%>
	<%!
		//선언문 - 메소드 선언
		String getStr(){
			return strVar;
		}
	%>
	<%
		//스크립틀릿 - 스크립틀릿 내에서 정의된 변수는 지역변수
		//String strVar2 = "지역변수입니다.";
		String strVar2 = "지역변수입니다.";
	%>
	<%!
		/* 
			String getStr2(){
				return strVar2;
			} 
		*/	// 스크립틀릿으로 선언한 변수는 지역변수로 초기값을 정해줘야한다.
	%>
	<br>
	선언문에서 선언한 변수 strVar = <%=getStr() %><br>
	스크립틀릿에서 선언한 변수 strVar2 = <%=strVar2 %><br>
	
</body>
</html>