<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
</style>
</head>
<body>
request 속성 food 값 : <%=request.getAttribute("food")%><br>
session 속성 food 값 : <%=session.getAttribute("food")%><br>
ServletContext 속성 food 값 : <%=application.getAttribute("food")%>
</body>
</html>