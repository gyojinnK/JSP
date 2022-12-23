<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/font.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
	*{font-family: 'HGGGothicssi_60';}
</style>
<body>
	<jsp:include page="../header.jsp"/>
	<jsp:include page="midCon.jsp"/>
	<jsp:include page="../section.jsp"/>
</body>
<script>
	var h = document.querySelector('header nav button');
	h.innerHTML = "Logout";
	
	function pageMove(){
		location.href = '../logout.jsp';
	}
	
	function goLink1(){ location.href = "photoG.jsp"; }
	function goLink2(){ location.href = "illuG.jsp"; }
	function goLink3(){ location.href = "vectorG.jsp"; }
	
	var nav = document.querySelector('nav');
	var new_button = document.createElement('button');
	new_button.setAttribute('class','myPage');
	new_button.innerHTML = "My Page"
	nav.appendChild(new_button);
	
	var mp = document.querySelector('.myPage');
	mp.addEventListener('click', function(){
		location.href = "../myPage.jsp";
	});
</script>
</html>