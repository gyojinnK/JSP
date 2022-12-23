<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome this Area!</title>
<link href="css/font.css" rel="stylesheet">
</head>
<style>
*{margin: 0; padding: 0;}
html{}
body{font-family: 'HGGGothicssi_60'; overflow: hidden;}
body::-webkit-scrollbar {   /* 스크롤 hidden */
    display: none; /* Chrome, Safari, Opera*/
}
.wrap{width: 70%; height: 75vh; margin:0 auto;}
.wrap .sub1wrap{display: flex; margin-bottom: 150px;}
.wrap .sub1wrap .desc{width: 500px; min-width: 500px; padding: 120px 0 0 70px;}
.wrap .sub1wrap .desc h1{font-size: 3em; margin-bottom: 20px;}
.wrap .sub1wrap .desc p{margin-bottom: 20px;}
.wrap .sub1wrap .desc p:nth-of-type(1){font-size: 2.5em;}
.wrap .sub1wrap .desc p:nth-of-type(2){font-size: 1.5em;}
.wrap .sub1wrap .exImg{}
.wrap .sub1wrap .exImg img{width: 500px;}


footer{}
footer p{}
</style>
<body>
	<jsp:include page="header.jsp"/>
	<div class="wrap">
        <div class="sub1wrap">
            <div class="desc">
                <h1>공간의 초월</h1>
                <p>공간제약 없이 언제 어디서나!</p>
                <p>온라인 상에서 Gallery 컨텐츠를 만나보세요.</p>
            </div>
            <div class="exImg">
                <img src="img/frame.PNG">
            </div>
        </div>
	</div>
	<jsp:include page="section.jsp"/>
	<footer>
	</footer>
</body>
<script>
function pageMove(){
	location.href = 'login.jsp';
} 

function goLink1(){ location.href = "login.jsp"; }
function goLink2(){ location.href = "login.jsp"; }
function goLink3(){ location.href = "login.jsp"; }
</script>
</html>