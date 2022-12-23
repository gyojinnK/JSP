<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{margin: 0; padding: 0;}
body{overflow: hidden;}
.wrap{width: 70%; height: 75vh; margin:0 auto; position: relative;}
.wrap button{position: absolute; font-size: 3em; color: white; padding: 10px 25px; border: none; border-radius: 50%; background-color: rgba(0,0,0,0.1);}
.wrap button.prev{left: 5%; top: 25vh; z-index: 100;}
.wrap button.next{right: 5%; top: 25vh; z-index: 100;}
.wrap ul{list-style: none; position: absolute; transform: rotateY(10deg); left: calc(50% - 400px); top: 5%; transition: 0.5s;}
.wrap ul li{width: 800px; height: 500px; position: absolute; top: 0;}
.wrap ul li:nth-of-type(1){background: url(../img/pg/1.jpg) no-repeat center center / 100%; left: 0}
.wrap ul li:nth-of-type(2){background: url(../img/pg/2.jpg) no-repeat center center / 100%; left: 810px;}
.wrap ul li:nth-of-type(3){background: url(../img/pg/3.jpg) no-repeat center center / 100%; left: 1620px;}
.wrap ul li:nth-of-type(4){background: url(../img/pg/4.jpg) no-repeat center center / 100%; left: 2430px;}
.wrap ul li:nth-of-type(5){background: url(../img/pg/5.jpg) no-repeat center center / 100%; left: 3240px;}
.wrap ul li:nth-of-type(6){background: url(../img/pg/6.jpg) no-repeat center center / 100%; left: 4050px;}
.wrap ul li:nth-of-type(7){background: url(../img/pg/7.jpg) no-repeat center center / 100%; left: 4860px;}
.wrap ul li:nth-of-type(8){background: url(../img/pg/8.jpg) no-repeat center center / 100%; left: 5670px;}
.wrap ul li img{width: 200px}
</style>
<body>
	<div class="wrap">
		<button class="prev"> < </button>
		<button class="next"> > </button>
        <ul>
        	<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
        </ul>
	</div>
</body>
<script>
	window.addEventListener('DOMContentLoaded', function(){
		var i = 1;
		var prev = document.querySelector('.prev');
		var next = document.querySelector('.next');
		var ul = document.querySelector('ul');
		var lis = document.querySelector('li');
		var cnt = lis.length;
		function clickNext(){
			ul.style.left = "calc(50% - 400px - " + 800*i + "px)";
			i++;
			console.log(i);
			console.log(ul.style.left);
		}
		function clickPrev(){
			i--;
			console.log(i);
			ul.style.left = "calc(50% - 400px - " + (800 * i - 800) + "px)";
			console.log(ul.style.left);
		}
		
		next.addEventListener('click', function(){
			if(i != 8 ){clickNext();}
		});
		prev.addEventListener('click', function(){
			if(i != 1 ){clickPrev();}
		});
	})
</script>
</html>