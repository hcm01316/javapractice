<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DispatcherServlet</title>
<link hre="../../css/ch03-5.css" type ="text/css" rel = "stylesheet">
</head>
<body>
	<form action = 'DispatcherServlet' method="get">
	<b>좋아하는 음식은 무엇인가요?</b><br>
		<input type = 'text' name ='food'>
		<input type = 'submit' value = '전송'>
	</form>

</body>
</html>