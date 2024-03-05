 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/ch03-1.css" rel= "stylesheet" type ="text/css">
<title>로그인 화면</title>
</head>
<body>
<form action="loginProcess" method = "post">
		<h1>로그인</h1>
	<hr>
	<b>아이디</b>
		<input type="text" name = "id" placeholder="Enter id" >
		<b>비밀번호</b>
		<input type ="text" name ="passwd" placeholder="Enter password" required>
		<div class= "clearfix">
			<button type ="submit" class="submitbtn">Submit</button>
			<button type ="reset" class="cancelbtn">Cancel</button>
		</div>
</form>
</body>
</html>