<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${empnoCheck > 0 }">
			<script type="text/javascript">
				alert("이미 등록된 사원번호입니다.");
				history.go(-1);	//현재에서 바로 이전 페이지로 이동
			</script>
		</c:when>
		<c:when test="${res > 0 }">
			<script type="text/javascript">
				alert("사원 등록을 완료했습니다.");
				location.href="queryEmp.jsp";
			</script>
		</c:when>
		<c:when test="${res <= 0 }">
			<script type="text/javascript">
				alert("사원 등록을 실패했습니다.");
				history.go(-1);	//현재에서 바로 이전 페이지로 이동
			</script>
		</c:when>
	</c:choose>
	
</body>
</html>