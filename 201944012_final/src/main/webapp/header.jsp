<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	header{font-family: 'HGGGothicssi_60'; height : 50px;  display: flex; justify-content: space-between; margin:30px 0 80px;}
	header h1{margin: 0 0 0 150px; font-size: 2em;}
	header nav{margin: 0 150px 0 0; font-size: 1em; width: fit-content; display: flex; line-height: 40px;}
	header nav button{margin: 0 10px 0 0; border: none; border-radius: 10px; font-size: 1em; width: 100px; height: 50px; transition: 0.5s;}
	header nav button:hover{font-size: 1.15em; background-color: rgba(0,0,0,0.7); color: white;}
</style>
<body>
	<header>
		<h1>HyperG</h1>
		<nav>
			<button onclick="pageMove()">Login</button>
		</nav>
	</header>
</body>
</html>