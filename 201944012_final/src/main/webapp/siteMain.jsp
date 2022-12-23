<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome this Area!</title>

<link href="css/main.css" rel="stylesheet">
<link href="css/font.css" rel="stylesheet">
</head>
<style>
nav{width: 200px;}
</style>
<body>
	<jsp:include page="main.jsp"/>
</body>
<script>
	var h = document.querySelector('header nav button');
	h.innerHTML = "Logout";
	
	function pageMove(){
		location.href = 'logout.jsp';
	}
	
	function goLink1(){ location.href = "content/photoG.jsp"; }
	function goLink2(){ location.href = "content/illuG.jsp"; }
	function goLink3(){ location.href = "content/vectorG.jsp"; }
	
	var nav = document.querySelector('nav');
	var new_button = document.createElement('button');
	new_button.setAttribute('class','myPage');
	new_button.innerHTML = "My Gallery"
	nav.appendChild(new_button);
	
	var mp = document.querySelector('.myPage');
	mp.addEventListener('click', function(){
		location.href = "myPage.jsp";
	});
</script>
</html>