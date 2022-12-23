<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 to.jsp가 생성한 것입니다.
	<%
		String id = (String)request.getAttribute("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
	%>
	<h3>  jsp param 액션 태그 결과 </h3>
	<h4>
		아이디 : <%=id %><br>
		비밀번호: <%=passwd %><br>
		이름 : <%=name %><br>
		주소 : <%=addr %><br>
		이메일 : <%=email %><br>
	</h4>
</body>
</html>