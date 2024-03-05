<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
body{background: #c7c7ef;}
div{color:white; font-size: 30px; font-weight: bold;}
</style>
</head>
<body>
<div>
		request 파라미터 값 : <%=request.getParameter("food") %>
	</div>
	<p>
	요청 주소 <%=request.getRequestURI() %>
	</p>
</body>
</html>