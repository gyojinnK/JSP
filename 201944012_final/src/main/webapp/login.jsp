<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi, User~!</title>
<link href="css/font.css" rel="stylesheet">
</head>
<body>
    <div class="login" >
        <form action="dataHandle/loginDAO.jsp">
            <legend>HyperG</legend>
            <P>로그인</P>
            <label for="uid">ID</label>
            <input type="text" id="uid" name="uid">
            <label for="upw">PASSWD</label>
            <input type="password" id="upw" name="upw">
            <input type="submit" value="Login">
        </form>
        <button onclick="location.href='site.jsp'">Sign_Up</button>
        <button onclick="location.href='main.jsp'">Go_Back</button>
    </div>
</body>
<style>
*{margin: 0; padding:0; font-family: 'HGGGothicssi_60';}
body{height:100vh; overflow: hidden;}

.login{margin: calc(50vh - 30vh) auto; width: 500px; height: 60vh; border-radius: 25px; box-shadow: 0px 4px 15px rgba(0,0,0, 0.3);}
.login form{margin: 0 auto; width: 300px; padding: 30px; }
.login form legend{font-size: 2.25em; text-align: center; margin-bottom: 10px;}
.login form p{margin-bottom: 40px; text-align: center;}
.login form label{font-size: 1.5em; width: 125px; display: inline-block; margin-bottom: 40px;}
.login form input{width: 165px; height: 30px; font-size: 1em;}
.login form input[type='submit']{margin-bottom: 40px;}
.login form input[type='submit'], .login button{
    transition: 0.5s; border: none;  width: 300px; height: 50px; border-radius: 15px; font-size: 1em;
}

.login button{margin: 0 calc(50% - 150px); margin-bottom: 10px;}

.login form input[type='submit']:hover, .login button:hover{
    color: white; background-color: rgba(0,0,0, 0.7);
}
</style>
</html>