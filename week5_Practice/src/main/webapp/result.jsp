<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String res = "";
		
		try{
			if(id.equals("admin") && pw.equals("1234")){
				res = "admin님, 안녕하세요~!";
			}else if(!id.equals("admin") && pw.equals("1234")){
				res = "아이디가 틀립니다.";
			}else if(id.equals("admin") && !pw.equals("1234")){
				res = "비밀번호가 틀립니다.";
			}else{
				res = "아이디와 비밀번호가 틀립니다.";
			}
		}catch(NullPointerException e){
			res = "아이디와 비밀번호를 입력해주세요!";
		}
	%>
	<p style="font-size: 1.5em"><%=res %></p><br>
	<button style="font-size: 1em">
		<a href="login.jsp" style="text-decoration: none">돌아가기</a>
	</button>
</body>
</html>