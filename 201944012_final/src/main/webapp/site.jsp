<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi. User~!</title>
<link href="css/font.css" rel="stylesheet">
</head>
<body>
    <div class="site" >
        <form action="dataHandle/userInfoProc.jsp" name="siteF" onsubmit="return check()">
            <legend>HyperG</legend>
            <P>회원가입</P>
            <label for="uid">ID</label><input type="text" id="uid" name="uid">
            <label for="upw">PASSWD</label><input type="password" id="upw" name="upw">
            <label for="upwcf">COMFIRM PASSWD</label><input type="password" id="upwcf">
            <label for="umail">EMAIL</label><input type="text" id="umail" name="umail">
            <input type="submit" value="Sign_Up">
        </form>
        <button onclick="location.href='login.jsp'">Go_Back</button>
    </div>
</body>
<script>
function check(){
	if(!siteF.uid.value)   { alert("아이디를 입력해주세요!!!"); siteF.uid.focus(); return false; }
	if(!siteF.upw.value) { alert("비밀번호를 입력해주세요!!!"); siteF.upw.focus(); return false; }
	if(!siteF.upwcf.value) { alert("비밀번호확인란을 입력해주세요!!!"); siteF.upwcf.focus(); return false; }
	if(siteF.upw.value !=  siteF.upwcf.value){alert("비밀번호가 같지 않습니다!!"); siteF.upwcf.focus(); return false;}
	if(!siteF.umail.value)  { alert("이메일을 입력해주세요!!!"); siteF.umail.focus(); return false; }
	return true;
}
</script>
<style>
*{margin: 0; padding:0; font-family: 'HGGGothicssi_60';}
body{height:100vh; overflow: hidden;}

.site{margin: calc(50vh - 30vh) auto; width: 500px; height: 60vh; border-radius: 25px; box-shadow: 0px 4px 15px rgba(0,0,0, 0.3);}
.site form{margin: 0 auto; width: 300px; padding: 30px 0 0 0; }
.site form legend{font-size: 2.25em; text-align: center; margin-bottom: 10px;}
.site form p{margin-bottom: 40px; text-align: center;}
.site form label{font-size: 1.25em; width: 125px; display: inline-block; margin-bottom: 30px;}
.site form label:nth-of-type(3){font-size: 1em}
.site form input{width: 170px; height: 30px; font-size: 1em;}
.site form input[type='submit']{margin: 15px 0 10px 0;}
.site form input[type='submit'], .site button{
    transition: 0.5s; border: none;  width: 300px; height: 50px; border-radius: 15px; font-size: 1em;
}

.site button{margin: 0 calc(50% - 150px); }

.site form input[type='submit']:hover, .site button:hover{
    color: white; background-color: rgba(0,0,0, 0.7);
}
</style>
</html>
</body>
</html>