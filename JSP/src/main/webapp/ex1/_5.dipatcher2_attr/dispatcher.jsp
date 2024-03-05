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
		request 속성 food 값 : <%=request.getAttribute("food") %><br>
		request 속성 name 값 : <%=request.getAttribute("name") %>
	</div>
	<p>
		요청 주소 <%=request.getRequestURI() %>
	</p>
</body>
</html>