<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상대 경로를 이용한 파일 읽기</h3>
	<%
		String path = application.getRealPath("./WEB-INF/text.txt");
		//파일명으로 상대경로로 이용, 같은 디랙토리에 있으므로 "text.txt"로 불러올 수 있음.
		
		//파일을 webapp폴더에 두면 브라우저 주소창에서 검색하여 접근 가능 -> 유출위험
		//그러므로 파일을 보관할 때는 WEB-INF에 저장하여 노출 방지
	BufferedReader br = new BufferedReader(new FileReader(path));
	
	while(true){
		String str = br.readLine();
		if(str == null){
			break;
		}
		out.print(str + "<br>" + "\n");
	}
	br.close();
	%>
</body>
</html>