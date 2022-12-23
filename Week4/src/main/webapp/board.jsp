<%@ page import='java.io.*' %>
<%@ page import='java.util.*' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 글쓰기 결과화면</h3>
	<%
		request.setCharacterEncoding("utf-8");
		//post방식은 항상 Encoding을 해야한다. 한글이 넘어올 수 있기 떄문에.
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Date date = new Date();
		long time = date.getTime();	
		//현재시간을 밀리세컨 단위로 가져와 숫자가 커서 long형을 사용
		String fileName = time + ".txt";
		
		String filePath = application.getRealPath("/WEB-INF/board2/" + fileName);
		
		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath));
		try{
			String data = "제목 : " + title + "\n";
			data += "글쓴이 : " + name + "\n";
			data += content;
			bw.write(data);
			out.println("저장했어용~!");
		}catch(Exception e){
			out.println("저장못했옹~ㅠㅠ");
		}finally{
			bw.close();
		}
		// 파일을 저장해도 이클립스나 폴더가 아닌 절대경로에 있는 이유는 이클립스 툴의 프레임만
		// 보여주기 때문에 데이터는 절대경로에 있다잉.
	%>
	<br><br>
	<form action="boardResult.jsp" method="post">
		<input type="hidden" name="fileName" value="<%= fileName %>"> 
		<input type="submit" value="내용보깅">
	</form>
</body>

</html>