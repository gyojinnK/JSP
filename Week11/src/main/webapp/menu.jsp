<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="padding: 5px;, margin: 0 auto; width: 300;, align-content: center">
		<tr>
			<th colspan="3">[ 메뉴 선택 ]</th>
		</tr>
		<tr height="10px"></tr>
		<tr>
			<td>
				<button onclick="location.href='queryEmp.jsp'">사원목록</button>
			</td>
			<td>
				<button onclick="location.href='inputEmpForm.jsp'">사원등록</button>
			</td>
			<td>
				<button onclick="location.href='viewEmpForm.jsp'">사원조회</button>
			</td>
		</tr>
	</table>
</body>
</html>