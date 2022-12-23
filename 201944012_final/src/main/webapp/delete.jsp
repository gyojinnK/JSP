<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="dataHandle/DBconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = (String)session.getAttribute("uid");
	String imgname = request.getParameter("imgname");
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String sql = "delete from images where uid = ? and imgname = ?";
	ps = conn.prepareStatement(sql);
	ps.setString(1, uid);
	ps.setString(2, imgname);
	int flag = ps.executeUpdate();
	
	if(flag != 0){
		%>
			<script>
				alert("해당 이미지를 삭제했습니다!");
			</script>
		<%
		response.sendRedirect("myPage.jsp");
	}else{			
		%>
			<script>
				alert("삭제를 실패했어요ㅠ 이미지 이름을 다시한번 확인해주세요!!");
				history.back();
				return false;
			</script>
		<%
	}
%>
</body>
</html>