<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
section{width: 70%; margin: 0 auto;}
section ul{position: relative; list-style: none; margin: 0; padding: 0; display: flex; justify-content: space-around;}
section ul li{position: absolute; top:0;}
section ul li:nth-of-type(1){left: 0; transition: 0.5s;}
section ul li:nth-of-type(2){transition: 0.5s;}
section ul li:nth-of-type(3){right: 0; transition: 0.5s;}
section ul li:hover{top: -160px; font-size: 1.25em;}
section ul li:nth-of-type(1) div.down{box-shadow: 10px 10px 5px rgba(0,0,0, 0.4);}
section ul li:nth-of-type(2) div.down{box-shadow: 10px 10px 5px rgba(0,0,0, 0.4);}
section ul li:nth-of-type(3) div.down{box-shadow: 10px 10px 5px rgba(0,0,0, 0.4);}
section ul li div.up, .down{background-color: rgba(0,0,0,0.05);}
section ul li div.up{width: 120px; height: 30px; border-radius: 10px 10px 0 0; text-align: center; line-height: 40px; font-weight: 700;}
section ul li div.down{width: 300px; height: 300px; border-radius: 0 10px 10px 10px; text-align: center; font-size: 1.5em; line-height: 800%;}
</style>
<body>
	<section>
			<ul>
				<li onclick="goLink1()">
                    <div class="up">Photo_</div>
                    <div class="down">경의로운 사진 작품</div>
                </li>
				<li onclick="goLink2()">
                    <div class="up">Illustrator_</div>
                    <div class="down">심플한 디자인</div>
                </li>
				<li onclick="goLink3()">
                    <div class="up">Vector_</div>
                    <div class="down">깔끔한 선의 조화</div>
                </li>
			</ul>
		</section>
</body>
</html>