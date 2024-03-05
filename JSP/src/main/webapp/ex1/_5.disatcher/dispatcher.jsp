<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{background: pink;}
div{color:red}
p{color:green}
</style>
</head>
<body>
	<div>
		request 파라미터 값 : <%=request.getParameter("food") %>
	</div>
	<p>
		보여주는 페이지 주소 입니다. <%=request.getRequestURI() %>
	</p>
</body>
</html>