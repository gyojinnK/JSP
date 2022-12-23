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
var li1 = document.querySelector('.wrap ul li:nth-of-type(1)');
var li2 = document.querySelector('.wrap ul li:nth-of-type(2)');
var li3 = document.querySelector('.wrap ul li:nth-of-type(3)');
var li4 = document.querySelector('.wrap ul li:nth-of-type(4)');
var li5 = document.querySelector('.wrap ul li:nth-of-type(5)');
var li6 = document.querySelector('.wrap ul li:nth-of-type(6)');
var li7 = document.querySelector('.wrap ul li:nth-of-type(7)');
var li8 = document.querySelector('.wrap ul li:nth-of-type(8)');
var lis = document.querySelectorAll('.wrap ul li');
console.log(lis.length);
for(var i=0; i<lis.length; i++){
	lis[i].style.backgroundImage = "url(../img/ig/" + (i + 1) + ".jpg)";
	console.log(lis[i].style.backgroundImage);
}

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