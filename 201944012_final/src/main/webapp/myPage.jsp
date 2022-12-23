<%@page import="java.util.*"%>
<%@page import="img.imgVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/font.css" rel="stylesheet">
</head>
<body>
<% 
String uid = (String)session.getAttribute("uid");
//ArrayList<imgVO> ilist = (ArrayList<imgVO>)request.getAttribute("ilist");
%>
<%@include file="dataHandle/DBconn.jsp"%>
<%
PreparedStatement ps = null;
ResultSet rs = null;

	String sql1 = "select * from images where uid = ?";
	ps = conn.prepareStatement(sql1);
	ps.setString(1, uid);
	rs = ps.executeQuery();
	
	ArrayList<imgVO> ilist = new ArrayList<>(); 
	while(rs.next()){
		imgVO ivo = new imgVO();
		ivo.setUid(rs.getString(1));
		ivo.setImgname(rs.getString(2));
		ivo.setFilepath(rs.getString(3));
		
		ilist.add(ivo);
	}
	request.setAttribute("ilist", ilist);
%>
	<jsp:include page="header.jsp"/>
	<section>
		<div class="mgWrap">
			<div class="headBar">Private ${uid}'s Gallery</div>
			<ul>
				<c:forEach items="<%=ilist %>" var="ivo">
					<div class="imgCon">
						<li style="background-image: url( ${ivo.getFilepath()});"></li>
						<p>${ivo.getImgname() }</p>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="btnG">
			<button onclick="upUpdate()">Upload_Image</button>
			<button onclick="upDelete()">Delete_Image</button>
		</div>
	</section>
	<div class="insert">
		<form action="insert.jsp" name="insF" onsubmit="return fileCheck()">
			<legend>Upload_Image</legend>
			<img id="preview"/>
			<div class="inputWrap">
				<input class="iTarea">
    			<label for="file">Choose</label> 
    			<input type="file" id="file" name="path">
    		</div>
			<input type="submit" value="Add"/>
		</form>
		<button onclick="downUpdate()">Exit</button>
	</div>
	<div class="delete">
		<form action="delete.jsp" name="delF" onsubmit="return nameCheck()">
			<legend>Delete_Image</legend>
			<p>삭제할 이미지의 이름을 적어주세요</p>
			<input type="text" id="img" name="imgname"/>
			<input type="submit" value="Delete"/>
		</form>
		<button onclick="downDelete()">Exit</button>
	</div>
</body>

<style>
*{margin: 0; padding: 0; font-family: 'HGGGothicssi_60'; }
body{overflow: hidden;}
section{}
section .mgWrap{width: 100%; height: 65vh; border-radius: 10px;}
section .mgWrap .headBar{width: 70%; height: 30px; margin: 0 auto 35px;; text-align: center; font-size: 2em}
section .mgWrap ul{list-style: none; width: 440px; height: 450px; margin: 0 auto; display: flex; overflow: scroll; overflow: auto; white-space: nowrap; padding: 30px 0 20px 0; border-radius: 25px 25px 10px 10px;  box-shadow: inset 0px 0px 5px rgba(0,0,0,0.3);}
section .mgWrap ul .imgCon {margin: 0 20px; }
section .mgWrap ul .imgCon li{width: 400px; height: 400px; background-size: cover; background-position: center center; border-radius: 25px;}
section .mgWrap ul .imgCon p{text-align: center; width: 400px;}
section .btnG{width: 400px; height: 60px; margin: 0 auto; text-align: center; line-height: 55px;}
section .btnG button{border: none; border-radius: 10px; background-color: rgba(0,0,0,0.1); font-size: 1.5em; padding: 7px 12px; transition: 0.5s;}
section .btnG button:hover{background-color: rgba(0,0,0,0.4); padding: 11px 18px;}
section .btnG button:nth-of-type(1){margin-right: 20px;}

section .mgWrap ul::-webkit-scrollbar {width: 10px; height: 20px; }
section .mgWrap ul::-webkit-scrollbar-thumb {background-color: rgba(0,0,0,0.3); border-radius: 10px; background-clip: padding-box; border: 2px solid transparent; transition: 0.5s;}
section .mgWrap ul:hover::-webkit-scrollbar-thumb{background-color: rgba(0,0,0,0.4);}
section .mgWrap ul::-webkit-scrollbar-track {background-color: white; border-radius: 10px; box-shadow: inset 0px 0px 5px rgba(0,0,0,0.3); }

.insert{opacity: 0; position: absolute; left: calc(50% - 250px); /*top: calc(50% - 35%);*/ top: 1000px;  border-radius: 25px; width: 500px; height: 70vh; background-color: white; transition: 0.5s; box-shadow: 0px 4px 15px 2000px rgba(0,0,0, 0.3);}
.insert form{width: 400px; margin: 0 auto; text-align: center;}
.insert form legend{font-size: 3em; margin: 30px 0 50px 0;}
.insert form img{width: 300px; height: 300px; border: 1px solid black; margin-bottom: 30px;}
.insert form .inputWrap{margin: 0 auto 30px; width: 300px; position: relative; overflow: hidden;}
.insert form .inputWrap input.iTarea{height: 30px; width: 200px; font-size: 1em;}
.insert form .inputWrap label{border-radius: 0 25px 25px 0; background-color: rgba(0,0,0,0.2); padding: 9px 20px; display:inline-block; transition: 0.5s;}
.insert form .inputWrap label:hover{background-color: rgba(0,0,0,0.4); }
.insert form .inputWrap input[type="file"]{position: absolute; left: -73px; top: 4px;}
.insert form input[type="submit"]{border-radius: 25px; border: none; background-color: rgba(0,0,0,0.2); padding: 9px 40px; display:inline-block; font-size: 1.25em; transition: 0.5s;}
.insert form input[type="submit"]:hover{background-color: rgba(0,0,0,0.4); }
.insert button{position: absolute; right: 20px; top: 15px; border-radius: 10px; border: none; background-color: rgba(0,0,0,0.1); padding: 6px 15px; display:inline-block; font-size: 1em; transition: 0.5s;}
.insert button:hover{background-color: rgba(0,0,0,0.2); }

.delete{opacity: 0; position: absolute; left: calc(50% - 250px); /*top: calc(50% - 35%);*/ top: 1000px;  border-radius: 25px; width: 500px; height: 70vh; background-color: white; transition: 0.5s; box-shadow: 0px 4px 15px 2000px rgba(0,0,0, 0.3);}
.delete form{width: 400px; margin: 0 auto; text-align: center;}
.delete form legend{font-size: 3em; margin: 30px 0 190px 0;}
.delete form p{font-size: 1.15em; margin-bottom: 20px;}
.delete form input[type="text"]{height: 30px; width: 270px; font-size: 1em; text-align: center; margin-bottom: 20px;}
.delete form input[type="submit"]{border-radius: 25px; border: none; background-color: rgba(0,0,0,0.2); padding: 9px 40px; display:inline-block; font-size: 1.25em; transition: 0.5s;}
.delete form input[type="submit"]:hover{background-color: rgba(0,0,0,0.4); }
.delete button{position: absolute; right: 20px; top: 15px; border-radius: 10px; border: none; background-color: rgba(0,0,0,0.1); padding: 6px 15px; display:inline-block; font-size: 1em; transition: 0.5s;}
.delete button:hover{background-color: rgba(0,0,0,0.2); }

</style>

<script>
	var h = document.querySelector('header nav button');
	h.innerHTML = "Logout";
	function pageMove(){
		location.href = 'logout.jsp';
	}

	var nav = document.querySelector('nav');
	var new_button = document.createElement('button');
	new_button.setAttribute('class','goMain');
	new_button.innerHTML = "Main"
	nav.appendChild(new_button);

	var mp = document.querySelector('.goMain');
	mp.addEventListener('click', function(){
		location.href = "siteMain.jsp";
	});
	
	function upUpdate(){
		var pan = document.querySelector('.insert');
		pan.style.cssText = 'opacity: 1; top:15%';
	}
	
	function downUpdate(){
		var pan = document.querySelector('.insert');
		pan.style.cssText = 'opacity: 0; top:1000px';
	}
	
	function upDelete(){
		var pan = document.querySelector('.delete');
		pan.style.cssText = 'opacity: 1; top:15%';
	}
	
	function downDelete(){
		var pan = document.querySelector('.delete');
		pan.style.cssText = 'opacity: 0; top:1000px';
	}
	
	var file = document.querySelector(".insert form .inputWrap input[type='file']");
	console.log(txt);
	function fileCheck(){
		if(file.value == ""){
			alert("이미지를 선택하세요!");
			
			return false;
		}
	}
	
	var txt = document.querySelector(".delete form input[type='text']");
	function nameCheck(){
		if(txt.value == ""){
			alert("이미지의 이름을 기입하세요!");
			txt.focus();
			return false;
		}
	}
	
	const fileDOM = document.querySelector('#file');
	const preview = document.querySelector('#preview');

	fileDOM.addEventListener('change', () => {
	  const reader = new FileReader();
	  reader.onload = ({ target }) => {
	    preview.src = target.result;
	  };
	  reader.readAsDataURL(fileDOM.files[0]);
	});
</script>
</html>