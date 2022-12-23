<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link 
	rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"
>
</head>
<body>
	<div class="container">
		<form action="bookJoin.jsp" class="form-horizontal">
			<div class="jumbotron">
				<h3 class="display-3">도서 등록</h3>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">도서 코드</label>
				<div class="col-sm-3">
					<input type="text" name="code" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">도서 제목</label>
				<div class="col-sm-3">
					<input type="text" name="title" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">도서 저자</label>
				<div class="col-sm-3">
					<input type="text" name="writer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="등록" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
</body>
</html>